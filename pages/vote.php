<?php
include_once('../lib/Vote_Crud.php');
include_once('../lib/Images.php');
include_once('../lib/Connexion_Crud.php');
include_once('../lib/User.php');
include_once('../lib/User_Crud.php');
use lib\Connexion_Crud;
use lib\Images;
use lib\User;
use lib\User_Crud;
use lib\Vote_Crud;

session_start();
$connexionCrud = new Connexion_Crud();
$connexion = $connexionCrud->seConnecter();
$user = $_SESSION['user'];
if($_SESSION['user']){
    header("Location: index.php?vote=true");
    $vote = new Vote_Crud($connexion);
    $userCrud = new User_Crud($connexion);
    $vote->addVote(new Images($_POST['id_image']), $userCrud->getUser($user->getIdentifiant(), $user->getMotPasse()));
}else{
    $error = "NOCONNECT";
    header("Location: index.php?error=". urlencode($error));
}