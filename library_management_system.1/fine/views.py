from django.shortcuts import render
from fine.models import Fine
from teacher.models import Teacher
from student.models import Student
import datetime
# Create your views here.

def fine(request):
    return render(request,'fine/post fine.html')

def fine_s(request):
    ss = request.session["u_id"]
    obs = Student.objects.get(stud_id=ss)
    obb = Fine.objects.filter(u_id=obs.name)
    context ={
        'obval':obb

    }
    return render(request,'fine/view fine_s.html',context)

def fine_t(request):
    ss = request.session["u_id"]
    obs = Teacher.objects.get(t_id=ss)
    obb = Fine.objects.filter(u_id=obs.name)
    context = {
        'objval': obb

    }
    return render(request,'fine/view fine_t.html',context)

def fineall(request):
    obb = Fine.objects.all()
    context = {
        'objval': obb

    }
    return render(request,'fine/viewfine.html',context)

def vstd(request):
    st=Student.objects.all()
    context = {
        'stval':st
    }
    return render(request,'fine/vwstd.html',context)

def vteach(request):
    the=Teacher.objects.all()
    context = {
        'theval':the
    }

    return render(request,'fine/vwteacher.html',context)

def amt(request,idd):
    obj=Student.objects.get(stud_id=idd)
    context={
        'kk':obj
    }
    if request.method=='POST':
        ob=Fine()
        ob.u_id=obj.name
        ob.fine=request.POST.get('amount')
        ob.date=datetime.datetime.today()
        ob.type='student'
        ob.save()
    return render(request, 'fine/post amount ss.html')

def amtt(request,idd):
    obj = Teacher.objects.get(t_id=idd)
    context = {
        'kk': obj
    }
    if request.method=='POST':
        ob=Fine()
        ob.u_id=obj.name
        ob.fine=request.POST.get('amount')
        ob.date=datetime.datetime.today()
        ob.type='teacher'
        ob.save()
    return render(request, 'fine/post amount tt.html')