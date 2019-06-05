from django.shortcuts import render
from django.views.generic import DetailView

from authors.models import Author


class AuthorView(DetailView):
    model = Author
    template_name = 'infoshop/product.html'
    context_object_name = 'owner'

    def get_object(self, queryset=None):
        return Author.objects.get(slug=self.kwargs['slug'])

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['category_parents'] = self.object.category.get_ancestors(include_self=True)
        offers = self.object.offers.all()
        context['offers'] = offers
        context['price'] = min([offer.price for offer in offers]) if offers else self.object.price
        return context
