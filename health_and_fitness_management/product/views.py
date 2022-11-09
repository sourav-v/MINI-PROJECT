
from fileinput import filename
from itertools import product
from re import search
import ssl
from urllib import request
from django.shortcuts import render
from django.http import HttpResponseRedirect
from django.core.files.storage import FileSystemStorage
from place_order.models import PlaceOrder

# Create your views here.

from product.models import Product
import datetime
def pro(request):
    
    if request.method=="POST":
        fb=Product()
        fb.product_name=request.POST.get('prname')
        fb.price=request.POST.get('price')
        fb.expdate=request.POST.get('date')
        fb.stock=request.POST.get('stock')
        fb.description=request.POST.get('descrip')
        myfile=request.FILES['img']
        fs=FileSystemStorage()
        filename=fs.save(myfile.name,myfile)
        fb.image=myfile.name
        fb.status="pending"
        
        fb.save()
    
    return render(request,'product/add_product.html')

from place_order.models import PlaceOrder

def viewandselproduct(request):
    if request.method=="POST":
        if 'search' in request.POST:
            vv=request.POST.get('search')
            fb=Product.objects.filter(product_name__istartswith=vv)
            context={
                'ok':fb
            }
        else:
            fb=Product()
            fb.quantity=request.POST.get('quantity')
            fb.save()
    else:
        fb=Product.objects.all()
        context={
            'ok':fb
        }
    return render(request,'product/view_and_select_product_details.html',context)

# def orplace(request,idd):
#     fbb=Product.objects.get(product_id=idd)
#     fbb.status="order placed"
#     fbb.save()
#     return HttpResponseRedirect("/payment/apayment/")

def placingord(request,idd):
     ss=request.session["uid"]
     fb=Product.objects.get(product_id=idd)
     ob=PlaceOrder()
     ob.uid=ss
     ob.product_id=idd
     ob.save()
     
     return HttpResponseRedirect("/payment/apayment/")
 
def quanti(request,idd):
    if request.method=="POST":
        aa=PlaceOrder()
       
        prd=Product.objects.get(product_id=idd)
        
        aa.product_id=idd
        aa.quantity=request.POST.get('quantity')
        aa.date=datetime.datetime.now()
        aa.time=datetime.datetime.now()
        aa.status="pending"
        aa.uid=request.session["uid"]
        print(aa.quantity)
        print(prd.price)
        aa.total=int(aa.quantity)*int(prd.price)
        aa.save()
        request.session["oid"]=str(aa.id)
        
        
        # aa=Product.objects.get(product_id=idd)
        # aa.quantity=request.POST.get('quantity')
        # aa.save()
        
        return HttpResponseRedirect("/payment/apayment/")
    return render(request,'product/quantity.html')