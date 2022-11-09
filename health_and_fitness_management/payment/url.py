from django.conf.urls import url 

from payment import views

urlpatterns=[
    url('apayment/',views.apayment),
    url('apaymentpack/',views.apaymentpack),
    # url('vpaydetailsadmin/',views.viewpaydetadm),
    url('vpapaydetailsuser/',views.viewpackpaydetuse),
    url('vproductpay/',views.viewprodpaydetuse)
]