from django.db.models import Count
from django.shortcuts import render
from django.utils.functional import cached_property
from django.views.generic import DetailView, ListView

from oko_authors.models import Author
from infoshop.models import Category, Product


class AuthorView(DetailView):
    model = Author
    template_name = 'oko_authors/author.html'
    context_object_name = 'owner'

    def get_object(self, queryset=None):
        return Author.objects.get(slug=self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['products'] = Product.objects.filter(owner=self.object)
        # offers = self.object.offers.all()
        # context['offers'] = offers
        # context['price'] = min([offer.price for offer in offers]) if offers else self.object.price
        return context


class AuthorsByCategoryView(ListView):
    template_name = 'oko_authors/authors_list.html'
    context_object_name = 'owners'

    @cached_property
    def category(self):
        if 'category_slug' in self.kwargs:
            return Category.objects.get(slug=self.kwargs['category_slug'])
        else:
            return Category.objects.filter(parent__isnull=True).first()

    def get_queryset(self):
        return Author.objects.filter(product__category__in=self.category.get_family()).annotate(num_products=Count('product'))

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['category'] = self.category
        context['category_children'] = self.category.get_children().annotate(num_products=Count('products') + Count('children__products'))
        context['category_parents'] = self.category.get_ancestors()
        # context['category_children'] = Category.objects.filter(parent=category).annotate(num_products=Count('products'))
        return context


class AuthorsView(AuthorsByCategoryView):

    def get_queryset(self):
        return Author.objects.all().annotate(num_products=Count('product'))
