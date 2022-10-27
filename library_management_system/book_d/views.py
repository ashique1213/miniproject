from django.shortcuts import render
from book_d.models import BookD
from request.models import Request
import datetime
# Create your views here.


def bk_reg(request):
    if request.method=='POST':
        br=BookD()
        br.book_id=request.POST.get('bno')
        br.author=request.POST.get('ath')
        br.name=request.POST.get('bname')
        br.edition = request.POST.get('ed')
        br.price = request.POST.get('Price')
        br.publication = request.POST.get('publ')
        br.pages = request.POST.get('Pages')
        br.subject = request.POST.get('sub')
        br.save()


    return render(request,'book_d/book_registration.html')

def req(request):
    re=BookD.objects.all()
    context={
        'reval':re
    }

    return render(request,'book_d/request.html',context)
def reqstr(request,idd):
    ob=Request()
    ob.b_id=idd
    ob.u_id=1
    ob.request_date=datetime.datetime.today()
    ob.status='pending'
    ob.save()
    return req(request)

def ret(request):
    rt=BookD.objects.all()
    context={
        'retval':rt
    }
    return render(request,'book_d/view and return.html',context)


def bk_d(request):
    bkd=BookD.objects.all()
    context={
        'bkdval':bkd
    }
    return render(request,'book_d/view book details.html',context)
