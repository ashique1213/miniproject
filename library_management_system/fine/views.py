from django.shortcuts import render
from fine.models import Fine
from teacher.models import Teacher
import datetime
# Create your views here.

def fine(request):
    if request.method=='POST':
      fn=Fine()
      fn.u_id=1
      fn.date=datetime.datetime.today()
      fn.date= request.POST.get('Amount')


    return render(request,'fine/post fine.html')

def fine_s(request):
    return render(request,'fine/view fine_s.html')

def fine_t(request):
    return render(request,'fine/view fine_t.html')


def vtech(request):
    the=Teacher.objects.all()
    context = {
        'theval':the
    }

    return render(request,'fine/vwteacher.html',context)