from django.shortcuts import render
from teacher.models import Teacher

# Create your views here.

def teach(request):
    if request.method=='POST':
        th=Teacher()
        th.staff_id=request.POST.get('tid')
        th.name= request.POST.get('name')
        th.phone= request.POST.get('pno')
        th.password=request.POST.get('Pswd')
        th.save()

    return render(request,'teacher/teacher_registration.html')

def tech(request):
    the=Teacher.objects.all()
    context = {
        'theval':the
    }

    return render(request,'teacher/view teacher details.html',context)
