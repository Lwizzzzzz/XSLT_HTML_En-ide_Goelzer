<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:tei="http://www.tei-c.org/ns/1.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="xs tei"
    version="2.0">
    <!-- Exclusion du préfixe tei des résultats pour la sortie HTML -->

    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    <xsl:strip-space elements="*"/>
    <!-- Permet d'éviter les espaces non voulus -->

    <!-- Configuration des sorties dans les règles XSL -->

    <xsl:template match="/">
        <xsl:variable name="witfile">
            <xsl:value-of select="replace(base-uri(.), '.xml', '')"/>
            <!-- récupération du nom et du chemin du fichier courant -->
        </xsl:variable>

        <xsl:variable name="pathVariantes">
            <xsl:value-of select="concat($witfile, 'Variantes', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathLem">
            <xsl:value-of select="concat($witfile, 'lem', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathIndexPers">
            <xsl:value-of select="concat($witfile, 'indexpers', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathIndexPlace">
            <xsl:value-of select="concat($witfile, 'indexplace', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathAccueil">
            <xsl:value-of select="concat($witfile, 'accueil', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathTémoinsListe">
            <xsl:value-of select="concat($witfile, 'witness', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathBiblio">
            <xsl:value-of select="concat($witfile, 'biblio', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathApropos">
            <xsl:value-of select="concat($witfile, 'a_propos', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathEncodingDesc">
            <xsl:value-of select="concat($witfile, 'encoding', '.html')"/>
        </xsl:variable>
        <xsl:variable name="pathSaid">
            <xsl:value-of select="concat($witfile, 'said', '.html')"/>
        </xsl:variable>

        <!-- Page d'accueil -->

        <xsl:result-document href="{$pathAccueil}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="media">
                        <img src="Virgile_img.jpg" class="align-self-start mr-3" alt="..."/>
                        <div class="media-body">
                            <div>
                                <h1/>
                                <h1 class="display-4">Édition scientifique de l'Énéide de
                                    Goelzer</h1>
                                <h1/>
                                <p class="lead">Ce projet vise à présenter l'édition scientifique du
                                    texte de l'<span style="font-style:italic;">Énéide</span> de
                                    Virgile, selon l'interprétation de William Goelzer, en 1921.</p>
                                <hr class="my-4"/>
                                <p>La transformation du document XML d'origine a été effectuée à
                                    l'aide d'une <span style="font-weight:bold;">feuille de style
                                        XSLT</span>.</p>
                            </div>
                            <p style="font-style:italic;">En plus du texte de l'édition de Goelzer,
                                sont présentés ici : <p>
                                    <a class="btn btn-success"
                                        href="TEI_LouiseDutertreVariantes.html">Les variantes
                                        textuelles présentes dans les éditions antérieures et les
                                        manuscrits</a>
                                </p>
                                <p>
                                    <a class="btn btn-primary" href="TEI_LouiseDutertrewitness.html"
                                        >La liste des témoins</a>
                                </p>
                                <p>
                                    <a class="btn btn-info" href="TEI_LouiseDutertrebiblio.html">Les
                                        références bibliographiques de l'éditeur</a>
                                </p>
                                <p>
                                    <a class="btn btn-secondary" href="TEI_LouiseDutertrebiblio.html">Les
                                        discours directs de chaque personnage</a>
                                </p>
                                <p>
                                    <a class="btn btn-dark"
                                        href="TEI_LouiseDutertreindexpers.html">Un index des noms de
                                        personnages</a>
                                </p>
                                <p>
                                    <a class="btn btn-success" href="TEI_LouiseDutertreindexplace.html"
                                        >Un index des noms de lieux</a>
                                </p>
                                <hr class="my-4"/>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <div class="card" style="width: 19rem;">
                                            <img class="card-img-top" src="TEI.png"
                                                alt="Card image cap"/>
                                            <div class="card-body">
                                                <h5 class="card-title">L'encodage du texte</h5>
                                                <p class="card-text">L'historique des révisions.</p>
                                                <a href="TEI_LouiseDutertreencoding.html"
                                                  class="btn btn-warning">&lt;revisionDesc&gt;</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="card" style="width: 19rem;">
                                            <img class="card-img-top" src="Eneide.png"
                                                alt="Card image cap"/>
                                            <div class="card-body">
                                                <h5 class="card-title">Pour aller plus loin</h5>
                                                <p class="card-text">Consulter la version de
                                                  Perseus.</p>
                                                <a
                                                  href="http://www.perseus.tufts.edu/hopper/text?doc=Perseus:text:1999.02.0055"
                                                  class="btn btn-danger">www.perseus.tufts.edu</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="card" style="width: 19rem;">
                                            <img class="card-img-top" src="ENC.jpg"
                                                alt="Card image cap"/>
                                            <div class="card-body">
                                                <h5 class="card-title">À propos</h5>
                                                <p class="card-text">Plus d'informations sur ce
                                                  projet.</p>
                                                <a href="TEI_LouiseDutertrea_propos.html"
                                                  class="btn btn-success">Infos</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <hr class="my-4"/>
                                <div class="media">
                                    <a href="http://www.chartes.psl.eu/"><img src="logo.png"
                                            class="align-self-start mr-3" alt="..."/></a>
                                </div>
                                <pre>
                                    
                                </pre>
                                <div>
                                    <span style="font-style:italic; font-size:15px;">
                                        <p>École Nationale des Chartes</p>
                                        <p>65, rue de Richelieu</p>
                                        <p>75002 Paris</p>
                                        <p>Tél. + 33 (0)1 55 42 75 00</p>
                                    </span>
                                </div>
                            </p>
                        </div>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page à propos -->

        <xsl:result-document href="{$pathApropos}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <div class="media">
                        <img src="Virgile_img.jpg" class="align-self-start mr-3" alt="..."/>
                        <div class="media-body">
                            <h1/>
                            <h2 class="mt-0">Edition scientifique de l'Énéide de Goelzer</h2>
                            <p>Ce projet a été réalisé par Louise Dutertre, étudiante en Master 2
                                Technologies Numériques Appliquées à l'Histoire à l'Ecole Nationale
                                des Chartes (Paris). </p>
                            <p style="font-weight:bold;">Il a été réalisé dans le cadre du module
                                XSLT dont l'enseignement est assuré par <a
                                    href="https://github.com/ArianePinche">Ariane Pinche</a>.</p>
                            <p>Les compétences à acquérir dans le cadre de ce cours étaient les
                                suivantes :</p>
                            <li>Créer une feuille de transformation simple ;</li>
                            <li>Maîtriser Xpath et ses fonctions de base ;</li>
                            <li>Maîtriser les templates de base : apply-templates, copy, copy-of,
                                value-of, variable;</li>
                            <li>Savoir mettre en place des conditions et des boucles : if, for-each,
                                choose;</li>
                            <li>Savoir transformer un document XML vers XML, HTML et LaTeX.</li>
                            <p>
                                <p>Il s'agissait pour ce projet de proposer une transformation XSLT
                                    de son projet XML TEI, pour créer une visualisation de son
                                    travail.</p>
                                <p>Les pré-requis : <li>Mettre en place une structure d’accueil
                                        LaTeX ou HTML ;</li>
                                    <li>Rédiger des règles simples avec un xpath valide pour insérer
                                        des informations du document source dans le document de
                                        sortie ;</li>
                                    <li>Créer une ou des règles avec des conditions ;</li>
                                    <li>Utiliser une ou des règles avec for-each uniquement si cela
                                        est nécessaire ;</li>
                                    <li>Proposer un code facile à lire et commenté ;</li>
                                    <li>Simplifier le plus possible ses règles XSL.</li>
                                </p>
                                <a class="btn btn-dark" href="https://github.com/Lwizzzzzz">Github
                                    de l'auteure</a>
                            </p>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </div>
                    </div>

                </body>
            </html>
        </xsl:result-document>

        <!-- Page de présentation du texte de l'édition de Goelzer -->

        <xsl:result-document href="{$pathLem}" method="html" indent="yes">
            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Texte de l'Enéide de William Goelzer (1921)</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="text"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page de présentation des passages au discours direct pour chaque personnage -->

        <xsl:result-document href="{$pathSaid}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Passages au discours direct de chaque personnage</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="said"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page de l'index des noms de personnages -->

        <xsl:result-document href="{$pathIndexPers}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Index des noms de personnages</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="indexpers"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page de l'index des noms de lieux -->

        <xsl:result-document href="{$pathIndexPlace}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Index des noms de lieux</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="indexplace"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page de présentation des variantes textuelles (indiquées dans l'apparat critique -->

        <xsl:result-document href="{$pathVariantes}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Les variantes textuelles relevées dans <span
                                style="font-style:italic;">l'apparat critique</span></h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="witness_rdg"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page de présentation des témoins et des sigles qui leurs sont associés -->

        <xsl:result-document href="{$pathTémoinsListe}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Liste des témoins</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="witness_liste"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page présentant les références bibliographiques citées par l'auteur dans l'apparat critique -->

        <xsl:result-document href="{$pathBiblio}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Les références bibliographiques de William
                            Goelzer</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="biblio"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

        <!-- Page présentant l'historique des modifications de l'encodage du texte en XML TEI -->

        <xsl:result-document href="{$pathEncodingDesc}" method="html" indent="yes">

            <html>
                <head>
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
                    <link rel="stylesheet"
                        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
                        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
                        crossorigin="anonymous"/>
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"/>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"/>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"/>
                    <title>
                        <xsl:value-of select="//titleStmt/title"/>
                    </title>
                </head>
                <body>
                    <nav class="navbar navbar-expand-md navbar-light justify-content-between"
                        style="background-color: #f97d37; font-variant:small-caps; font-weight:bold;">
                        <a class="navbar-brand" href="TEI_LouiseDutertreaccueil.html">Accueil</a>
                        <ul class="navbar-nav mr-auto">
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrelem.html">L'Enéide par
                                    Goelzer (1961)</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreVariantes.html"
                                    >Variantes textuelles</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrewitness.html">Liste des
                                    témoins</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrebiblio.html">Références
                                    bibliographiques</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertresaid.html">Discours</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
                                    role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false"> Index </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="TEI_LouiseDutertreindexpers.html"
                                        >Personnages</a>
                                    <a class="dropdown-item"
                                        href="TEI_LouiseDutertreindexplace.html">Lieux</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertreencoding.html"
                                    >Historique</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="TEI_LouiseDutertrea_propos.html">À propos
                                    du projet</a>
                            </li>
                        </ul>
                    </nav>
                    <h1/>
                    <ul>
                        <h1 class="display-6">Historique des modifications de l'encodage en XML
                            TEI</h1>
                        <div class="col-6">
                            <hr class="my-4"/>
                        </div>
                    </ul>
                    <div>
                        <ul>
                            <xsl:call-template name="encoding"/>
                            <h1/>
                            <p>
                                <a class="btn btn-warning" href="TEI_LouiseDutertreaccueil.html"
                                    >Retour à l'accueil</a>
                            </p>
                        </ul>
                    </div>
                </body>
            </html>
        </xsl:result-document>

    </xsl:template>


    <!-- Les règles ci-dessous sont appelées dans les documents de sortie 
        configurés ci-dessus au moyen d'un call-template-->


    <!-- Règle de présentation du texte -->

    <xsl:template name="text">
        <xsl:for-each select="TEI//body//l">
            <ul>
                <xsl:value-of
                    select="
                        text() |
                        said/text() |
                        said/persName/text() |
                        persName/text() |
                        app/persName/text() |
                        app/lem/persName/text() |
                        lem/text() |
                        said/app/persName/text() |
                        said/app/lem/persName/text() |
                        said/lem/text() |
                        del/text() |
                        app/lem/text()"
                />
            </ul>
        </xsl:for-each>
    </xsl:template>

    <!-- Règles pour les témoins -->

    <!-- Liste des témoins -->

    <xsl:template name="witness_liste">
        <xsl:for-each select="//listWit/witness/@xml:id">
            <ul>
                <span style="font-weight:bold; font-size:18px;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:text> : </xsl:text>
                <xsl:value-of
                    select="
                        ancestor::witness/text()
                        | ancestor::witness/date/text()"/>
                <xsl:text>.</xsl:text>
                <p style="font-style:italic;">
                    <xsl:value-of select="ancestor::witness/note/text()"/>
                </p>
            </ul>
        </xsl:for-each>
    </xsl:template>

    <!-- Variations textuelles -->

    <!-- Malgré de nombreux essais, je ne suis pas parvenue à générer 
                    l'affichage de l'ensemble des variations textuelles.
                En cause : avec ce code, seul le premier '#' du @wit est pris en compte.
                Il faudrait trouver comment sélectionner toutes les valeurs de l'attribut,
                peut-être au moyen d'un xsl:if imbriqué dans un xsl:for-each. -->

    <xsl:template name="witness_rdg">
        <xsl:for-each select="//listWit/witness/@xml:id">
            <ul>
                <xsl:text> || </xsl:text>
                <span style="font-weight:bold; font-size:18px;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:variable name="idwitness2">
                    <xsl:value-of select="parent::witness/@xml:id"/>
                </xsl:variable>
                <xsl:text> || </xsl:text>
                <xsl:for-each
                    select="ancestor::TEI//body//rdg[replace(@wit, '#', '') = $idwitness2]">
                    <xsl:value-of select="text()"/>
                    <xsl:text> (v.</xsl:text>
                    <xsl:value-of
                        select="
                            parent::app/parent::l/@n
                            | parent::said/parent::l/@n
                            | parent::app/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::l/@n"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>

                <!-- Tests pour faire fonctionner correctement la boucle -->

                <!-- <xsl:if test="ancestor::TEI//body//rdg/@wit='#PERSEUS'">
                    <xsl:for-each select="ancestor::TEI//body//rdg[replace(@wit, '#', '') = $idwitness2]">
                        <xsl:value-of select="text()"/>
                        <xsl:text> (v.</xsl:text>
                        <xsl:value-of
                            select="parent::app/parent::l/@n
                            | parent::said/parent::l/@n
                            | parent::app/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::l/@n"/>
                        <xsl:text>)</xsl:text>
                        <xsl:if test="position() != last()">, </xsl:if>
                        <xsl:if test="position() = last()">.</xsl:if>
                    </xsl:for-each>
                </xsl:if>
                <xsl:if test="ancestor::TEI//body//rdg/@wit='#M2 #γ2 #b1 #π'">
                    <xsl:for-each select="ancestor::TEI//body//rdg[replace(@wit, '#', '') = $idwitness2]">
                        <xsl:value-of select="text()"/>
                        <xsl:text> (v.</xsl:text>
                        <xsl:value-of
                            select="parent::app/parent::l/@n
                            | parent::said/parent::l/@n
                            | parent::app/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::said/parent::l/@n
                            | parent::app/parent::persName/parent::l/@n"/>
                        <xsl:text>)</xsl:text>
                        <xsl:if test="position() != last()">, </xsl:if>
                        <xsl:if test="position() = last()">.</xsl:if>
                    </xsl:for-each> 
                </xsl:if> -->

            </ul>
        </xsl:for-each>
    </xsl:template>

    <!-- Règle pour afficher les passages au discours direct de chaque personnage -->

    <xsl:template name="said">
        <xsl:for-each select="//listPerson//persName">
            <ul>
                <a class="btn btn-success">
                    <span style="font-weight:bold; font-size:20px; font-style:italic;">
                        <xsl:value-of select="parent::person/@xml:id"/>
                    </span>
                </a>
                <xsl:variable name="idPersonsaid">
                    <xsl:value-of select="parent::person/@xml:id"/>
                </xsl:variable>
                <hr class="my-2"/>
                <xsl:for-each
                    select="ancestor::TEI//body//said[replace(@who, '#', '') = $idPersonsaid]">
                    <ul>
                        <xsl:value-of
                            select="
                                text()
                                | app/text()
                                | app/lem/text()
                                | app/lem/persName/text()
                                | app/persName/text()
                                | app/persName/lem/text()
                                | persName/text()
                                "/>
                        <span style="font-style:italic; font-size:10px;">
                            <xsl:text> (v.</xsl:text>
                            <xsl:value-of select="parent::l/@n"/>
                            <xsl:text>)</xsl:text>
                        </span>
                    </ul>
                </xsl:for-each>
                <der> </der>
                <hr class="my-2"/>
            </ul>
        </xsl:for-each>
    </xsl:template>

    <!-- Règle pour l'affichage de la bibliographie de l'éditeur -->

    <xsl:template name="biblio">
        <xsl:for-each select="//listBibl/bibl/@xml:id">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:text> : </xsl:text>
                <span style="font-style:italic;">
                    <xsl:value-of select="ancestor::bibl/title/text()"/>
                </span>
                <xsl:text>, </xsl:text>
                <xsl:for-each select="ancestor::bibl/author">
                    <xsl:value-of select="text()"/>
                    <xsl:text>, </xsl:text>
                </xsl:for-each>
                <xsl:value-of select="ancestor::bibl/publisher/text()"/>
                <xsl:text>, </xsl:text>
                <span style="font-style:italic;">
                    <xsl:value-of select="ancestor::bibl/date/text()"/>
                </span>
                <xsl:text>.</xsl:text>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!-- Règle pour l'index des noms des personnages -->

    <xsl:template name="indexpers">
        <xsl:for-each select="//listPerson//persName">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="parent::person/@xml:id"/>
                </span>
                <xsl:variable name="idPerson">
                    <xsl:value-of select="parent::person/@xml:id"/>
                </xsl:variable>
                <xsl:text> : </xsl:text>
                <xsl:for-each
                    select="ancestor::TEI//body//persName[replace(@ref, '#', '') = $idPerson]">
                    <xsl:value-of
                        select="
                            text()
                            | app/lem/text()
                            | app/rdg/text()"/>
                    <xsl:text> (v.</xsl:text>
                    <xsl:value-of
                        select="
                            parent::l/@n
                            | parent::said/parent::l/@n
                            | parent::persName/parent::said/parent::l/@n"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!-- Règle pour l'index des noms de lieux -->

    <xsl:template name="indexplace">
        <xsl:for-each select="//listPlace//placeName">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:variable name="idPlace">
                    <xsl:value-of select="parent::place/@xml:id"/>
                </xsl:variable>
                <xsl:text> : </xsl:text>
                <xsl:for-each
                    select="ancestor::TEI//body//placeName[replace(@ref, '#', '') = $idPlace]">
                    <xsl:value-of select="text()"/>
                    <xsl:text> (v.</xsl:text>
                    <xsl:value-of
                        select="
                            parent::l/@n
                            | parent::said/parent::l/@n
                            | parent::lem/parent::app/parent::said/parent::l/@n"/>
                    <xsl:text>)</xsl:text>
                    <xsl:if test="position() != last()">, </xsl:if>
                    <xsl:if test="position() = last()">.</xsl:if>
                </xsl:for-each>
            </li>
        </xsl:for-each>
    </xsl:template>

    <!-- Règle pour l'affichage de l'historique des révisions -->

    <xsl:template name="encoding">
        <xsl:for-each select="//revisionDesc/change/@who">
            <li>
                <span style="font-weight:bold;">
                    <xsl:value-of select="."/>
                </span>
                <xsl:text> : </xsl:text>
                <xsl:value-of select="ancestor::change/text()"/>
                <xsl:text>, </xsl:text>
                <xsl:value-of select="ancestor::change/@when"/>
                <xsl:text>.</xsl:text>
            </li>
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>
