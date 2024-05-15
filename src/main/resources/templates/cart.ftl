<#import "templ/templ.ftl" as p>

<@p.pages>
    <h2>Cart</h2>
    <table>
        <tbody>

        <th>id</th>
        <th>image</th>
        <th>name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Value</th>
        <th>Update</th>
        <th>Delete</th>

        </tbody>
        <tbody>
        <#if cart??>
            <#list cart as item>
                <#if item.dish.name??>
                    <tr>
                    <form action="/updateItemInCart" method="post">
                        <input type="hidden" name="id" value="${item.dish.id}">
                        <th>${item.dish.id}</th>
                        <th><img src="${item.dish.image}" alt="${item.dish.name}" width="30px"></th>
                        <th>${item.dish.name}</th>
                        <th><input type="number" value="${item.quantity}" name="quantity" min="1" step="1"></th>
                        <th>${item.dish.price}</th>
                        <th>${item.dish.price * item.quantity}</th>
                        <th><button type="submit">Update</button></th>
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

    <h5>total : [${total}]</h5>
    <h5>el : [${el}]</h5>

    <h5>Clear cart</h5>
    <form method="post" action="/deleteAllItem">
        <button type="submit">Delete all items</button>
    </form>

    <form method="get" action="/login">
        <button type="submit">Order</button>
    </form>

</@p.pages>