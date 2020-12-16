from Role.models import PermissTion, Role


class CheckPermission(object):
    def __init__(self, flag):
        self.flag = flag

    def __call__(self, func):
        def inner(sellf, *args, **kwargs):
            user = sellf.request.user# 获取当前用户
            role = Role.objects.prefetch_related('permiss').get(id=user.role_id)
            per_list = role.permiss.filter(is_per=True, path_mode=self.flag).values_list('per_name',flat=True).distinct()  # 拿出用户拥有的可执行权限
            per_list_flag = role.permiss.filter(is_per=True, path_mode=self.flag).values_list('flag',flat=True).distinct()  # 拿出用户拥有的可执行权限
            sellf.per_list=per_list
            sellf.per_list_flag=per_list_flag
            return func(sellf, *args, **kwargs)
        return inner


class CheckPermissions(object):
    def __init__(self, flag):
        self.flag = flag

    def __call__(self, func):
        def inner(sellf, *args, **kwargs):
            user = sellf.request.user# 获取当前用户
            role = Role.objects.prefetch_related('permiss').get(id=user.role_id)
            per_list = role.permiss.filter(is_per=True, path_mode=self.flag).values_list('per_name',flat=True).distinct()  # 拿出用户拥有的可执行权限
            per_list_flag = role.permiss.filter(is_per=True, path_mode=self.flag).values_list('flag',flat=True).distinct()  # 拿出用户拥有的可执行权限
            sellf.per_list=per_list
            sellf.per_list_flag=per_list_flag
            return func(sellf, *args, **kwargs)
        return inner
