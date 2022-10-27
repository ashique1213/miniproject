from django.conf.urls import url
from book_d import views

urlpatterns=[
    url('reg/',views.bk_reg),
    url('req/',views.req),
    url('view_r/',views.ret),
    url('view_bd/',views.bk_d),
    url('rqsnd/(?P<idd>\w+)', views.reqstr,name="rqq"),

]