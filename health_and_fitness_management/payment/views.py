from multiprocessing import context
from django.shortcuts import render
# from health_and_fitness_management import payment
# from health_and_fitness_management import payment
from place_order.models import PlaceOrder

# Create your views here.
from payment.models import Payment

def apayment(request):
    obk=""
    # aa=PlaceOrder.objects.all()
    # a=0
    # for i in aa:
        
    #     amount=i.quantity*i.product.price
        
    #     context={
    #         'k':a
    #     }
        
    ss=request.session["uid"]
    oid=request.session["oid"]
    ord=PlaceOrder.objects.get(id=str(oid))
    print("total")
    print(ord.total)
    
    context={
            'k':str(ord.total),
            
        }
    
    if request.method=="POST":
        fb=Payment()
        fb.card_number=request.POST.get('cno')
        fb.cardholder_name=request.POST.get('hname')
        fb.cvv=request.POST.get('cvv')
        fb.amount=ord.total
        fb.date=request.POST.get('date')
        fb.uid=ss
        fb.product_id=ord.product_id
        fb.package_id='0'
        fb.status="paid"
        fb.save()
        ord.status="paid"
        ord.save()
        obk="payment successfull"
        context={
            'msg':obk
        }
    
    return render(request,'payment/add_payment.html',context)


def apaymentpack(request):
    pkid=request.session["pkid"]
    amt=request.session["amt"]
        
    ss=request.session["uid"]
    
    context={
            'k':str(amt)
        }
    if request.method=="POST":
        fb=Payment()
        fb.card_number=request.POST.get('cno')
        fb.cardholder_name=request.POST.get('hname')
        fb.cvv=request.POST.get('cvv')
        fb.amount=amt
        fb.date=request.POST.get('date')
        fb.uid=ss
        fb.product_id='0'
        fb.package_id=pkid
        fb.status="paid"
        fb.save()
        
    
    return render(request,'payment/add_payment.html',context)


def viewpackpaydetuse(request):
    
    fb=Payment.objects.all()
    context={
        'ok':fb
    }
    return render(request,'payment/view_package_payment_details_user.html',context)

    

def viewprodpaydetuse(request):
    
    fb=Payment.objects.all()
    context={
        'ok':fb
    }
    
    return render(request,'payment/view_product_payment_details_user.html',context)
