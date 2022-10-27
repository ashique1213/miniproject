from django.conf.urls import url
from teacher import views

urlpatterns = [
    url('tch/',views.teach),
    url('th/',views.tech),

]