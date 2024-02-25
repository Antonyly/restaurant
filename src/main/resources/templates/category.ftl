<#import "templ/templ.ftl" as p>
<@p.pages>

    <#if categories??>
        <#list categories as category>
            <div class="container category">
                <ul class="category-list">
                    <li class="category-list__item">
                        <img src="${category.image}" class="category-list__image" alt="${category.name}">
                            <div class="category-list__container">
                                <h2 class="category-list__title">${category.name}</h2>
                                <p class="category-list__description">${category.description}</p>
                            </div>
                    </li>
                </ul>
            </div>
        </#list>
    </#if>

</@p.pages>