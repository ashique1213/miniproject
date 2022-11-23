from django.contrib import messages
from django.shortcuts import render
from feedback.models import Feedback
from student.models import Student
from teacher.models import Teacher
import datetime
# Create your views here.


def post_fd1(request):
    ss=request.session["u_id"]
    # obj=Teacher.objects.get(t_id=ss)
    obk=Student.objects.get(stud_id=ss)
    context={
        'kk':obk,
        # 'pp':obj
    }
    if request.method=='POST':
        fd=Feedback()
        fd.stud_id=obk.name
        fd.date=datetime.datetime.today()
        fd.feedback=request.POST.get('fds')
        fd.save()
        messages.success(request,"SUBMTTED SUCCESSFULLY")


    return render(request,'feedback/feedback_s.html',context)

def post_fd2(request):
    ss = request.session["u_id"]
    obj=Teacher.objects.get(t_id=ss)
    # obk = Student.objects.get(stud_id=ss)
    context = {
        # 'kk': obk,
        'pp':obj
    }

    if request.method=='POST':
        fdd=Feedback()
        fdd.stud_id=obj.name
        fdd.date=datetime.datetime.today()
        fdd.feedback=request.POST.get('fdss')
        fdd.save()
        messages.success(request, "SUBMTTED SUCCESSFULLY")

    return render(request,'feedback/feedback_t.html')

def view_fd1(request):
    fd=Feedback.objects.all()
    context = {
        'fdval':fd
    }
    return render(request,'feedback/view feedback_s.html',context)

def view_fd2(request):
    fdd= Feedback.objects.all()
    context = {
        'fddval': fdd
    }
    return render(request,'feedback/view_feedback_t.html',context)
