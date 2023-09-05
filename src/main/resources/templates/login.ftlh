<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

        <h2> Login </h2>
            ${message?ifExists}
        <@l.login "/login" false />

</@c.page>