<#import "templ/templ.ftl" as p>

<@p.pages>
    <div class="container">
    <link rel="stylesheet" type="text/css" href="styles.css">

    <h2>Cart</h2>
    <table>
        <thead>
        <tr>
            <th>id</th>
            <th>image</th>
            <th>name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Value</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
        <#if cart??>
            <#list cart as item>
                <#if item.dish.name??>
                    <tr>
                        <form action="/updateItemInCart" method="post">
                            <input type="hidden" name="id" value="${item.dish.id}">
                            <td>${item.dish.id}</td>
                            <td><img src="${item.dish.image}" alt="${item.dish.name}"></td>
                            <td>${item.dish.name}</td>
                            <td><input type="number" value="${item.quantity}" name="quantity" min="1" step="1"></td>
                            <td>${item.dish.price}</td>
                            <td>${item.dish.price * item.quantity}</td>
                            <td><button type="submit">Update</button></td>
                        </form>
                        <form action="/deleteItemFromCart" method="post">
                            <td>
                                <input type="hidden" name="id" value="${item.dish.id}">
                                <button type="submit">Delete</button>
                            </td>
                        </form>
                    </tr>
                </#if>
            </#list>
        </#if>
        </tbody>
    </table>

    <div class="total"><h5>Total: [${total}]</h5></div>
    <div class="el"><h5>El: [${el}]</h5></div>

    <h5>Clear cart</h5>
    <form method="post" action="/deleteAllItem">
        <button type="submit">Delete all items</button>
    </form>

    <form method="get" action="/login">
        <button type="submit">Order</button>
    </form>
    </div>
</@p.pages>
