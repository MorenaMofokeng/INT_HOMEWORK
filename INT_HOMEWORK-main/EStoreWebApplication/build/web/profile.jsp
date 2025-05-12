<%-- 
    Document   : profile
    Created on : 11 May 2025, 11:01:04 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="stylesheet" type="text/css" href="styles.css"/>
    </head>
    <body>
        <header>
            <h1><a href="home.jsp">EStore</a></h1>
            <ul>
                <li><a href="add_product.jsp">Sell</a></li>
                <li><a href="products_listing.jsp">Shop</a></li>
                <li class="active"><a href="profile.jsp">Profile</a></li>
            </ul>
        </header>
        
        <nav class="profile-nav">
            <ul>
                <li><a href="products.jsp">Selling</a></li>
                <li><a href="favorites.jsp">My Favorites</a></li>
                <li><a href="cart.jsp">My Cart</a></li>
            </ul>
            <button class="logout-btn"><a href="logout?id=1">LOGOUT</a></button>
        </nav>
        
        <main>
            <h1>Add a new listing</h1>
            <div class="container">
                <form action="EditAccountServlet.do" method="POST">

                        <label>Username</label>
                        <input type="text" name="username" required><br>

                        <label>Email</label>
                        <input type="email" name="email" required><br>

                        <label>Password</label>
                        <input type="text" name="password" required><br>

                        <button class="register-btn" type="submit">EDIT ACCOUNT</button>

                </form>
            </div>
            
        </main>
    </body>
</html>
