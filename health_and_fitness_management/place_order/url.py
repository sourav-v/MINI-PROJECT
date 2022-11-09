from django.conf.urls import url 

from place_order import views

urlpatterns=[
    url('placeord/',views.placingord),
    
]