from base64 import urlsafe_b64decode
from django.urls import path, re_path
from . import views
from django.conf import settings
from django.views.static import serve


urlpatterns = [
    path('', views.home, name="home"),
    path('signup', views.signup, name="signup"),
    path('signin', views.signin, name="signin"),
    path('signout', views.signout, name="signout"),
    re_path(r'^static/(?P<path>.*)$', serve,
            {'document_root': settings.STATIC_ROOT}),
]
