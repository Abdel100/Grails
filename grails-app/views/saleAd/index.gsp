<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div id="list-saleAd" class="content scaffold-list" role="main">

    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="container-fluid">
        <h1 style="font-weight: bold !important; margin-top: 2rem !important; ">Toutes les Annonces</h1>
        <table class="property-list saleAd">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="title" title="Titre" style="text-align:center !important;"/>
                %{--                <g:sortableColumn property="description" title="Description" />--}%
                %{--                <g:sortableColumn property="ref" title="Référence Longue" />--}%
                <g:sortableColumn property="price" title="Prix" style="text-align:center !important;"/>

                <th style="text-align:center !important;" id="illustration-label"
                    class="property-label">Illustration</th>
                %{--                <g:sortableColumn property="author" title="Auteur" style="text-align:center !important;" />--}%
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

                    <td style="text-align:center !important;">${saleAd.price}</td>

                    <td style="text-align: center !important;">
                        <g:each in="${saleAd.illustrations}" var="illustration">
                            <img src="${grailsApplication.config.assets.url+illustration.filename}" height="50px"/>
                        </g:each>
                    </td>

                    <td ><g:link class="btn btn-primary" resource="${saleAd}" action="edit">Modifier</g:link></td>

                    <td>
                        <g:form resource="${saleAd}" method="DELETE">
                            <input class="btn btn-danger" type="submit"
                                   value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                                   onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
                        </g:form>
                    </td>

                </tr>
            </g:each>
            </tbody>
        </table>
        <br>

    </div>



    <div style="border-bottom-color: #761c19" class="pagination">
        <g:paginate total="${saleAdCount ?: 0}"/>
    </div>
</div>
</body>
</html>


