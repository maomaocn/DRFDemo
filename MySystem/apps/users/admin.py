from django.contrib import admin

# Register your models here.
from users.models import JHUser


class JHUserAdmin(admin.ModelAdmin):
    pass


admin.site.register(JHUser,JHUserAdmin)
