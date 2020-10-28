<?php

namespace PdoDatabase;

use PDO;
use PDOException;

class Database
{
    public string $dbdriver = 'mysql';
    public string $dbhost = 'localhost';
    public ?string $dbname = null;
    public string $dbuser = 'root';
    public string $dbpass = '';
    public string $dbcharset = 'utf8mb4';
    public PDO $pdo;

    public function __construct(string $dbname)
    {
        $driver = $this->dbdriver;
        $host = $this->dbhost;
        $this->dbname = $dbname;
        $charset = $this->dbcharset;
        $user = $this->dbuser;
        $password = $this->dbpass;

        $dsn = "$driver:host=$host;dbname=$dbname;charset=$charset;";

        try {
            $this->pdo = new PDO($dsn, $user, $password);
//            return $this->pdo;
        } catch (PDOException $e) {
            throw new PDOException($e->getMessage(), (int)$e->getCode());
        }
    }
}
