from django.conf.urls import url 

from trainer import views

urlpatterns=[
    url('atrainer/',views.addtrainer),
    url('vtrainer/',views.viewtrainer),
   
]