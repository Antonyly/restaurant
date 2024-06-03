
<#import "templ/templ.ftl" as p>
<@p.pages>

    <h1>Order</h1>

    <h2>User Information</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Phone Number</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <#if session.user?? && client??>
            <#if client.firstName??>
                <tr>
                    <td>${client.firstName}</td>
                    <td>${client.lastName}</td>
                    <td>${client.phone}</td>
                    <td>${client.email}</td>
                </tr>
            </#if>
        <#else>
            <tr>
                <td colspan="4">No user information available.</td>
            </tr>
        </#if>
        </tbody>
    </table>

    <h2>Order Information</h2>
    <table class="table">
        <thead>
        <tr>
            <th>Image</th>
            <th>Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Value</th>
        </tr>
        </thead>
        <tbody>
        <#if cart??>
            <#list cart as item>
                <#if item.dish.name??>
                    <tr>
                        <td><img src="${item.dish.image}" alt="${item.dish.name}" height="30px"></td>
                        <td>${item.dish.name}</td>
                        <td>${item.quantity}</td>
                        <td>${item.dish.price}</td>
                        <td>${item.dish.price * item.quantity}</td>
                    </tr>
                </#if>
            </#list>
        <#else>
            <tr>
                <td colspan="5">No items in the cart.</td>
            </tr>
        </#if>
        </tbody>
    </table>

    <p>Total Cost of the Order: ${total}</p>
    <p>Number of Items in the Order: ${el}</p>

    <form action="/buy" method="post">
        <h2>Choosing a Payment Method</h2>
        <select name="payment">
            <option value="1">By Cash</option>
            <option value="2">By Card</option>
        </select>

        <h2>Choosing a Delivery Method</h2>
        <select name="delivery">
            <option value="1">Self-Delivery</option>
            <option value="2">Nova Poshta</option>
            <option value="3">Ukrposhta</option>
        </select>

        <button type="submit">Confirm Your Order</button>
    </form>

</@p.pages>
