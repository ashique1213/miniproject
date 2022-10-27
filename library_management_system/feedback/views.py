from django.shortcuts import render
from feedback.models import Feedback
import datetime
# Create your views here.


def post_fd1(request):
    if request.method=='POST':
        fd=Feedback()
        fd.u_id=1
        fd.date=datetime.datetime.today()
        fd.feedback=request.POST.get('fds')
        fd.save()

    return render(request,'feedback/feedback_s.html')

def post_fd2(request):
    if request.method=='POST':
        fdd=Feedback()
        fdd.u_id=1
        fdd.date=datetime.datetime.today()
        fdd.feedback=request.POST.get('fdss')
        fdd.save()

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
