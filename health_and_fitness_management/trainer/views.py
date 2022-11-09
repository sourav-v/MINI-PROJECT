from django.shortcuts import render


# Create your views here.

from trainer.models import AddTrainer
def addtrainer(request):
    if request.method=="POST":
        ob=AddTrainer()
        ob.trainer_name=request.POST.get('tname')
        ob.email_id=request.POST.get('email')
        ob.phone=request.POST.get('phone')
        ob.gender=request.POST.get('gender')
        ob.dob=request.POST.get('dob')
        ob.experience=request.POST.get('exp')
        ob.save()
        
    return render(request,'trainer/add_trainer.html')

def viewtrainer(request):
    
    ob=AddTrainer.objects.all()
    context={
        'ok':ob
    }
    
    return render(request,'trainer/view_personal_trainer_details.html',context)



