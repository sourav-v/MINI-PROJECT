from django.conf.urls import url 

from temp import views

urlpatterns=[
    url('index/',views.index),
    url('main/',views.main),
    url('user/',views.user),
]