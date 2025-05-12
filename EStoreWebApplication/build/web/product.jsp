<%-- 
    Document   : product
    Created on : 11 May 2025, 9:21:03 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Page</title>
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
                <li><a href="cart.jsp">My Carts</a></li>
            </ul>
        </nav>
        <main>
            <div class="container">
                <h2>Name</h2>
                <p>Description</p>
                <p>Size</p>
                <p>Price</p>
                <h1>Listing Details </h1>
                <div>
                    <p>Color</p>
                    <p>Black</p>
                </div>
                <div>
                    <p>Condition</p>
                    <p>Gently </p>
                </div>

                <button><a href="product?action=add-to-favorite&id=1">Add to Favories</a></button>
                <button><a href="product?action=add-to-cart&id=1">Add to Cart</a></button>
            </div>
        </main>
    </body>
</html>
