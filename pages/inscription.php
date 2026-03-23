<?php
session_start();
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <title>Connexion / Inscription</title>
    <link rel="stylesheet" href="/css/style_login.css">
</head>
<body>
<header>
    <img src="/logos/style2geek_2.png" alt="Logo Style2Geek" class="logo">
    <button class="back-button" onClick="window.location.href='index.php'">← Retour</button>
</header>

<div class="auth-container">
    <div class="auth-section">
        <h1>Inscription</h1>
        <?php
        //Gérer les erreurs envoyé via le submit.php
        if(isset($_GET['error'])){
            if($_GET['error'] == "EXIST"){
                echo "<h4>Utilisateur déjà existant.</h4>";
            }else if($_GET['error'] == "PWD"){
                echo "<h4>Mot de Passe non identique.</h4>";
            }
        }
        ?>
        <!-- Formulaire d'inscription -->
        <form method="post" action="submit.php">
            <input type="identifiant" name="identifiant" placeholder="Identifiant" required />
            <input type="password" name="password" placeholder="Mot de passe"
                   minlength="12" pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[\*\?\$]).{12,}$" required />
            <input type="password" name="password_confirmation" placeholder="Confirmer le mot de passe" required />
            <small class="textMdp">Minimum 12 caractères, dont :
                <br>- 1 chiffre
                <br>- 1 caractère spéciale ( * ? $ )
                <br>- 1 majuscule</small>
            <button type="submit" name="submit_inscription"
                    id="submit_inscription" value="submit_inscription">S’inscrire</button>
        </form>
        <button class="back-button"
                onClick="window.location.href='login.php'">Vous avez déjà un compte ? Cliquez ici !</button>
    </div>
</div>
</body>
</html>
