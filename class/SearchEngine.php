<?php

use PdoDatabase\Database;

class SearchEngine
{
    private Database $db;
    private $lastSearch;
    private $searchId;

    public function __construct($db)
    {
        $this->db = $db;
    }

    /**
     * @param string $keyword
     * @return array
     */
    public function likeSearch(string $keyword): array
    {
        $this->setLastSearch($keyword);

        $searchQry = "SELECT * FROM data WHERE name LIKE ?";
        $searchQryPrep = $this->getDb()->pdo->prepare($searchQry);
        $searchQryPrep->execute(['%' . $keyword . '%']);
        return $searchQryPrep->fetchAll(PDO::FETCH_OBJ);
    }

    /**
     * @return Database
     */
    public function getDb(): Database
    {
        return $this->db;
    }

    /**
     * @param int $id
     * @return array
     */
    public function idSearch(int $id): array
    {
        $this->setSearchId($id);

        $searchQry = "SELECT * FROM data WHERE id = ?";
        $searchQryPrep = $this->getDb()->pdo->prepare($searchQry);
        $searchQryPrep->execute([$id]);
        return $searchQryPrep->fetchAll(PDO::FETCH_OBJ);
    }

    /**
     * @return mixed
     */
    public function getLastSearch()
    {
        return $this->lastSearch;
    }

    /**
     * @param mixed $lastSearch
     */
    public function setLastSearch($lastSearch): void
    {
        $this->lastSearch = $lastSearch;
    }

    /**
     * @return mixed
     */
    public function getSearchId()
    {
        return $this->searchId;
    }

    /**
     * @param mixed $searchId
     */
    public function setSearchId($searchId): void
    {
        $this->searchId = $searchId;
    }
}
