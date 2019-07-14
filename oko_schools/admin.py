from django.contrib import admin

from oko_authors.models import School, Author


@admin.register(School)
class SchoolAdmin(admin.ModelAdmin):

    def get_prepopulated_fields(self, request, obj=None):
        return {
            'slug': ('name',)
        }
