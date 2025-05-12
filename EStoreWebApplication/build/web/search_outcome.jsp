<%-- 
    Document   : search_outcome
    Created on : 11 May 2025, 11:55:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <h1><a href="home.jsp">EStore</a></h1>
            <ul>
                <li><a href="add_product.jsp">Sell</a></li>
                <li class="active"><a href="products_listing.jsp">Shop</a></li>
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
        <div class="listing">
            <form action="SearchProductServlet.do">
                <div class="search-container">
                    <input class="search-input" type="text" name="query" placeholder="Type to search">
                    <button class="search-btn" type="submit">Search</button>
                </div>
            </form>
            <a href="product?id=1">
                <div class="product-card">
                    <h3>Supreme</h3>
                    <p>Supreme Futura Logo Crewneck</p>
                    <p>Small</p>
                    <p>R150</p>
                </div>
            </a> 
            <a href="product?id=2">
                <div class="product-card">
                    <h3>Comme des Garcons x Supreme</h3>
                    <p>Supreme Box Logo Hoodie</p>
                    <p>Large</p>
                    <p>R150</p>
                </div>
            </a>
            <a href="product?id=3">
                <div class="product-card">
                    <h3>Adidas x Stussy</h3>
                    <p>Vintage Stussy Adidas Real Madrid 2007 Soccer Jersey</p>
                    <p>Large</p>
                    <p>R150</p>
                </div>
            </a>
        </div>
            </main>
    </body>
</html>
