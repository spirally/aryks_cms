from django.contrib import admin

from oko_authors.models import School, Author


@admin.register(Author)
class AuthorAdmin(admin.ModelAdmin):
    pass
