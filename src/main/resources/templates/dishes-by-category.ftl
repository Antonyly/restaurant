<#import "templ/templ.ftl" as p>
<@p.pages>
    <#if dishesByCategory??>
        <div class="container category">
            <ul class="category-list">
                <#list dishesByCategory as dish>
                    <li class="category-list__item">
                        <form action="/AddToCart" method="post">
                            <input type="hidden" name="id" value="${dish.id}">
                            <img src="${dish.image}" class="category-list__image" alt="${dish.name}">
                            <div class="category-list__container">
                                <h2 class="category-list__title">${dish.name}</h2>
                                <p class="category-list__description">${dish.description}</p>
                                <p>${dish.price}</p>
                                <p><input type="number" name="quantity" min="1" step="1" value="1"></p>
                                <button type="submit" class="button-down">AddToCart</button>
                            </div>
                        </form>
                    </li>
                </#list>
            </ul>
        </div>
    </#if>
</@p.pages>
