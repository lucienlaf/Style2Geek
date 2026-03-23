<?php

namespace lib;

/**
 * Images est une classe contenant une image avec un id
 * un nom, le designer et le nb de vote
 */
class Images
{
    private int $id;
    private string $nomImage;
    private int $designerImage;
    private int $nbVote;

    /**
     * Initialise une nouvelle instance de la classe Images
     * @param int $id
     */
    public function __construct(int $id)
    {
        $this->id = $id;
    }

    /**
     * Retourne la valeur du nb de vote
     * @return int
     */
    public function getNbVote(): int
    {
        return $this->nbVote;
    }

    /**
     * Définit la valeur du nb de vote
     * @param int $nbVote
     * @return void
     */
    public function setNbVote(int $nbVote): void
    {
        $this->nbVote = $nbVote;
    }

    /**
     * Retourne la valeur du designer de l'image
     * @return int
     */
    public function getDesignerImage(): int
    {
        return $this->designerImage;
    }

    /**
     * Définit la valeur du designer de l'image
     * @param int $designerImage
     * @return void
     */
    public function setDesignerImage(int $designerImage): void
    {
        $this->designerImage = $designerImage;
    }

    /**
     * Retourne la valeur de l'id de l'image
     * @return int
     */
    public function getId(): int
    {
        return $this->id;
    }

    /**
     * Retourne la valeur du nom de l'image
     * @return string
     */
    public function getNomImage(): string
    {
        return $this->nomImage;
    }

    /**
     * Définit la valeur du nom de l'image
     * @param string $nomImage
     * @return void
     */
    public function setNomImage(string $nomImage): void
    {
        $this->nomImage = $nomImage;
    }

}