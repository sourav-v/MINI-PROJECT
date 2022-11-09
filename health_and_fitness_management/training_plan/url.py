from django.conf.urls import url 

from training_plan import views

urlpatterns=[
    url('atraipln/',views.addtrapln),
    url('vtraipln/',views.viewtrapln),
    url('excer/(?P<idd>\w+)',views.foodchart),
   
]