import os, django

from django.db.models import Q

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'MySystem.settings')
django.setup()
from users.models import JHUser

from Role.models import Role, PermissTion
from Role.serializers import RoleSerializer

# obj=Role.objects.prefetch_related('permiss').get(id=1)
# print(obj.permiss.all())
# for i in obj.permiss.all():
#     print(i.per_name)

# obj=Role.objects.all()
#
# data=RoleSerializer(obj,many=True).data
# for i in data:
#     print(i)
# print(data)
# print(obj,type(obj))
# per=obj.permiss.all()
# print()
# for m in obj:
#     print(m.__dict__)
# print(m.permiss.per_name)
# print(m.__dict__)
# print(type(m))
# print(m.permiss.per_name)
#     # print(m.role_name)
#     # print(m.id)
#     # print(m.permiss.per_name)
# print(obj.first().permiss.per_name)


# data=PermissTion.objects.filter(is_per=True).values_list('per_name',flat=True).distinct()
# # b={'pername':'删除文章权限'}
# print(data,type(data))
#
# if b.get('pername') in data:
#     print(True)
# else:
#     print('hello')

# data = PermissTion.objects.filter(is_per=True).filter(Q(flag__contains='read') | Q(flag__contains='add') | Q(flag__contains='update')).values_list('id',flat=True).distinct()
data = PermissTion.objects.filter(is_per=True,flag='article_del').values_list('id',flat=True).distinct()
print(data)
obj = JHUser.objects.select_related('role').get(id=2)
# print(obj.username)
# # daa2=obj.role.permiss.clear()
daa = obj.role.permiss.all()
#
daa1=obj.role.permiss.add(*data) #添加
# # daa1=obj.role.permiss.remove(13,14,15) #添加
# daa1 = obj.role.permiss.set(data)  # 把原有权限删除，新增权限1与2
# print(obj.role_id)
# print(obj.role.permiss.all())
for p in daa:
    print(p.per_name)
