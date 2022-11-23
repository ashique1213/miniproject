from django.http import HttpResponseRedirect
from django.shortcuts import render
from request.models import Request
from returnbook.models import Return
from book_d.models import BookD
import datetime
# Create your views here.

def ret_b(request):
    rt=Return.objects.filter(status='pending')
    context = {
        'objval': rt
    }

    return render(request,'returnbook/view return table.html',context)

def ret_t(request):
    ss = request.session["u_id"]
    print(ss)
    rt=Request.objects.filter(status='issued',u_id=ss)
    context = {
        'aaa': rt
    }

    return render(request,'returnbook/view_return.html',context)

def ret_thh(request):
    ss = request.session["u_id"]
    print(ss)
    rt=Request.objects.filter(status='issued',u_id=ss)
    context = {
        'aaa': rt
    }

    return render(request,'returnbook/view_return_t.html',context)


def app(request,idd):
    ob=Return.objects.get(return_id=idd,status='pending')
    ob.status='approved'
    ob.save()

    obj = BookD.objects.get(b_id=ob.b_id)
    obj.status = 'Available'
    obj.save()

    return ret_b(request)

def rej(request,idd):
    ob=Return.objects.get(return_id=idd,status='pending')
    ob.status='rejected'
    ob.save()
    return ret_b(request)

def ret(request,idd):
    ob=Return()
    ob.b_id=idd
    ob.date=datetime.datetime.today()
    ob.status='pending'
    ob.save()
    obb=Request.objects.get(b_id=idd)
    obb.status='returned'
    obb.save()
    return HttpResponseRedirect('/returnbook/%20rtbh/')



