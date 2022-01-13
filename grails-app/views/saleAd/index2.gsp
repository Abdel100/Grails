<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
    <title>Liste des annonces</title>
</head>
<body>
<a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}">Accueil</a></li>
        <li><g:link class="create" action="create">Nouvelle Annonce</g:link></li>
    </ul>
</div>
<div id="list-saleAd" class="content scaffold-list" role="main">
    <h1>Mes annonces</h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="property-list saleAd">
        <thead>
        <tr>
            <th class="sortable"><a href="/saleAd/index2/${saleAdList.get(0).author.username}?sort=title&amp;max=10&amp;order=asc">Titre</a></th>
            <th class="sortable"><a href="/saleAd/index2/${saleAdList.get(0).author.username}?sort=price&amp;order=asc">Prix</a></th>
            <th id="illustration-label" class="property-label">Illustration</th>
            <th id="modifier-label" class="property-label">Modifier</th>
            <th id="supprimer-label" class="property-label">Supprimer</th>

        </tr>
        </thead>
        <tbody>
        <g:each var="saleAd" in="${saleAdList}">
            <tr>
                <td style="font-weight: bold !important; text-align:center !important;">
                    <g:link controller="saleAd" action="show" id="${saleAd.id}">
                        ${saleAd.title}
                    </g:link>
                </td>
                %{--                    <td>${saleAd.description}</td>--}%
                %{--                    <td>${saleAd.ref}</td>--}%
                <td style="text-align:center !important;">${saleAd.price}</td>

                <td style="text-align: center !important;">
                    <g:each in="${saleAd.illustrations}" var="illustration">
                        <img src="${grailsApplication.config.assets.url+illustration.filename}" height="50px"/>
                    </g:each>
                </td>

                <td ><g:link class="btn  btn-warning" resource="${saleAd}" action="edit">Modifier</g:link></td>
                %{--                    <td><g:link resource="${saleAd}" action="delete">Supprimer</g:link></td>--}%
                %{--                    <g:link class="btn btn-warning" action="edit"--}%
                %{--                            resource="${this.saleAd}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%

                <td>
                    <g:form resource="${saleAd}" method="DELETE">
                        <input class="btn  btn-danger" type="submit"
                               value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                               onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                    </g:form>
                </td>
                %{--                    <td style="text-align:center !important;">--}%
                %{--                        <g:link controller="user" action="show" id="${saleAd.author.id}">--}%
                %{--                            ${saleAd.author.username}--}%
                %{--                        </g:link>--}%
                %{--                    </td>--}%
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${saleAdCount ?: 0}" />
    </div>
</div>
</body>
</html>
