<?php

session_start();

use PdoDatabase\Database;

require 'class/Database.php';
require 'class/SearchEngine.php';
require 'vendor/autoload.php';

$db = new Database('autocompletion');
$searchEngine = new SearchEngine($db);
if (!empty($_GET['search-bar'])) {
    $searchGet = $_GET['search-bar'];
    $searchResult = $searchEngine->likeSearch($searchGet);
    echo json_encode($searchResult);
}
