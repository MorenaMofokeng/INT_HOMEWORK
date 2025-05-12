<%-- 
    Document   : favorities
    Created on : 11 May 2025, 2:50:56 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                <li class="active"><a href="favorites.jsp">My Favorites</a></li>
                <li><a href="cart.jsp">My Carts</a></li>
            </ul>
        </nav>
        
        <main>
            <h1>My Favorites</h1>
            <div class="listing">
                <div class="product-card">
                    <a href="product?id=1">
                    <h3>Supreme</h3>
                    <p>Supreme Futura Logo Crewneck</p>
                    <p>Small</p>
                    <p>R150</p>
                    </a> 
                    <button><a href="product?id=1">View</a></button>
                    <button><a href="product?action=remove&id=1">Remove</a></button>
                </div>
                <div class="product-card">
                    <a href="product?id=2">
                    <h3>Comme des Garcons x Supreme</h3>
                    <p>Supreme Box Logo Hoodie</p>
                    <p>Large</p>
                    <p>R150</p>
                    </a>
                    <button><a href="product?id=2">View</a></button>
                    <button><a href="product?action=remove&id=2">Remove</a></button>
                </div>
                <div class="product-card">
                    <a href="product?id=3">
                    <h3>Adidas x Stussy</h3>
                    <p>Vintage Stussy Adidas Real Madrid 2007 Soccer Jersey</p>
                    <p>Large</p>
                    <p>R150</p>
                    </a>
                    <button><a href="product?id=3">View</a></button>
                    <button><a href="product?action=remove&id=3">Remove</a></button>
                </div>
        </div>
        </main>  
    </body>
</html>
