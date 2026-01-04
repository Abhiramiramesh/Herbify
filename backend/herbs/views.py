from django.shortcuts import render,redirect, get_object_or_404
from .models import *
from django.contrib import messages
from django.contrib.auth.hashers import make_password
from django.contrib.auth import authenticate, login, logout

# Create your views here.
def home(request):
    return render(request,'index.html')


def herbs(request):
    details=Details.objects.all()
    return render(request,'herbs.html',{'details':details})
    

def addproducts(request):
    if request.method=='POST':
          productname=request.POST.get('name')
          price=request.POST.get('price')
          image=request.FILES.get('image')
          result=Product.objects.create(name=productname,price=price,image=image)
          result.save()
    return render(request,'addproducts.html')


def addmachines(request):
    if request.method=='POST':
          productname=request.POST.get('name')
          price=request.POST.get('price')
          image=request.FILES.get('image')
          result=Product2.objects.create(name=productname,price=price,image=image)
          result.save()
    return render(request,'addmachinery.html')


def viewmachines(request):
    products=Product2.objects.all()
    return render(request,'viewmachines.html', {'products':products})


def viewmachines2(request):
    products=Product2.objects.all()
    return render(request,'machines.html', {'products':products})

def adddetails(request):
    if request.method=='POST':
          productname=request.POST.get('name')
          description=request.POST.get('description')
          
          image=request.FILES.get('image')
          result=Details.objects.create(name=productname,image=image,description=description)
          result.save()
    return render(request,'adddetails.html')


def viewdetails(request):
    details=Details.objects.all()
    return render(request,'viewdetails.html',{'details':details})


def viewproducts(request):
    products=Product.objects.all()
    return render(request,'viewproducts.html', {'products':products})

def vieworders(request):
    orders = Productorder.objects.all()
    return render(request,'vieworders.html',{'orders':orders})


def marketplace(request):
    products=Product.objects.all()
    return render(request,'marketplace.html', {'products':products})


def register(request):
    if request.method=='POST':
        username=request.POST.get('username')
        email=request.POST.get('email')
        phoneno=request.POST.get('phoneno')
        password=request.POST.get('password')
        result=User.objects.create(fullname=username,email=email,phone=phoneno,password=make_password(password),role='customer')
        result.save()
        # return redirect('login')
    return render(request,'register.html')


def signin(request):
    if request.method == 'POST':
        email=request.POST.get('email')
        password=request.POST.get('password')

        user = authenticate( request,email=email,password=password)

        if user is not None:
            login(request, user)
            messages.success(request,'login successfully')
            return redirect('home')
    return render(request,'login.html')


def signout(request):
    logout(request)
    messages.success(request,'logout successfully')
    return redirect('home')


def delete(request,user_id):
   result = get_object_or_404(User, id=user_id)
   result.delete()     
   messages.success(request,'user successfully deleted') 
   return redirect('viewdetails')


def delete1(request,product_id):
   result = get_object_or_404(Product, id=product_id)
   result.delete()     
   messages.success(request,'user successfully deleted') 
   return redirect('viewproducts')


def addtocart(request, product_id):
    product = get_object_or_404(Product, id=product_id)
    # If product already in cart, increase quantity
    cart_item, created = Cartitem.objects.get_or_create(user=request.user, product=product)
    if not created:
        cart_item.quantity += 1
    cart_item.save()
    return redirect('cart')


def addtocart2(request, product_id):
    product = get_object_or_404(Product2, id=product_id)
    # If product already in cart, increase quantity
    cart_item, created = Cartitem2.objects.get_or_create(user=request.user, product=product)
    if not created:
        cart_item.quantity += 1
    cart_item.save()
    return redirect('cart2')

     

def viewcart(request):
    cart_items = Cartitem.objects.filter(user=request.user)
    total = sum(item.total_price() for item in cart_items)  # Sum all cart item totals
    return render(request, 'cart.html', {'cart_items': cart_items, 'total': total})


def viewcart2(request):
    cart_items = Cartitem2.objects.filter(user=request.user)
    total = sum(item.total_price() for item in cart_items)  # Sum all cart item totals
    return render(request, 'cart2.html', {'cart_items': cart_items, 'total': total})


def remove_from_cart(request, item_id):
    item = get_object_or_404(Cartitem, id=item_id, user=request.user)
    item.delete()
    return redirect('cart')



