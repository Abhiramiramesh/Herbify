

# Create your models here.

from django.db import models
from django.contrib.auth.models import AbstractUser, BaseUserManager
# from django.contrib import admin
# from .models import Customisedorder
# Create your models here.

class CustomUserManager(BaseUserManager):
    def create_user(self, email, password=None, **extra_fields):
        if not email:
            raise ValueError("The Email field must be set")
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password=None, **extra_fields):
        extra_fields.setdefault("is_staff", True)
        extra_fields.setdefault("is_superuser", True)

        if extra_fields.get("is_staff") is not True:
            raise ValueError("Superuser must have is_staff=True.")
        if extra_fields.get("is_superuser") is not True:
            raise ValueError("Superuser must have is_superuser=True.")

        return self.create_user(email, password, **extra_fields)


# Custom user model
class User(AbstractUser):
    email = models.EmailField(unique=True)  
    phone = models.CharField(max_length=15, null=True, blank=True)
    fullname = models.CharField(max_length=100, null=True, blank=True)
    
    profile = models.ImageField(upload_to="profile/")
    role = models.CharField(max_length=100, null=True, blank=True)
    username = None

    objects = CustomUserManager()

    class Meta:
        db_table = 'user'

    def __str__(self):
        return self.fullname
    

    USERNAME_FIELD = "email"
    REQUIRED_FIELDS = []


class Product(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    image = models.ImageField(upload_to='profile/')  # requires MEDIA setup

    def __str__(self):
        return self.name
    

class Product2(models.Model):
    name = models.CharField(max_length=100)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    image = models.ImageField(upload_to='profile/')  # requires MEDIA setup

    def __str__(self):
        return self.name
    

class Productorder(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)
    total_price = models.DecimalField(max_digits=10, decimal_places=2)
    ordered_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return f"{self.user.username}'s order"
    
    

class Details(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(blank=True)
    
    image = models.ImageField(upload_to='profile/')  # requires MEDIA setup

    def __str__(self):
        return self.name
    

class Cartitem(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)  # Each cart is tied to a user
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)  # How many of this product

    # Method to calculate total price for this item
    def total_price(self):
        return self.product.price * self.quantity

    def __str__(self):
        return f"{self.product.name} ({self.quantity})"
    

class Cartitem2(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)  # Each cart is tied to a user
    product = models.ForeignKey(Product2, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)  # How many of this product

    # Method to calculate total price for this item
    def total_price(self):
        return self.product.price * self.quantity

    def __str__(self):
        return f"{self.product.name} ({self.quantity})"
    


class Payment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    cardholder_name = models.CharField(max_length=100)
    card_number = models.CharField(max_length=16)
    expiry_date = models.CharField(max_length=5)  # Format: MM/YY
    cvv = models.CharField(max_length=3)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    paid_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Payment by {self.user.username} of ₹{self.amount}"
    

class Order(models.Model):
    STATUS_CHOICES = [
        ('Pending', 'Pending'),
        ('Processing', 'Processing'),
        ('Shipped', 'Shipped'),
        ('Delivered', 'Delivered'),
    ]

    user = models.ForeignKey(User, on_delete=models.CASCADE)
    product = models.CharField(max_length=200)
    quantity = models.PositiveIntegerField(default=1)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='Pending')
    order_date = models.DateTimeField(auto_now_add=True)


class Tutorial(models.Model):
    title=models.CharField(max_length=200)
    video = models.FileField(upload_to='videos/', null=True, blank=True)