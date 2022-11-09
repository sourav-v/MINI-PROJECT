from django.conf.urls import url 

from product import views

urlpatterns=[
    url('aprod/',views.pro),
    url('vandsepro/',views.viewandselproduct),
    url('ordpro/(?P<idd>\w+)',views.placingord),
    url('quantity/(?P<idd>\w+)',views.quanti)
    
]