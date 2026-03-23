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
        <h1>Connexion</h1>
        <?php
        //Gérer les erreurs envoyé via le submit.php
        if(isset($_GET['error'])){
            if($_GET['error'] == "MAUVAIS") {
                echo "<h4>Mot de passe et/ou identifiant invalide.</h4>";
            }
        }
        ?>
        <!-- Formulaire de connexion -->
        <form method="post" action="submit.php">
            <input type="identifiant" name="identifiant" placeholder="Identifiant" required />
            <input type="password" name="password" placeholder="Mot de passe"
                   minlength="12" pattern="^(?=.*[A-Z])(?=.*\d)(?=.*[\*\?\$]).{12,}$" required />
            <small class="textMdp">Minimum 12 caractères, dont :
                <br>- 1 chiffre
                <br>- 1 caractère spéciale ( * ? $ )
                <br>- 1 majuscule</small>
            <button type="submit" name="submit_connexion"
                    id="submit_connexion" value="submit_connexion">Se connecter</button>
        </form>
        <button class="back-button"
                onClick="window.location.href='inscription.php'">Besoin de s'inscrire ? Cliquez ici !</button>
    </div>
</div>
</body>
</html>