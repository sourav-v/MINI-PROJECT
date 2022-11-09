from http.client import HTTPResponse
from multiprocessing import context
from django.shortcuts import render
from django.http import HttpResponseRedirect
# Create your views here.
from packages.models import Packages
def addpack(request):
    obk=""
    if request.method=="POST":
        fb=Packages()
        fb.package_name=request.POST.get('pname')
        fb.duration=request.POST.get('date')
        fb.amount=request.POST.get('num')
        
        fb.save()
        obk="package added"
    context={
        'msg':obk
    }    
    return render(request,'packages/add_package.html',context)

from packages.models import UserPackage


def viewandselpac(request):
     fb=Packages.objects.all()
     context={
        'ok':fb
    }
     return render(request,'packages/view_and_select_packages.html',context)
 
def upackage(request,idd):
     ss=request.session["uid"]
     fb=Packages.objects.get(pid=idd)
     ob=UserPackage()
     ob.uid=ss
     ob.p_id=idd
     ob.save()
     request.session["pkid"]=idd
     request.session["amt"]=fb.amount
     
     return HttpResponseRedirect("/payment/apaymentpack/")
     