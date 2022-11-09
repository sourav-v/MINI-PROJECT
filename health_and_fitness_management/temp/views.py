from django.shortcuts import render

# Create your views here.
def index(request):
     obk="sucsessfull"
     context={
          'msg':obk
     }  
     return render(request,'temp/index.html',context)


def main(request):
       
     return render(request,'temp/main.html')

def user(request):
     obk="sucsessfull"
     context={
          'msg':obk
     }
     return render(request,'temp/user.html',context)
