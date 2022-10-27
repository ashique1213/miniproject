from django.conf.urls import url
from fine import views

urlpatterns=[
    url('fn/',views.fine),
    url('fine_ss/',views.fine_s),
    url('fine_tt',views.fine_t),
    url('vw/', views.fine),

]