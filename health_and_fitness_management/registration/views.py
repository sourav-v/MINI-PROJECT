
from multiprocessing import context
from django.shortcuts import render
from login.models import Login

# Create your views here.
from registration.models import Registration
def regi(request):
    obk=""
    if request.method=="POST":
        ob=Registration()
        ob.user_name=request.POST.get('uname')
        ob.email_id=request.POST.get('email')
        ob.phone=request.POST.get('phone')
        ob.address=request.POST.get('home_address')
        ob.gender=request.POST.get('gender')
        ob.dob=request.POST.get('dob')
        ob.height=request.POST.get('height')
        ob.weight=request.POST.get('current_weight')
        ob.password=request.POST.get('pass')
        ob.confirm_password=request.POST.get('pass')
        ob.save()
        
        obk=Login()
        obk.email_id=ob.user_name
        obk.password=ob.password
        obk.type='user'
        obk.uid=ob.uid
        obk.save()
        obk="successfully registered"
    context={
        'msg':obk
    }    
        
    return render(request,'registration/registration.html',context)

