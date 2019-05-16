from django.db.models import Count
from django.shortcuts import render
from django.utils.functional import cached_property
from django.views.generic import ListView
from django.views.generic.detail import DetailView
from .models import Product, Category


class ProductsByCategoryView(ListView):
    template_name = 'infoshop/category.html'
    context_object_name = 'products'

    @cached_property
    def category(self):
        if 'category_slug' in self.kwargs:
            return Category.objects.get(slug=self.kwargs['category_slug'])
        else:
            return Category.objects.filter(parent__isnull=True).first()

    def get_queryset(self):
        return Product.objects.filter(category__in=self.category.get_family()).select_related('category')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        context['category'] = self.category
        context['category_children'] = self.category.get_children().annotate(num_products=Count('products') + Count('children__products'))
        context['category_parents'] = self.category.get_ancestors()
        # context['category_children'] = Category.objects.filter(parent=category).annotate(num_products=Count('products'))
        return context


class CatalogView(ProductsByCategoryView):

    def get_queryset(self):
        return Product.objects.all()


class CategoryView(DetailView):
    model = Category
    queryset = Category.objects.all()
    template_name = 'infoshop/category.html'
