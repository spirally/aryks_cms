from django.db.models import Count
from django.shortcuts import render
from django.utils.functional import cached_property
from django.views.generic import DetailView, ListView

from oko_authors.models import School
from infoshop.models import Category


class SchoolView(DetailView):
    model = School
    template_name = 'oko_authors/owner.html'
    context_object_name = 'owner'

    def get_object(self, queryset=None):
        return School.objects.get(slug=self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['category_parents'] = self.object.category.get_ancestors(include_self=True)
        offers = self.object.offers.all()
        context['offers'] = offers
        context['price'] = min([offer.price for offer in offers]) if offers else self.object.price
        return context


class SchoolsByCategoryView(ListView):
    template_name = 'oko_schools/authors_list.html'
    context_object_name = 'owners'

    @cached_property
    def category(self):
        if 'category_slug' in self.kwargs:
            return Category.objects.get(slug=self.kwargs['category_slug'])
        else:
            return Category.objects.filter(parent__isnull=True).first()

    def get_queryset(self):
        return School.objects.filter(product__category__in=self.category.get_family()).annotate(num_products=Count('products'))

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['category'] = self.category
        context['category_children'] = self.category.get_children().annotate(num_products=Count('products') + Count('children__products'))
        context['category_parents'] = self.category.get_ancestors()
        # context['category_children'] = Category.objects.filter(parent=category).annotate(num_products=Count('products'))
        return context


class SchoolsView(SchoolsByCategoryView):

    def get_queryset(self):
        return School.objects.all()
