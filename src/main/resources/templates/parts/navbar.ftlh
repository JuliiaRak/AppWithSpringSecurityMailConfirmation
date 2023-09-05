<#include "security.ftlh">
<#import "login.ftlh" as l>

<style>
    .navbar {
        background-color: cadetblue;
    }
    .navbar .navbar-text {
        font-size: 25px;
    }
    .navbar .nav-item {
        font-size: 18px;
    }

    input, label {
        display:block;
    }

</style>

<nav class="navbar navbar-expand-lg">
    <a class="navbar-text ml-10">AuthorizationApp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link ml-5" href="/">Home</a>
            </li>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link ml-5" href="/user">User list</a>
                </li>
            </#if>
        </ul>



        <div class="nav-item mr-3">${name}</div>
        <@l.logout />
    </div>
</nav>
