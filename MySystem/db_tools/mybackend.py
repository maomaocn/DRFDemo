from django.contrib.auth.backends import ModelBackend

from users.models import JHUser


class MyBackend(ModelBackend):
    def authenticate(self, request, username=None, password=None, **kwargs):
        try:
            user = JHUser.objects.get(username=username)
            if user:
                print(user,'user')
                return user
            else:
                return None
        except Exception:
            return None

