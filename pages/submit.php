<?php
include_once('../lib/Connexion_Crud.php');
include_once('../lib/User.php');
include_once('../lib/User_Crud.php');
use lib\Connexion_Crud;
use lib\User;
use lib\User_Crud;

session_start();
$connexionCrud = new Connexion_Crud();
$connexion = $connexionCrud->seConnecter();

$user = new User(0, $_POST['identifiant'], $_POST['password']);
$user_Crud = new User_Crud($connexion);
//Check du formulaire d'inscription
if(in_array("submit_inscription", $_REQUEST)){
    if($user_Crud->userExist($user)){
        $error = "EXIST";
        header("Location: inscription.php?error=". urlencode($error));
    }else{
        if($_POST['password'] != $_POST['password_confirmation']){
            $error = "PWD";
            header("Location: inscription.php?error=". urlencode($error));
        }else{
            $user_Crud->createUser($user);
            $_SESSION['user'] = $user;
            header("Location: index.php");
        }
    }
//Check du formulaire de connexion
}else{
    if(in_array("submit_connexion", $_REQUEST)) {
        if($user_Crud->userIsValide($user)){
            $_SESSION['user'] = $user;
            header("Location: index.php");
        }else{
            $error = "MAUVAIS";
            header("Location: login.php?error=". urlencode($error));
        }
    }
}
