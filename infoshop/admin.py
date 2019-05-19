from django.contrib import admin
from django import forms
from infoshop.models import Category, Product, Offer, Images, ProductType
from mptt.admin import MPTTModelAdmin
from properties.models import TypeProperty, ProductProperty
from filters.models import FilterCategory, ProductFilter, FilterSelect
# from django.forms import TextInput, ModelForm, Textarea, Select
# from ckeditor.widgets import CKEditorWidget
from djangocms_text_ckeditor.widgets import TextEditorWidget


class CategoryPropertyInline(admin.TabularInline):
    model = TypeProperty
    extra = 1
    verbose_name_plural = 'Params'
    suit_classes = 'suit-tab suit-tab-params'


class ImagesInline(admin.TabularInline):
    model = Images
    extra = 1
    verbose_name_plural = 'Images'
    suit_classes = 'suit-tab suit-tab-images'


class ProductPropertyInline(admin.TabularInline):
    model = ProductProperty
    extra = 1
    verbose_name_plural = 'Params'
    suit_classes = 'suit-tab suit-tab-params'


class OfferInline(admin.TabularInline):
    model = Offer
    extra = 1
    verbose_name_plural = 'Offers'
    suit_classes = 'suit-tab suit-tab-offers'


class ProductFilterForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(ProductFilterForm, self).__init__(*args, **kwargs)
        if self.instance:
            i = self.instance
            if i.filter_category:
                self.fields["values"].queryset = \
                    FilterSelect.objects.filter(filter_category=i.filter_category)
            else:
                self.fields["values"].queryset = \
                    FilterSelect.objects.all()[:1]

    class Meta:
        model = ProductFilter
        fields = '__all__'


class ProductFilterInline(admin.TabularInline):
    form = ProductFilterForm
    model = ProductFilter
    extra = 1
    verbose_name_plural = 'Filters'
    suit_classes = 'suit-tab suit-tab-filters'


class FilterCategoryInline(admin.TabularInline):
    model = FilterCategory
    extra = 1
    verbose_name_plural = 'Filters'
    suit_classes = 'suit-tab suit-tab-filters'

    def get_prepopulated_fields(self, request, obj=None):
        return {
            'slug': ('name',)
        }


@admin.register(Category)
class CategoryAdmin(MPTTModelAdmin):
    inlines = [CategoryPropertyInline, FilterCategoryInline, ]
    suit_form_tabs = (
        ('general', 'General'),
        ('params', 'Params'),
        ('filters', 'Filters')
    )
    fieldsets = [
        ('General', {
            'classes': ('suit-tab', 'suit-tab-general',),
            'fields': [
                'name',
                'slug',
                'title',
                'title_menu',
                'description',
                'wall',
                'image',
                'seo_description',
                'seo_keywords',
                'parent',
                'url',
            ]
        }),
    ]

    def get_prepopulated_fields(self, request, obj=None):
        # can't use `prepopulated_fields = ..` because it breaks the admin validation
        # for translated fields. This is the official django-parler workaround.
        return {
            'slug': ('name',)
        }


# class ProductAdminForm(forms.ModelForm):
#     content = forms.CharField(widget=TextEditorWidget())
#     class Meta:
#         model = Product


@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    # form = ProductAdminForm
    inlines = [
        ProductPropertyInline,
        OfferInline,
        ProductFilterInline,
        ImagesInline,
    ]
    list_display = ('name', 'pic', 'category', 'published')
    list_filter = ('category',)
    serch_fields = ['id', 'name', 'title']
    suit_form_tabs = (
        ('general', 'General'),
        ('offers', 'Offers'),
        ('params', 'Params'),
        ('filters', 'Filters'),
        ('images', 'Images'),
    )
    fieldsets = [
        ('General', {
            'classes': ('suit-tab', 'suit-tab-general',),
            'fields': [
                'type',
                'name',
                'slug',
                'title',
                'title_menu',
                'category',
                'description',
                'wall',
                'image',
                'media_type_video',
                'media_type_audio',
                'media_type_book',
                'media_type_flow',
                'url',
                'seo_description',
                'seo_keywords',
                'forfree',
                'new',
                'hit',
                'price',
                'bonus',
                'content',
                'content_program',
            ]
        }),
    ]

    def get_prepopulated_fields(self, request, obj=None):
        return {
            'slug': ('name',)
        }


@admin.register(ProductType)
class ProductTypeAdmin(admin.ModelAdmin):
    pass
