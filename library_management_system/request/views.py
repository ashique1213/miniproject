from django.shortcuts import render
from request.models import Request
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
    return req_d(request)

def reject(request,idd):
    obb=Request.objects.get(request_id=idd)
    obb.status='rejected'
    obb.save()
    return req_d(request)

def hist_s(request):
    hs=Request.objects.filter(status='issued')
    context={
        'hsval':hs
    }
    return render(request,'request/view_history_s.html',context)

def hist_t(request):
    hss= Request.objects.filter(status='issued')
    context = {
        'hssval': hss
    }
    return render(request,'request/view_history_t.html',context)