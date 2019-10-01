from django import forms
from django import template


# register = template.Library()


# @register.simple_tag
# def partner_form():
#     return PartnerForm()


class PartnerForm(forms.Form):
    name = forms.CharField(max_length=200, widget=forms.TextInput(attrs={
        'class': "b-0 p-0 font-14 form-control",
        'placeholder': "Напишите ваше имя",
    }))
    sender = forms.EmailField(widget=forms.TextInput(attrs={
        'class': "b-0 p-0 font-14 form-control",
        'placeholder': "Ваша электронная почта",
    }))
    phone = forms.CharField(widget=forms.TextInput(attrs={
        'class': "b-0 p-0 font-14 form-control",
        'placeholder': "Укажите контактный телефон",
    }))
    message = forms.CharField(widget=forms.Textarea(attrs={
        'class': 'b-0 font-light p-0 font-14 form-control',
        'placeholder': 'Напишите всё, что считаете нужным',
    }))
    copy = forms.BooleanField(required=False)
