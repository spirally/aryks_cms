from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.core.mail import send_mail, BadHeaderError

from .forms import PartnerForm


def partner_form_view(request):
    if request.method == 'POST':
        form = PartnerForm(request.POST)
        subject = 'Стать партнером WikiOko'
        # Если форма заполнена корректно, сохраняем все введённые пользователем значения
        if form.is_valid():
            name = form.cleaned_data['subject']
            sender = form.cleaned_data['sender']
            message = form.cleaned_data['message']
            copy = form.cleaned_data['copy']

            recipients = ['ВАШ_EMAIL_ДЛЯ_ПОЛУЧЕНИЯ_СООБЩЕНИЯ']
            # Если пользователь захотел получить копию себе, добавляем его в список получателей
            if copy:
                recipients.append(sender)
            try:
                send_mail(subject, message, 'ВАШ_EMAIL_ДЛЯ_ОТПРАВКИ_СООБЩЕНИЯ', recipients)
            except BadHeaderError:  # Защита от уязвимости
                return HttpResponse('Invalid header found')
            # Переходим на другую страницу, если сообщение отправлено
            return render(request, 'site/thanks.html')
    else:
        # Заполняем форму
        form = PartnerForm()
    # Отправляем форму на страницу
    return render(request, 'site/contact.html', {'form': form})


def partner_form_process(request, next_url):
    if request.method == 'POST':
        form = PartnerForm(request.POST)
        subject = 'Стать партнером WikiOko'
        # Если форма заполнена корректно, сохраняем все введённые пользователем значения
        if form.is_valid():
            name = form.cleaned_data['subject']
            sender = form.cleaned_data['sender']
            message = form.cleaned_data['message']
            copy = form.cleaned_data['copy']

            recipients = ['ВАШ_EMAIL_ДЛЯ_ПОЛУЧЕНИЯ_СООБЩЕНИЯ']
            # Если пользователь захотел получить копию себе, добавляем его в список получателей
            if copy:
                recipients.append(sender)
            try:
                send_mail(subject, message, 'ВАШ_EMAIL_ДЛЯ_ОТПРАВКИ_СООБЩЕНИЯ', recipients)
            except BadHeaderError:  # Защита от уязвимости
                return HttpResponse('Invalid header found')
            # Переходим на другую страницу, если сообщение отправлено
            return redirect(next_url)
            # return render(request, 'site/thanks.html')
    else:
        # Заполняем форму
        form = PartnerForm()
    # Отправляем форму на страницу
    return render(request, 'site/contact.html', {'form': form})
