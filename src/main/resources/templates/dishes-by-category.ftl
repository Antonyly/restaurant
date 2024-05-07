<#import "templ/templ.ftl" as p>
<@p.pages>

    <#if dishesByCategory??>
        <#list dishesByCategory as dish>
            <div class="container category">
                <ul class="category-list">
                    <li class="category-list__item">
                        <img src="${dish.image}" class="category-list__image" alt="${dish.name}">
                        <div class="category-list__container">
                            <h2 class="category-list__title">${dish.name}</h2>
                            <p class="category-list__description">${dish.description}</p>
                            <p>${dish.price}</p>
                        </div>
                    </li>
                </ul>
            </div>
        </#list>
    </#if>

</@p.pages>