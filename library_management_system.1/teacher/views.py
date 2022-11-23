from django.shortcuts import render
from teacher.models import Teacher
from login.models import Login
# Create your views here.

def teach(request):
    if request.method=='POST':
        th=Teacher()
        th.staff_id=request.POST.get('tid')
        th.name= request.POST.get('name')
        th.phone= request.POST.get('pno')
        th.password=request.POST.get('Pswd')
        th.save()

        ob=Login()
        ob.username=th.name
        ob.password=th.password
        ob.type='teacher'
        ob.u_id=th.t_id
        ob.save()

    return render(request,'teacher/teacher_registration.html')

def tech(request):
    if request.method == 'POST':
        vv = request.POST.get('lop')
        obj = Teacher.objects.filter(name__icontains=vv)
        context = {
            'theval': obj
        }
        return render(request, 'teacher/view teacher details.html', context)
    else:
        re = Teacher.objects.all()
        context = {
            'theval': re
        }
    return render(request, 'teacher/view teacher details.html', context)