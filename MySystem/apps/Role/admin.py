from django.contrib import admin
from Role.models import *


# Register your models here.

@admin.register(Role)
class RoleAdmin(admin.ModelAdmin):


    def show_permiss(self,obj):
        print(obj.__dict__)
        print(obj,'hello')
        return [i.permiss for i in obj.select_related('').all()]

    list_display = ('id','role_name','role_desc','show_permiss')

@admin.register(PermissTion)
class PermissTionAdmin(admin.ModelAdmin):
    list_display = ('per_name','per_desc','is_per')

# admin.site.register(RoleAdmin)
# admin.site.register(PermissTionAdmin)
