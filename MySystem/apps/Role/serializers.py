from rest_framework import serializers

from Role.models import Role


class RoleSerializer(serializers.ModelSerializer):
    # publish=serializers.SerializerMethodField()
    # publish=serializers.SerializerMethodField()
    class Meta:
        model = Role
        fields = '__all__'
        depth = 3
