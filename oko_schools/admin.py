from django.contrib import admin

from oko_authors.models import School, Author


@admin.register(School)
class SchoolAdmin(admin.ModelAdmin):
    pass
