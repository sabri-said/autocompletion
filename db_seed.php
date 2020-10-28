<?php

require_once 'vendor/autoload.php';
require 'class/Database.php';

use Faker\Factory;
use PdoDatabase\Database;

$faker = Factory::create('fr_FR');
$db = new Database('autocompletion');

for ($i = 0; $i < 50; ++$i) {
    $companyName = $faker->unique()->company;
    $insertQry = "INSERT INTO autocompletion.data (name) VALUES ('$companyName')";
//    $db->pdo->query($insertQry);
}
