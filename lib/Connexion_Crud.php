<?php
namespace lib;
include_once __DIR__ . '/../connexion.php';
use Exception;
use PDO;
use PDOException;


/**
 *Connexion_Crud est une classe
 *qui permet de gérer la connexion à la base de données.
 *Elle prend ses paramètres dans le fichier qui contient les constantes
 */
class Connexion_Crud
{
    private string $serveur;
    private string $user;
    private string $pwd;
    private string $bdd;

    /**
     * Initialise une nouvelle instance de la classe connexion
     */
    public function __construct()
    {
        $this->serveur = SERVEUR;
        $this->user = USER;
        $this->pwd = PWD;
        $this->bdd = BDD;
    }

    /**
     * setConnexion permet de se connecter à la bdd
     * @return PDO|Exception
     */
    public function seConnecter(): PDO|Exception
    {
        try {
            $connexion = new PDO('mysql:host=' . $this->serveur
                . ';dbname=' . $this->bdd,
                $this->user,
                $this->pwd);
            // $connexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $connexionOk = $connexion;
        } catch (PDOException $e) {
            $connexionOk = $e;
        }
        catch (Exception $e)
        {
            $connexionOk = $e;
        }
        return $connexionOk;
    }
}