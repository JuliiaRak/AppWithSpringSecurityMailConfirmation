<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>
    <div class="text-center">
        <div class="mb-1"> <h4> Registration</h4> </div>
        ${message?ifExists}
        <@l.login "/registration" true />
    </div>
</@c.page>