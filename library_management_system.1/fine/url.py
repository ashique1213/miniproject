from django.conf.urls import url
from fine import views

urlpatterns=[
    url('fn/',views.fine),
    url('fine_ss/',views.fine_s),
    url('fine_tt',views.fine_t),
    url('fineall',views.fineall),
    url('vw/', views.fine),
    url('stdlist/', views.vstd),
    url('tchlist/', views.vteach),
    url('amts/(?P<idd>\w+)',views.amt,name="am"),
    url('amtt/(?P<idd>\w+)',views.amtt,name="am")

]