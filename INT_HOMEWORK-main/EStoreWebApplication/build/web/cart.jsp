<%-- 
    Document   : cart
    Created on : 11 May 2025, 2:39:22 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
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
                <li><a href="favorites.jsp">Favorites</a></li>
                <li class="active"><a href="cart.jsp">Cart</a></li>
            </ul>
        </nav>
        
        <main class="cart">
            <%
                //calcuate final price
            %>
            <div class="listing">
                <div class="product-card">
                    <div>
                        <h3>Supreme</h3>
                        <p>Supreme Futura Logo Crewneck</p>
                        <p>Small</p>
                        <p>R150</p>
                    </div>
                    <div>
                        <button><a href="product?id=1">View</a></button>
                        <button><a href="product?action=cancel&id=1">Cancel</a></button>
                    </div>
                </div>
                <div class="product-card">
                    <div>
                        <h3>Comme des Garcons x Supreme</h3>
                        <p>Supreme Box Logo Hoodie</p>
                        <p>Large</p>
                        <p>R150</p>
                    </div>
   
                    <div>
                        <button><a href="product?id=2">View</a></button>
                        <button><a href="product?action=cancel&id=2">Cancel</a></button>
                    </div>
                </div>
                <div class="product-card">
                    <div>
                        <h3>Adidas x Stussy</h3>
                        <p>Vintage Stussy Adidas Real Madrid 2007 Soccer Jersey</p>
                        <p>Large</p>
                        <p>R150</p>
                    </div>
                    <div>
                        <button><a href="product?id=3">View</a></button>
                        <button><a href="product?action=cancel&id=3">Cancel</a></button>
                    </div>
                </div>
                
                </div>
            <div class="summary">
                <h2>Summary</h2>
                <p>Total price</p>
                <button>CHECKOUT</button>
            </div>
                
        </main>
    </body>
</html>
