from django.conf.urls import url 

from feedback import views

urlpatterns=[
    url('afeed/',views.addfeedb),
    url('rep/(?P<idd>\w+)',views.repl),
    url('vfeed/',views.viewfeed),
    url('vreply/',views.viewreply),
]