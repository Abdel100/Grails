<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}"/>
    <title>Liste des utilisateurs</title>
</head>

<body>
<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">Accueil</a></li>
        <li><g:link class="create" action="create">Nouvel utilisateur</g:link></li>
    </ul>
</div>

<div id="list-user" class="content scaffold-list" role="main">
    <h1>Liste des utilisateurs</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <table class="property-list user">
        <thead class="thead-dark">
        <tr>
            <th style="text-align:center !important;" class="sortable"><a href="/user/index?sort=username&amp;max=10&amp;order=asc">Nom d'utilisateur</a></th>
%{--            <th style="text-align:center !important;" id="illustration-label" class="property-label">Illustration</th>--}%
            <th style="text-align:center !important;" id="modifier-label" class="property-label">Modifier</th>
            <th style="text-align:center !important;" id="supprimer-label" class="property-label">Supprimer</th>
        </tr>
        </thead>
        <tbody>
        <g:each var="user" in="${userList}">
            <tr>
                <td style="font-weight: bold !important; text-align:center !important;">
                    <g:link controller="user" action="show" id="${user.id}">
                        ${user.username}
                    </g:link>
                </td>

                %{--                        <td style="text-align: center !important;">--}%
                %{--                            <g:each in="${user.illustrations}" var="illustration">--}%
                %{--                                <img src="${grailsApplication.config.assets.url+illustration.filename}" height="100px"/>--}%
                %{--                            </g:each>--}%
                %{--                        </td>--}%

                <td style="text-align:center !important;"><g:link class="btn  btn-warning" resource="${user}" action="edit">Modifier</g:link></td>
                <td style="text-align:center !important;">
                    <g:form resource="${user}" method="DELETE">
                        <input class="btn  btn-danger" type="submit"
                               value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </g:form>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${userCount ?: 0}"/>
    </div>
</div>
</body>
</html>
