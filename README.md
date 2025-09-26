# Ecommerce WebForms (ASP.NET)

A simple e-commerce sample built with ASP.NET Web Forms, following a classic 3-tier architecture (UI → BLL → DAL). This project demonstrates a basic online store with admin and user management, category & product handling, and simple billing functionality.

## 🧰 Tech Stack
- **Frontend/UI:** ASP.NET Web Forms, HTML/CSS, WebForms controls  
- **Backend:** ASP.NET Web Forms (.NET Framework)
- **Database:** Microsoft SQL Server  
- **Architecture:** 3-tier (UI / BLL / DAL)  
- **Runtime:** .NET Framework (Visual Studio / IIS Express)  

## ✨ Features
  - **👨‍💼 Admin Module**
  - Register admins with unique usernames
  - Admin login
    
- **👤 User Module**
  - User signup & login (username/password)
  - Profile view & edit (name, email, phone, avatar)
  - Wishlist (add/remove products)*
  - Cart basics (add/update/remove items, clear cart)*

- **📦 Category Management**
  - Create categories with **name**, **image**, and **description**

- **🛍️ Product Management**
  - Add products linked to categories
  - Store product details (name, price, image, description)
  - View and list products by category

- **🛒 Order & Billing**
  - Show bill line items (orders + product details)
  - Calculate subtotal and total for a user
  - Mark bill as **Paid** after checkout
  - Clear user orders after successful payment
