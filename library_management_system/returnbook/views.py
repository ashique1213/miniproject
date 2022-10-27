from django.shortcuts import render
from request.models import Request
from returnbook.models import Return
import datetime
# Create your views here.

def ret_b(request):
    rt=Return.objects.all()
    context = {
        'objval': rt
    }

    return render(request,'returnbook/view return table.html',context)

def ret_t(request):
    rt=Request.objects.filter(status='issued')
    context = {
        'hsval': rt
    }

    return render(request,'returnbook/view_return.html',context)

def app(request,idd):
    ob=Return.objects.get(return_id=idd)
    ob.status='approved'
    ob.save()
    return ret_b(request)

def rej(request,idd):
    ob=Return.objects.get(return_id=idd)
    ob.status='rejected'
    ob.save()
    return ret_b(request)

def ret(request,idd):
    ob=Return()
    ob.request_id=idd
    ob.date=datetime.datetime.today()
    ob.status='pending'
    ob.save()
    return ret_b(request)
