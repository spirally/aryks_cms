from django.db.models import Count
from django.shortcuts import render
from django.views.generic import ListView
from django.views.generic.detail import DetailView
from .models import Product, Category


class CatalogView(ListView):
    model = Product
    queryset = Product.objects.all()
    template_name = 'infoshop/home.html'


class ProductsByCategoryView(ListView):
    template_name = 'infoshop/category.html'
    context_object_name = 'products'

    def get_queryset(self):
        category = Category.objects.get(slug=self.kwargs['category_slug'])
        return Product.objects.filter(category__in=category.get_family()).select_related('category')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['categories'] = Category.objects.all()
        category = Category.objects.get(slug=self.kwargs['category_slug'])
        context['category'] = category
        context['category_children'] = category.get_children().annotate(num_products=Count('products'))
        context['category_parents'] = category.get_ancestors()
        # context['category_children'] = Category.objects.filter(parent=category).annotate(num_products=Count('products'))
        return context

class CategoryView(DetailView):
    model = Category
    queryset = Category.objects.all()
    template_name = 'infoshop/category.html'
