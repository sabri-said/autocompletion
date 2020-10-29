<?php

session_start();

use PdoDatabase\Database;

require 'class/Database.php';
require 'class/SearchEngine.php';
require 'vendor/autoload.php';

$db = new Database('autocompletion');
$searchEngine = new SearchEngine($db);

if (!isset($_GET['search']) || $_GET['search'] == '') {
    header('Location: index.php');
}
?>

<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
          integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <title>Resultat</title>
</head>
<body>
<header>
    <nav class="navbar navbar-light bg-light">
        <form class="form-inline" method="GET" id="searchEngineForm">
            <input class="form-control mr-sm-2" id="searchBar" name="search-bar" type="text" placeholder="Rechercher"
                   aria-label="Search">
        </form>
    </nav>
    <div class="row position-relative" id="rowResultList">
        <div class="col-2 position-absolute">
            <ul class="list-group" id="listGroupResult">
            </ul>
        </div>
    </div>
</header>
<main class="bg-dark">
    <div class="container min-vh-100">
        <div class="row justify-content-center" id="rowResultList">
            <div class="col-9 my-5">
                <ul class="list-group">
                    <?php
                    $searchResults = $searchEngine->likeSearch($_GET['search']); ?>
                    <?php
                    foreach ($searchResults as $searchResult) :?>
                        <li class="list-group-item">
                            <a href="element.php?id=<?= $searchResult->id; ?>">
                                <?= $searchResult->name; ?>
                            </a>
                        </li>
                    <?php
                    endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
</main>
<script src="js/search_engine.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
        crossorigin="anonymous"></script>
</body>
</html>
