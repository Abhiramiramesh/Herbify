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
 path('addmachines', views.addmachines, name='addmachines'),
 path('viewmachines', views.viewmachines, name='viewmachines'),
 path('viewmachines2', views.viewmachines2, name='viewmachines2'),
 path('viewproducts', views.viewproducts, name='viewproducts'),
 path('adddetails', views.adddetails, name='adddetails'),
 path('viewdetails', views.viewdetails, name='viewdetails'),
 path('viewfarmers', views.viewfarmers, name='viewfarmers'),
 path('addfarmer', views.addfarmer, name='addfarmer'),
 path('vieworders', views.vieworders, name='vieworders'),
 path('addtocart/<int:product_id>/', views.addtocart, name='addtocart'),
 path('cart', views.viewcart, name='cart'),
 path('addtocart2/<int:product_id>', views.addtocart2, name='addtocart2'),
 path('cart2', views.viewcart2, name='cart2'),
 path('remove/<int:item_id>/', views.remove_from_cart, name='remove_from_cart'),
 path('checkout/', views.checkout, name='checkout'),
 path('paymenthistory/', views.paymenthistory, name='paymenthistory'),
 path('delete/<int:user_id>/',views.delete, name='delete'),
 path('deleteproduct/<int:product_id>/',views.delete1, name='deleteproduct'),
 path('tracking/', views.tracking_page, name='tracking'),
 path('editproduct/<int:id>/', views.editproduct, name='editproduct'),
 path('editfarmer/<int:id>/', views.editfarmer, name='editfarmer'),
 path('addclass', views.addclass, name='addclass'),
 path('viewclass', views.viewclass, name='viewclass'),
 path('tutorials', views.tutorials, name='tutorials'),
 path('editmachine/<int:id>/', views.editmachine, name='editmachine'),
 path('editclass/<int:id>/', views.editclass, name='editclass'),


 ]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)