from django.conf.urls import url 

from packages import views

urlpatterns=[
    url('adpack/',views.addpack),
    url('vpack/',views.viewandselpac),
    url('selpack/(?P<idd>\w+)',views.upackage)
    
]