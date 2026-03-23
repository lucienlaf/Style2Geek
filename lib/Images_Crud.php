<?php

namespace lib;

use PDO;
use PDOException;

/**
 *
 */
class images_Crud
{
    private PDO $db;

    /**
     * Instancie une nouvelle instance de la classe Images Crud
     * @param PDO $Connexion
     */
    function __construct(PDO $Connexion)
    {
        $this->db = $Connexion;
    }

    /**
     * Permet de se déconnecter de la base de données
     * @return void
     */
    public function deconnexion(): void
    {
        $this->db = null;
    }

    /**
     * Retourne toutes les images de la table images
     * @return array|false
     */
    public function getAllImage(): array
    {
        $images = $this->db->prepare("SELECT nom_image, id_image, nb_vote_image
        FROM images");
        try {
            $images->execute();
            $results = $images->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e) {
            $results = false;
        }
        return $results;
    }

    /**
     * Retourne les images des t-shirt dans la table images_teeshirt
     * @param images $uneImage
     * @return array|false
     */
    public function getImageTshirt(images $uneImage): array
    {
        $images = $this->db->prepare("SELECT nom
        FROM images_teeshirt
        INNER JOIN images ON images.id_image = images_teeshirt.id
        WHERE images_teeshirt.id = :id");
        $images->bindValue(':id', $uneImage->getId() ,PDO::PARAM_STR);
        try {
            $images->execute();
            $results = $images->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e) {
            $results = false;
        }
        return $results;
    }

    /**
     * Retourne une image de la table images
     * @param images $uneImage
     * @return array|false
     */
    public function getImage(images $uneImage): array
    {
        $images = $this->db->prepare("SELECT nom_image
        FROM images
        WHERE id_image = :id");
        $images->bindValue(':id', $uneImage->getId() ,PDO::PARAM_STR);
        try {
            $images->execute();
            $results = $images->fetchAll(PDO::FETCH_ASSOC);
        }
        catch(PDOException $e) {
            $results = false;
        }
        return $results;
    }
}