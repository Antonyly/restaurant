<#import "templ/templ.ftl" as p>
<@p.pages>

    <h1> Order </h1>

    <h2>User name</h2>
    <table class="table">

        <thead>
        <tr>
            <th>Name</th>
            <th>Surname</th>
            <th>Phone number</th>
            <th>Email</th>
        </tr>
        </thead>
        <tbody>
        <#if client??>
            <#if client.firstName??>
                <tr>
                    <td>${client.firstName}</td>
                    <td>${client.lastName}</td>
                    <td>${client.phone}</td>
                    <td>${client.email}</td>
                </tr>
            </#if>
        </#if>
        </tbody>
    </table>


    <h2> Order information </h2>

    <table>

        <thead>
        <tr>
            <th>image</th>
            <th>name</th>
            <th>quantity</th>
            <th>price</th>
            <th>value</th>
        </tr>
        </thead>
        <tbody>


        <#if cart??>
            <#list cart as item>
                <#if item.dish.name??>
                    <tr>
                        <td><img src="${item.dish.image}" alt="${item.dish.name}" height="30px"></td>
                        <td>${item.dish.name}</td>
                        <td>${item.quant}</td>
                        <td>${item.dish.price}</td>
                        <td>${item.dish.price * item.quantity}</td>
                    </tr>
                </#if>
            </#list>
        </#if>
        </tbody>
    </table>

    <p> The cost of the order: ${total} </p>
    <p> Number of associated items in the order: ${el}</p>


    <form action="/buy" method="post">
        <h2> Choosing a payment method </h2>
        <select name="payment">
            <option value="1">By cash</option>
            <option value="2">By card</option>
        </select>

        <h2> Choosing a delivery method </h2>
        <select name="delivery">
            <option value="1">Self-delivery</option>
            <option value="2">Nova Post</option>
            <option value="3">Ukrposhta</option>
        </select>

        <button type="submit">Confirm your order</button>
    </form>



</@p.pages>