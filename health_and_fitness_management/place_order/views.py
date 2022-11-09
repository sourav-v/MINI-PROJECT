from django.shortcuts import render

# Create your views here.
from place_order.models import PlaceOrder
import datetime
def placingord(request):
    if request.method=="POST":
        fb=PlaceOrder()
        fb.date=datetime.datetime.now()
        fb.product_id="1"
        fb.time=request.POST.get('time')
        fb.quantity=request.POST.get('quantity')
        
        fb.save()
    
    return render(request,'place_order/placing_order.html')

