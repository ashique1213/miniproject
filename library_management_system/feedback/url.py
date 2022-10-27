from django.conf.urls import url
from feedback import views

urlpatterns=[
    url('fdk/',views.post_fd1),
    url('fdkk/',views.post_fd2),
    url('viewst/',views.view_fd1),
    url('viewth/',views.view_fd2),


]