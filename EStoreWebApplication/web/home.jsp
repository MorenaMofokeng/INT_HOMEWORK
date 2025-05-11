<%-- 
    Document   : home
    Created on : 11 May 2025, 9:07:21 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
    </head>
    <body>
        <header>
            <h1><a href="home.jsp">EStore</a></h1>
            <ul>
                <li><a href="add_product.jsp">Sell</a></li>
                <li><a href="products_listing.jsp">Shop</a></li>
                <li><a href="profile.jsp">Profile</a></li>
            </ul>
        </header>
        
        <nav>
            <ul>
                <li><a href="products.jsp">Selling</a></li>
                <li><a href="favorites.jsp">My Favorites</a></li>
                <li><a href="cart.jsp">My Cart</a></li>
            </ul>
        </nav>
        
        <main>
            <h1>Welcome Username</h1>
            <div></div>
            <div class="btn-container">
                <button class="register-btn"><a href="add_product.jsp">Sell</a></button>
                <button class="login-btn"><a href="products_listing.jsp">Shop</a></button>
            </div>
        </main>
    </body>
</html>
