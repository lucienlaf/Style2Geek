<?php
namespace lib;

/**
 *
 */
class User
{
    private int $id;
    private string $identifiant;
    private string $motPasse;

    /**
     * Instancie une nouvelle instance de la classe User
     * @param int $id
     * @param string $identifiant
     * @param string $motPasse
     */
    public function __construct(
        int $id = 0,
        string $identifiant = '',
        string $motPasse = '',
    ) {
        $this->id = $id;
        $this->identifiant = $identifiant;
        $this->motPasse = $motPasse;
    }

    /**
     * Retourne la valeur de l'id de l'utilisateur
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * Retourne la valuer de l'identifiant de l'utilisateur
     * @return string
     */
    public function getIdentifiant(): string
    {
        return $this->identifiant;
    }

    /**
     * Retourne la valuer du mot de passe de l'utilisateur
     * @return string
     */
    public function getMotPasse(): string
    {
        return $this->motPasse;
    }

    /**
     * Définit la valeur du mot de passe de l'utilisateur
     * @param string $motPasse
     */
    public function setMotPasse(string $motPasse): void
    {
        $this->motPasse = $motPasse;
    }

    /**
     * Définit la valeur de l'identifiant de l'utilisateur
     * @param string $identifiant
     */
    public function setIdentifiant(string $identifiant): void
    {
        $this->identifiant = $identifiant;
    }

    /**
     * Retourne l'id et l'identifiant sous forme de tableau
     * @return array
     */
    public function toArray(): array {
        return [
            'id' => $this->id,
            'login' => $this->identifiant
        ];
    }



}