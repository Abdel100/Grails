<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'saleAd.label', default: 'SaleAd')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-saleAd" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><a class="home" href="${createLink(uri: '/')}">Accueil</a></li>
                    <li><g:link class="create" action="create">Nouvelle Annonce</g:link></li>
                </ul>
            </div>
        <div id="show-saleAd" class="content scaffold-show" role="main">
            <h1>Liste des annonces</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

            <ol class="property-list saleAd">

                <li class="fieldcontain">
                    <span id="title-label" class="property-label">Titre</span>
                    <div class="property-value" aria-labelledby="title-label">
                        ${saleAd.title}
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="description-label" class="property-label">Description</span>
                    <div class="property-value" aria-labelledby="description-label">
                        ${saleAd.description}
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="price-label" class="property-label">Prix</span>
                    <div class="property-value" aria-labelledby="price-label">
                        ${saleAd.price}
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="ref-label" class="property-label">Ref</span>
                    <div class="property-value" aria-labelledby="ref-label">
                        ${saleAd.ref}
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="status-label" class="property-label">Status</span>
                    <div class="property-value" aria-labelledby="status-label">
                        ${saleAd.status}
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="illustrations-label" class="property-label">Illustrations</span>
                    <div class="property-value" aria-labelledby="illustrations-label">
                        <ul>
                            <g:each in="${saleAd.illustrations}" var="illustration">
                                <li>
                                    <img src="${grailsApplication.config.assets.url+illustration.filename}" alt="illustration"/>
                                </li>
                            </g:each>
                        </ul>
                    </div>
                </li>

                <li class="fieldcontain">
                    <span id="author-label" class="property-label">Auteur</span>
                    <div class="property-value" aria-labelledby="author-label">
                        <g:link controller="user" action="show" id="${saleAd.author.id}">${saleAd.author.username}</g:link>
                    </div>
                </li>

            </ol>
            <g:form resource="${this.saleAd}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.saleAd}">Modifier</g:link>
                    <g:link class="delete" type="submit" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');">Supprimer</g:link>
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
