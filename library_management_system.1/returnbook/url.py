from django.conf.urls import url
from returnbook import views

urlpatterns=[
    url('rtb/', views.ret_b),
    url('rtbb/', views.ret_t),
    url('rtbh/', views.ret_thh),
    url('rp/(?P<idd>\w+)', views.ret,name="ret1"),
    url('rapp/(?P<idd>\w+)', views.app, name="apr"),
    url('rreje/(?P<idd>\w+)', views.rej, name="rjt")
]