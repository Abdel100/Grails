<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<header>
    %{--    <div class="navbar">--}%
    %{--        <a class="active" href="#"><i class="fa fa-fw fa-home"></i> Home</a>--}%
    %{--        <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>--}%
    %{--        <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>--}%
    %{--        <a href="#"><i class="fa fa-fw fa-user"></i> Login</a>--}%
    %{--    </div>--}%

    <div class="navbar" role="navigation">
        <div class="container">

            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a style="padding-left: 6cm" class="navbar-brand" href="/#">
                <asset:image src="logo.png" alt="Lecoincoin Logo"/>
            </a>
            <div style="padding-left: 22cm">

                <sec:ifLoggedIn>
                    <g:link controller="logout">Déconnexion</g:link>
                </sec:ifLoggedIn>
                <sec:ifNotLoggedIn>
                    <g:link controller="login">Connexion</g:link>
                </sec:ifNotLoggedIn>
            </div>
            <div >

                    <sec:ifLoggedIn>
                        <a href="#" > <sec:username/></a>
                    </sec:ifLoggedIn>



            </div>
%{--            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">--}%
%{--                <ul class="nav navbar-nav navbar-right">--}%
%{--                    <g:pageProperty name="page.nav"/>--}%
%{--                </ul>--}%
%{--            </div>--}%

        </div>
    </div>
</header>


<div class="container-fluid">

    <div class="row">
        <nav class="col-sm-3 col-md-2 d-none d-sm-block bg-light sidebar">
            <ul class="nav navbar-nav">
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Utilisateurs
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"></a><g:link controller="user">Visualiser</g:link></li>
                        <li><a href="#"></a><g:link controller="user" class="create" action="create">Ajouter</g:link>
                        </li>
                    </ul>
                </li>
                <br>
                <br>
                <li>
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">
                        Annonces
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#"></a><g:link controller="saleAd">Visualiser</g:link></li>
                        <li><a href="#"></a><g:link controller="saleAd" class="create" action="create">Ajouter</g:link>
                        </li>
                    </ul>
                </li>
                <br>
                <li>
                    <a href="${createLink(uri: '/saleAd/ref/index?')}">
                        Mes annonces
                    </a>
                </li>
            </ul>
        </nav>
%{--        <UIHelper:leftNavigation/>--}%

        <main role="main" class="col-sm-9 ml-sm-auto col-md-10 pt-3">
            <g:layoutBody/>
        </main>
    </div>
</div>

<asset:javascript src="application.js"/>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

</body>
</html>
