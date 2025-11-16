from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static
urlpatterns = [
 path('', views.home, name='home'),
 path('herbsandplants', views.herbs, name='herbs'),
 path('marketplace', views.marketplace, name='marketplace'),
 path('register', views.register, name='register'),
 path('login', views.signin, name='login'),
 path('logout', views.signout, name='logout'),
 path('addproducts', views.addproducts, name='addproducts'),
 path('viewproducts', views.viewproducts, name='viewproducts'),
 path('adddetails', views.adddetails, name='adddetails'),
 path('viewdetails', views.viewdetails, name='viewdetails'),
 path('vieworders', views.vieworders, name='vieworders'),
 path('addtocart/<int:product_id>/', views.addtocart, name='addtocart'),
 path('cart', views.viewcart, name='cart'),
 path('remove/<int:item_id>/', views.remove_from_cart, name='remove_from_cart'),
 path('checkout/', views.checkout, name='checkout'),
 path('paymenthistory/', views.paymenthistory, name='paymenthistory'),
 path('delete/<int:user_id>/',views.delete, name='delete'),
 path('deleteproduct/<int:product_id>/',views.delete1, name='deleteproduct'),
 ]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)