def checkout(request):
    # ✅ Get all cart items for the logged-in user
    cart_items = Cartitem.objects.filter(user=request.user)

    # ✅ Calculate total amount
    total = sum(item.total_price() for item in cart_items)

    if request.method == 'POST':
        name = request.POST.get('cardholder_name')
        card_number = request.POST.get('card_number')
        expiry_date = request.POST.get('expiry_date')
        cvv = request.POST.get('cvv')

        # ✅ Save payment details
        Payment.objects.create(
            user=request.user,
            cardholder_name=name,
            card_number=card_number,
            expiry_date=expiry_date,
            cvv=cvv,
            amount=total
        )
        purchased_items = list(cart_items)

        for item in cart_items:
            Productorder.objects.create(
                user=request.user,
                product=item.product,
                quantity=item.quantity,
                total_price=item.total_price()
            )
            Order.objects.create(
                user=request.user,
                product=item.product.name,   # or item.product.name
                quantity=item.quantity,
                status="Processing"   # default stage
    )

        # ✅ Clear cart after payment success
        cart_items.delete()

        return render(request, 'checkout_success.html', {'cart_items': purchased_items,'total': total})

    return render(request, 'checkout.html', {'cart_items': cart_items, 'total': total})


def paymenthistory(request):
    payments = Payment.objects.filter(user=request.user).order_by('-paid_at')  # latest first

    return render(request,'paymenthistory.html',{'payments':payments})


def addfarmer(request):
    if request.method == "POST":
        farmer= request.POST.get('username')
        email = request.POST.get('email')
        phoneno = request.POST.get('phoneno')
        password = request.POST.get('password')
        # profile = request.FILES.get('profile')
        result=User.objects.create(fullname=farmer,email=email,phone=phoneno, password=make_password(password),role="farmer")
        result.save()
        
        
    return render(request,'addfarmer.html')


def viewfarmers(request):
     farmers= User.objects.filter(role="farmer")
     return render(request, 'viewfarmers.html', {'farmer': farmers})


def tracking_page(request):
    orders = Order.objects.filter(user=request.user).order_by('-order_date')
    return render(request, 'trackingpage.html', {'orders': orders})


def editproduct(request, id):
    product = get_object_or_404(Product, id=id)

    if request.method == "POST":
        name = request.POST.get("name")
        price = request.POST.get("price")
        image = request.FILES.get("image")

        product.name = name
        product.price = price

        if image:  
            product.image = image

        product.save()
        return redirect('viewproducts')   # change to your product list url name

    return render(request, "editproducts.html", {"product": product})


def editfarmer(request, id):
    farmer = get_object_or_404(User, id=id)

    if request.method == "POST":
        fullname = request.POST.get("fullname")
        email = request.POST.get("email")
        phone = request.POST.get("phone")

        farmer.fullname = fullname
        farmer.email = email
        farmer.phone = phone
        farmer.save()

        return redirect('viewfarmers')  # Redirect to farmers list

    return render(request, 'editfarmer.html', {'farmer': farmer})


def editmachine(request, id):
    product = get_object_or_404(Product2, id=id)
    
    if request.method == "POST":
        name = request.POST.get("name")
        price = request.POST.get("price")
        image = request.FILES.get("image")

        product.name = name
        product.price = price

        if image:
            product.image = image

        product.save()
        return redirect('viewmachines')  # Redirect after updating

    return render(request, 'editmachine.html', {'product': product})

def addclass(request):
    if request.method == "POST":
        title= request.POST.get('title')
        video=request.FILES.get('video')
    
        
        result=Tutorial.objects.create(title=title,video=video)
        result.save()
        return redirect('viewclass')  # Redirect after updating

    return render(request, 'addclass.html')


def viewclass(request):
    tutorial=Tutorial.objects.all()
    return render(request, 'viewclass.html',{'tutorial':tutorial})

def tutorials(request):
    tutorial=Tutorial.objects.all()
    return render(request,'tutorials.html', {'tutorial':tutorial})


def editclass(request, id):
    tutorial = get_object_or_404(Tutorial, id=id)

    if request.method == "POST":
        title = request.POST.get("title")
        video= request.FILES.get("video")
        
        tutorial.title = title
        tutorial.video = video
        
        tutorial.save()

        return redirect('viewclass')  # Redirect to farmers list

    return render(request, 'editclass.html', {'tutorial': tutorial})

