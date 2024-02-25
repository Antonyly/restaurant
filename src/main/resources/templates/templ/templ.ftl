<#macro pages>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restaurant</title>
    <link rel="stylesheet" href="../../static/css/main.css">
</head>

<body>

    <header class="header">
        <#include "header.ftl">
        <#include "mobileMenu.ftl">
    </header>



    <div>
        <#nested >
    </div>
    <footer class="footer">
        <#include "footer.ftl">
    </footer>
</body>
</html>
</#macro>