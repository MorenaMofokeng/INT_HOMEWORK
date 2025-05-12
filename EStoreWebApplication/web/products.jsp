<%-- 
    Document   : products
    Created on : 11 May 2025, 9:10:40 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products Page</title>
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
                <li class="active"><a href="products.jsp">Selling</a></li>
                <li><a href="favorites.jsp">My Favorites</a></li>
                <li><a href="cart.jsp">My Cart</a></li>
            </ul>
        </nav>
        <main>
            <h1>My Products</h1>
            <table>
                <tr>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Size</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
                <tr>
                    <td>Supreme</td>
                    <td>Supreme Futura Logo Crewneck</td>
                    <td>Small</td>
                    <td>R150</td>
                    <td>
                        <button><a href="product?action=edit&id=1">Edit</a></button>
                        <button><a href="product?action=delete&id=1">Delete</a></button>
                    </td>
                </tr>
                <tr>
                    <td>Comme des Garcons x Supreme</td>
                    <td>Supreme Box Logo Hoodie</td>
                    <td>Large</td>
                    <td>R150</td>
                    <td>
                        <button><a href="product?action=edit&id=2">Edit</a></button>
                        <button><a href="product?action=delete&id=2">Delete</a></button>
                    </td>
                </tr>
            </table>
        </main>
    </body>
</html>
