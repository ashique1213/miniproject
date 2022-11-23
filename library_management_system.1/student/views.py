from django.shortcuts import render
from student.models import Student
from  login.models import Login
# Create your views here.

def stud(request):
    if request.method=='POST':
        st=Student()
        st.name=request.POST.get('name')
        st.reg_no= request.POST.get('Reno')
        st.sem = request.POST.get('sm')
        st.roll_no = request.POST.get('Rno')
        st.phone = request.POST.get('pno')
        st.password=request.POST.get('Pswd')
        st.save()

        ob=Login()
        ob.username=st.name
        ob.password=st.password
        ob.type='student'
        ob.u_id=st.stud_id
        ob.save()

    return render(request,'student/student_registration.html')

def std(request):
    if request.method == 'POST':
        vv = request.POST.get('lop')
        obj = Student.objects.filter(name__icontains=vv)
        context = {
            'reval': obj
        }
        return render(request, 'student/view student details.html', context)
    else:
        re = Student.objects.all()
        context = {
            'reval': re
        }
    return render(request,'student/view student details.html',context)