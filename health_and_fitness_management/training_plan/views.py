from django.shortcuts import render

# Create your views here.
from training_plan.models import TrainingPlan
def addtrapln(request):
    if request.method=="POST":
        ob=TrainingPlan()
        ob.meal=request.POST.get('pname')
        ob.time=request.POST.get('time')
        ob.foodchart=request.POST.get('plans')
        # ob.pattern=request.POST.get('pattern')
        # ob.foodchart_description=request.POST.get('fooddesc')
        ob.exercise_pattern_description=request.POST.get('excersise')
        ob.save()
       
    return render(request,'training_plan/add_training_plan.html')
    
    
def viewtrapln(request):
    
    ob=TrainingPlan.objects.all()
    context={
        'ok':ob
    }
    return render(request,'training_plan/view_training_plan.html',context)

def foodchart(request,idd):
    ob=TrainingPlan.objects.filter(pid=idd)
    context={
        'ok':ob
    }
    return render(request,'training_plan/foodchart.html',context)


