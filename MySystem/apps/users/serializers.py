from rest_framework import serializers
from users.models import JHUser


class JHUserSerializer(serializers.ModelSerializer):
    last_login = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S')
    date_joined = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S')
    creator_date = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S')
    del_date = serializers.DateTimeField(format='%Y-%m-%d %H:%M:%S')

    class Meta:
        model = JHUser
        # fields = '__all__'
        depth = 3
        exclude = ('is_superuser', 'first_name', 'last_name', 'groups', 'user_permissions', 'password', 'is_staff',)
