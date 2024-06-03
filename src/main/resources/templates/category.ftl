<#--<#import "templ/templ.ftl" as p>-->
<#--<@p.pages>-->

<#--    <#if categories??>-->
<#--        <#list categories as category>-->
<#--            <div class="container category">-->

<#--                <ul class="category-list">-->
<#--                    <li class="category-list__item">-->
<#--                        <a href="/category/${category.id}">-->
<#--&lt;#&ndash;                        <img src="${category.image}" class="category-list__image" alt="${category.name}">&ndash;&gt;-->
<#--                            <button class="category-list__button">${category.name}</button>-->
<#--                        </a>-->
<#--&lt;#&ndash;                            <div class="category-list__container">&ndash;&gt;-->
<#--&lt;#&ndash;                                <h2 class="category-list__title">${category.name}</h2>&ndash;&gt;-->
<#--&lt;#&ndash;                                <p class="category-list__description">${category.description}</p>&ndash;&gt;-->
<#--&lt;#&ndash;                            </div>&ndash;&gt;-->
<#--                    </li>-->
<#--                </ul>-->
<#--            </div>-->
<#--        </#list>-->
<#--    </#if>-->

<#--</@p.pages>-->
<#import "templ/templ.ftl" as p>
<@p.pages>

    <#if categories??>
        <#list categories as category>
            <div class="container category">
                <ul class="category-list">
                    <li class="category-list__item">
                        <a href="/category/${category.id}">
                            <button class="category-list__button">${category.name}</button>
                        </a>
                    </li>
                </ul>
            </div>
        </#list>
    </#if>

</@p.pages>
