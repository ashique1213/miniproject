from django.shortcuts import render
# from pip._vendor.six import
from returnbook.models import Return
import datetime

from request.models import Request
from book_d.models import BookD
# Create your views here.

def req_d(request):
    ob=Request.objects.filter(status='pending')
    context={
        'ad':ob
    }
    return render(request,'request/view request details.html',context)

def issue(request,idd):
    ob=Request.objects.get(request_id=idd)
    ob.status='issued'
    ob.save()
    obj=BookD.objects.get(b_id=ob.b.b_id)
    obj.status='Unavailable'
    obj.save()
    return req_d(request)
    # ob = Return()
    # ob.b_id = obj.b_id
    # ob.date = datetime.datetime.today()
    # ob.status = 'pending'
    # ob.save()
    # return req_d(request)



def reject(request,idd):
    obb=Request.objects.get(request_id=idd)
    obb.status='rejected'
    obb.save()
    return req_d(request)

def hist_s(request):
    ss = request.session["u_id"]
    print(ss)
    hs=Request.objects.filter(status='issued',u_id=ss)
    context={
        'hsval':hs
    }
    return render(request,'request/view_history_s.html',context)

def hist_t(request):
    ss = request.session["u_id"]
    print(ss)
    hss= Request.objects.filter(status='issued',u_id=ss)
    context = {
        'hssval': hss
    }
    return render(request,'request/view_history_t.html',context)

def hist_all(request):
    fd=Request.objects.all()
    context = {
        'hsval':fd
    }
    return render(request,'request/reqall.html',context)
