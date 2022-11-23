from django.conf.urls import url
from student import views

urlpatterns = [
    url('std/',views.stud),
    url('st/',views.std),
]