from copy import deepcopy
from rest_framework.response import Response
from Role.models import Role, PermissTion


class UserPermiss(object):

    def PermissData(self, request, *args, **kwargs):
        m = str(request.path_info).split('/')[1]
        role = Role.objects.prefetch_related('permiss').get(id=request.user.role_id)
        per_list = role.permiss.filter(is_per=True, path_mode=m).values_list('flag', flat=True).distinct()
        return per_list

    def get(self, request, *args, **kwargs):

        permiss, path = self.checkpermiss(request, flag='read', *args, **kwargs)
        if permiss:
            get_object = self.get_object_read(*args, **kwargs)
            if get_object.exists():
                page = self.paginate_queryset(get_object)
                if page is not None:
                    serializer = self.get_serializer(page, many=True)
                    return self.get_paginated_response(serializer.data)

                serializer = self.get_serializer(page, many=True)
                return Response(serializer.data)
                # return Response({'status': 200, 'msg': 'ok', 'data': serializer.data})
            else:
                return Response({'status': 404, 'msg': '未发现read数据，请刷新后尝试！', 'data': ''})
        else:
            p = PermissTion.objects.filter(flag=path)
            if p.exists():
                return Response({'status': 404, 'msg': f'您没有{p.first().per_name}', 'data': ''})
            else:
                return Response({'status': 404, 'msg': f'权限未配置：{path}', 'data': ''})

    def put(self, request, *args, **kwargs):

        permiss, path = self.checkpermiss(request, flag='update', *args, **kwargs)
        if permiss:
            get_object = self.get_object_update(request, *args, **kwargs)
            data = deepcopy(request.data)
            if get_object.exists():
                data = {k: v[0] for k, v in dict(data).items() if isinstance(v, list)}
                try:
                    if data:
                        get_object.update(**data)
                    else:
                        get_object.update(**request.data)
                except Exception as e:
                    print({'error': e})
                    return Response({'status': 400, 'msg': f'error:{e}', 'data': ''})
                return Response({'status': 200, 'msg': 'ok', 'data': ''})
            else:
                return Response({'status': 404, 'msg': '未发现update数据，请刷新后尝试！', 'data': ''})
        else:
            p = PermissTion.objects.filter(flag=path)
            if p.exists():
                return Response({'status': 404, 'msg': f'您没有{p.first().per_name}', 'data': ''})
            else:
                return Response({'status': 404, 'msg': f'权限未配置：{path}', 'data': ''})

    def delete(self, request, *args, **kwargs):
        permiss, path = self.checkpermiss(request, flag='del', *args, **kwargs)
        if permiss:
            get_object = self.get_object_del(request, *args, **kwargs)
            if get_object.exists():
                get_object.delete()
                return Response({'status': 200, 'msg': 'ok', 'data': ''})
            else:
                return Response({'status': 404, 'msg': '未发现删除数据，请刷新后尝试！', 'data': ''})
        else:
            p = PermissTion.objects.filter(flag=path)
            if p.exists():
                return Response({'status': 404, 'msg': f'您没有{p.first().per_name}', 'data': ''})
            else:
                return Response({'status': 404, 'msg': f'权限未配置：{path}', 'data': ''})

    def post(self, request, *args, **kwargs):
        permiss, path = self.checkpermiss(request, flag='add', *args, **kwargs)
        if permiss:
            get_object = self.get_object_create(request, *args, **kwargs)
            data = deepcopy(request.data)
            if get_object.exists():
                data = {k: v[0] for k, v in dict(data).items() if isinstance(v, list)}
                try:
                    if data:
                        get_object.create(**data)
                    else:
                        get_object.create(**request.data)
                except Exception as e:
                    print({'error': e})
                    return Response({'status': 400, 'msg': f'error:{e}', 'data': ''})
                return Response({'status': 200, 'msg': 'ok', 'data': ''})
            else:
                return Response({'status': 404, 'msg': '未发现add数据，请刷新后尝试！', 'data': ''})
        else:
            p = PermissTion.objects.filter(flag=path)
            if p.exists():
                return Response({'status': 404, 'msg': f'您没有{p.first().per_name}', 'data': ''})
            else:
                return Response({'status': 404, 'msg': f'权限未配置：{path}', 'data': ''})

    def checkpermiss(self, request, flag, *args, **kwargs):
        per_list = self.PermissData(request, *args, **kwargs)
        m = str(request.path_info).split('/')[1]
        path = str(m) + '_' + str(flag)
        if path in per_list:
            return True, path
        else:
            return False, path

    def get_object_del(self, request, *args, **kwargs):
        get_object = self.get_queryset().filter(id=request.data.get('id'))
        return get_object

    def get_object_update(self, request, *args, **kwargs):
        get_object = self.get_queryset().filter(id=request.data.get('id'))
        return get_object

    def get_object_create(self, request, *args, **kwargs):
        get_object = self.get_queryset()
        return get_object

    def get_object_read(self, *args, **kwargs):
        get_object = self.get_queryset()
        return get_object
