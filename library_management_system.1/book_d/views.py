from django.shortcuts import render
from book_d.models import BookD
from request.models import Request
from returnbook.models import Return
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
        br.status = 'Available'
        br.save()


    return render(request,'book_d/book_registration.html')

def req(request):
    if request.method=='POST':
        vv=request.POST.get('lop')
        obj=BookD.objects.filter(name__icontains=vv)
        context = {
            'reval':obj

        }
        return render(request, 'book_d/request.html', context)
    else:
        obj=BookD.objects.filter(status='Available')
        context={
        'reval':obj
        }

    return render(request,'book_d/request.html',context)

def reqt(request):
    if request.method=='POST':
        vv=request.POST.get('lop')
        obj=BookD.objects.filter(name__icontains=vv)
        context = {
            'reval':obj

        }
        return render(request, 'book_d/request_t.html', context)
    else:
         re=BookD.objects.filter(status='Available')
         context={
        'reval':re
    }

    return render(request,'book_d/request_t.html',context)
def srch(request):
    if request.method=='POST':
        vv=request.POST.get('lop')
        obj=BookD.objects.filter(name__icontains=vv)
        context = {
            'reval':obj

        }
        return render(request, 'book_d/search.html', context)
    else:
         re=BookD.objects.filter(status='Available')
         context={
        'reval':re
    }

    return render(request,'book_d/search.html',context)

def reqstr(request,idd):
    ss=request.session["u_id"]
    ob=Request()
    ob.b_id=idd
    ob.u_id=ss
    ob.request_id
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
    if request.method=='POST':
        vv=request.POST.get('lop')
        obj=BookD.objects.filter(name__icontains=vv)
        context = {
            'bkdval':obj

        }
        return render(request, 'book_d/view book details.html', context)
    else:
         re=BookD.objects.filter(status='Available')
         context={
        'bkdval':re
    }
    return render(request,'book_d/view book details.html',context)

def ret(request,idd):
    ob=Return()
    ob.request_id=idd
    ob.date=datetime.datetime.today()
    ob.status='pending'
    ob.save()


