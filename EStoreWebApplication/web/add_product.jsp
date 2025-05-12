<%-- 
    Document   : add_product
    Created on : 11 May 2025, 9:24:54 AM
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
                <li class="active"><a href="add_product.jsp">Sell</a></li>
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
            <h1>Add a new listing</h1>
            <div class="container">
            <form action="AddProductServlet.do" method="POST">
            
                <label>Name</label>
                <input type="text" name="name"></br>
                <label>Description</label>
                <textarea name="description"></textarea></br>
                <label>Size</label>
                <select type="radio" name="size" value="used">
                    <option value="s">Small</option>
                    <option value="m">Medium</option>
                    <option value="l">Large</option>
                    <option value="xl">X-large (XL)</option>
                    <option value="xxl">XX-large (XXL)</option>
                </select></br>
                <label>Price</label>
                <input type="text" name="price"></br>
                <label>Color</label>
                <input type="text" name="color"></br>
                <label>Condition</label>
                <select type="radio" name="condition" value="used">
                    <option value="new">New</option>
                    <option value="gently-used">Gently Used</option>
                    <option value="used">Used</option>
                </select>
                </br>
            
                <button type="submit">Add</button>
                </form>
                </div>
        </main>
    </body>
</html>
