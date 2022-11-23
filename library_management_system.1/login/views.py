from django.shortcuts import render
from login.models import Login

# Create your views here.

def log(request):
    obk=""
    if request.method == "POST":
        uname=request.POST.get("name")
        passw=request.POST.get("psw")
        obj=Login.objects.filter(username=uname,password=passw)
        tp=""
        for ob in obj:
            tp =ob.type
            uid =ob.u_id
            if tp == "admin":
                request.session["u_id"] = uid
                return render(request,'temp/admin.html')
            elif tp == "student":
                request.session["u_id"] = uid
                return render(request, 'temp/student.html')
            elif tp == "teacher":
                request.session["u_id"] = uid
                return render(request, 'temp/teacher.html')
        else:
            objlist = "username or password incorrect......please try again....!"
            context = {
            'msg':objlist
        }
        return render(request, 'login/login.html',context)
    return render(request,'login/login.html')