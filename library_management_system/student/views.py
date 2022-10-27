from django.shortcuts import render
from student.models import Student
# Create your views here.

def stud(request):
    if request.method=='POST':
        st=Student()
        st.name=request.POST.get('name')
        st.reg_no= request.POST.get('Reno')
        st.roll_no = request.POST.get('Rno')
        st.phone = request.POST.get('pno')
        st.password=request.POST.get('Pswd')
        st.save()

    return render(request,'student/student_registration.html')

def std(request):
    st=Student.objects.all()
    context = {
        'stval':st
    }
    return render(request,'student/view student details.html',context)