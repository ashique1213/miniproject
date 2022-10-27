from django.conf.urls import url
from request import views

urlpatterns=[
    url('rq_d/',views.req_d),
    url('vwhis1/', views.hist_s),
    url('vwhis2/', views.hist_t),
    url('rissue/(?P<idd>\w+)',views.issue,name="ris"),
    url('rreject/(?P<idd>\w+)',views.reject,name="rrg")

]