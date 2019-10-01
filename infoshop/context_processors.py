from django.urls import reverse

from oko_forms.forms import PartnerForm


def partner_form_context_processor(request):
    return {
        'partner_form': PartnerForm(),
        'partner_form_url': reverse("oko_forms:partner_form_process", args=request.path)
        # 'partner_form_url': reverse("oko_forms:partner_form_process", args=(request.path))
    }