<#import "templ/templ.ftl" as p>
<@p.pages>

    <h2 class="text-center"> Auth </h2>

    <form id="loginForm" method="post">
        <#if error??>
            <div class="alert alert-danger">${error}</div>
        </#if>

        <label for="username">Username</label><br>
        <input type="text" name="username" id="username" placeholder="user"><br>

        <label for="password">Password</label><br>
        <input type="password" name="password" id="password" placeholder="user"><br>

        <button class="btn btn-success" type="submit">Add</button>
    </form>

    <a href="/registration"> Перехід на сторінку реєстрації</a>

    <script>
        document.getElementById("loginForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Зупиняємо стандартну подію відправки форми
            var form = this;
            fetch(form.action, {
                method: form.method,
                body: new FormData(form)
            })
                .then(function(response) {
                    if (response.ok) {
                        window.location.href = '/user'; // Перенаправляємо користувача на "/user" після успішної аутентифікації
                    } else {
                        console.error('Error during login');
                    }
                })
                .catch(function(error) {
                    console.error('Error during login:', error);
                });
        });
    </script>

</@p.pages>
