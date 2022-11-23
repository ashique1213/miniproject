from django.shortcuts import render

# Create your views here.

def admin(request):
    return render(request,'temp/admin.html')

def index(request):
    return render(request,'temp/index.html')

def student(request):
    return render(request,'temp/student.html')

def teacher(request):
    return render(request,'temp/teacher.html')

def had(request):
    return render(request,'temp/home_admin.html')

def hss(request):
    return render(request,'temp/home_stud.html')

def htt(request):
    return render(request,'temp/home_teach.html')

def ind(request):
    return render(request,'temp/home_index.html')

