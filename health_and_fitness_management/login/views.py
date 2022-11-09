from http.client import HTTPResponse
from multiprocessing import context
from unicodedata import name
from urllib import request
from django.shortcuts import render
from  django.shortcuts import HttpResponseRedirect

# Create your views here.
from login.models import Login
def log(request):
    obk=""
    if request.method=="POST":
        name=request.POST.get("username")
        password=request.POST.get("password")
        obj=Login.objects.filter(email_id=name,password=password)
        tp=""
        for ob in obj:
            tp=ob.type
            uid=ob.uid
            if tp=="admin":
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/index/')
            elif tp=="user":
                request.session["uid"]=uid
                return HttpResponseRedirect('/temp/user/')
        else:
            objectlist="username or password incorrect.....please try again.....!"
            context={
            'msg':objectlist
            }
        return render(request,'login/login.html',context)
    return render(request,'login/login.html')
