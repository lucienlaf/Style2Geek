<?php

namespace lib;

use PDO;
use PDOException;

/**
 *
 */
class User_Crud
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
     * Retourne true ou false en fonction de si l'utilisateur
     * à le bon MDP et identifiant
     * @param user $unUser
     * @return bool
     */
    public function userIsValide(user $unUser): bool
    {
        $get = $this->db->prepare("SELECT identifiant, mdp FROM user
        WHERE identifiant = :unIdentifiant");
        $get->bindValue(':unIdentifiant', $unUser->getIdentifiant(),PDO::PARAM_STR);
        $get->execute();
        $retour = false;
        $result = $get->fetch(PDO::FETCH_ASSOC);
        if ($result && password_verify($unUser->getMotPasse(), $result['mdp'])) {
            $retour = true;
        }
        return $retour;
    }

    /**
     * Retourne true ou false en fonction de si l'utilisateur
     * existe dans la base de données
     * @param user $unUser
     * @return bool
     */
    public function userExist(user $unUser): bool
    {
        $get = $this->db->prepare("SELECT identifiant FROM user
        WHERE identifiant = :unIdentifiant");
        $get->bindValue(':unIdentifiant', $unUser->getIdentifiant(),PDO::PARAM_STR);
        $retour = false;
        $get->execute();
        if ($get->fetchAll(PDO::FETCH_ASSOC)) {
            $retour = true;
        }
        return $retour;
    }

    /**
     * Retourne true ou false si la création de l'utilisateur c'est bien faite
     * @param user $unUser
     * @return bool
     */
    public function createUser(user $unUser): bool
    {
        $insert = $this->db->prepare("INSERT INTO user
        (identifiant, mdp) 
         VALUES (:identifiant, :mdp)");

        $mdp = password_hash($unUser->getMotPasse(), PASSWORD_DEFAULT);
        $insert->bindValue(':identifiant', $unUser->getIdentifiant(), PDO::PARAM_STR);
        $insert->bindValue(':mdp', $mdp,PDO::PARAM_STR);
        try {
            $insert->execute();
            $retour = true;
        }
        catch(PDOException $e) {
            $retour = false;
        }
        return $retour;
    }

    /**
     * Retourne un utilisateur en fonction d'un identifiant et d'un mot de passe
     * @param string $identifiant
     * @param string $motPasse
     * @return User|null
     */
    public function getUser(string $unIdentifiant, string $unMotPasse): ?User {
        $get = $this->db->prepare("SELECT id, identifiant, mdp 
        FROM user 
        WHERE identifiant = :identifiant");
        $get->bindValue(':identifiant', $unIdentifiant, PDO::PARAM_STR);
        $get->execute();

        $row = $get->fetch(PDO::FETCH_ASSOC);
        if ($row && password_verify($unMotPasse, $row['mdp'])) {
            return new User($row['id'], $row['identifiant'], $row['mdp']);
        }

        return null;
    }

}