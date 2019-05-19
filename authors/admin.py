from django.contrib import admin

from authors.models import School, Author


@admin.register(School)
class SchoolAdmin(admin.ModelAdmin):
    pass

@admin.register(Author)
class AuthorAdmin(admin.ModelAdmin):
    pass
