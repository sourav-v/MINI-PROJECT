
# from pyexpat import model
from multiprocessing import context
import ssl
from django.shortcuts import render
import datetime
# Create your views here.
from feedback.models import Feedback
# from health_and_fitness_management import feedback
def addfeedb(request):
    ss=request.session["uid"]
    if request.method=="POST":
        fb=Feedback()
        fb.feedback=request.POST.get('name')
        fb.reply="pending"
        fb.date=datetime.datetime.now()
        fb.uid=ss
        fb.save()
        
    return render(request,'feedback/add_feedback.html')

def repl(request,idd):
    if request.method=="POST":
        fb=Feedback.objects.get(fid=idd)
        fb.reply=request.POST.get('name')
        # fb.uid="1"
        fb.save()
    
    return render(request,'feedback/reply.html')

def viewfeed(request):
    fb=Feedback.objects.all()
    context={
        'ok':fb
    }
    return render(request,'feedback/view_feedback.html',context)

def viewreply(request):
    fb=Feedback.objects.all()
    context={
        'ok':fb
    }
    return render(request,'feedback/view_reply.html',context)