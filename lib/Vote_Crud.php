<?php

namespace lib;

use PDO;
use PDOException;

/**
 *
 */
class Vote_Crud
{
    private PDO $db;

    /**
     * Instance une nouvelle instance de la classe User Crud
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
     * Permet d'obtenir le total des votes d'une Image dans la table images
     * @param Images $uneImages
     * @return int
     */
    public function totalVote(Images $uneImages): int
    {
        $get = $this->db->prepare("SELECT COUNT(id_vote) FROM vote
        INNER JOIN images ON images.id_image = vote.id_image
        WHERE nom_image = :nomImage");
        $get->bindValue(':nomImage', $uneImages->getNomImage(),PDO::PARAM_STR);
        $get->execute();
        $retour = 0;
        if ($get->fetch(PDO::FETCH_ASSOC)) {
            $retour = $get->fetch(PDO::FETCH_ASSOC);
        }
        return $retour;
    }

    /**
     * Permet d'ajouter un vote à une image dans la table vote
     * @param Images $uneImages
     * @param User $user
     * @return bool
     */
    public function addVote(Images $uneImages, User $user): bool
    {
        $get = $this->db->prepare("INSERT INTO vote
        (id_user, id_image) VALUES (:unUserId, :uneImageId)");
        $get->bindValue(':unUserId', $user->getId(),PDO::PARAM_INT);
        $get->bindValue(':uneImageId', $uneImages->getId(),PDO::PARAM_INT);
        try {
            $get->execute();
            $retour = true;
        }
        catch(PDOException $e) {
            $retour = false;
        }
        return $retour;
    }
}