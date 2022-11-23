from django.conf.urls import url
from temp import views


urlpatterns=[
    url('admin/',views.admin),
    url('index/', views.index),
    url('teacher/', views.teacher),
    url('student/', views.student),
    url('homead/', views.had),
    url('homest/', views.hss),
    url('hometch/', views.htt),
    url('hometind/', views.ind),


]
