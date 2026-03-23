<?php
include_once('../lib/Images_Crud.php');
include_once('../lib/Images.php');
include_once('../lib/Connexion_Crud.php');
use lib\Connexion_Crud;
use lib\Images;
use lib\images_Crud;
$connexionCrud = new Connexion_Crud();
$connexion = $connexionCrud->seConnecter();
session_start();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Style2Geek - Vote pour ton design préféré</title>
    <link rel="stylesheet" href="/css/style_index.css">
</head>
<body>

<header>
    <img src="/logos/style2geek_2.png" alt="Logo Style2Geek" class="logo">
    <?php if(isset($_SESSION['user']) == false){ ?>
        <button class="auth-btn" onClick="window.location.href='login.php'">Se connecter / S'inscrire</button>
    <?php }else{ ?>
        <button class="auth-btn" onClick="window.location.href='deconnexion.php'">Se déconnecter</button>
    <?php } ?>
</header>

<!-- MODAL POUR AFFICHER L'IMAGE EN GRAND -->
<!-- MODAL FAIT PAR CHATGPT -->
<div id="modal" class="modal">
    <div class="modal-content">
        <span id="closeModal" class="close">&times;</span>
        <h2 id="modalTitle"></h2>
        <img id="modalImage" src="" alt="">
        <h3>Nombre de vote actuel : <span id="nbVotes"></span></h3>
    </div>
    <div class="actions">
        <form action="vote.php" method="post">
            <input type="hidden" name="id_image" id="id_image_modal">
            <button type="submit">👍 Voter</button>
        </form>
        <form action="comment.php" method="get">
            <button type="submit">💬 Commenter</button>
        </form>
    </div>
</div>
<?php
if(isset($_GET['error'])){
    if($_GET['error'] == 'NOCONNECT'){
        echo "<h3 class='error'>Vous devez être connecté pour pouvoir voter !</h3>";
    }
}
?>
<main class="gallery">
    <!-- Image 0-220998-full-900x500 NON EXISTANTE (dossier images)
    Affichage aléatoire des images dans la base de données -->
    <?php
    $images = new Images_Crud($connexion);
    $imagesRequete = $images->getAllImage();
    foreach ($imagesRequete as $uneImage) { ?>
        <?php $random = array_rand($imagesRequete);
        $newImage = new Images($imagesRequete[$random]['id_image']);
        $uneImageTshirt = $images->getImageTshirt($newImage);
        if(isset($uneImageTshirt[0]['nom']) == false){?>
            <div class="tee-card" onclick="openModal('/images/image_error.png','Par : ARTISTE',
            <?=$imagesRequete[$random]['id_image']?>,
            <?=$imagesRequete[$random]['nb_vote_image']?>)">
        <?php }else{?>
            <div class="tee-card" onclick="openModal('/images/<?=$uneImageTshirt[0]['nom']?>.jpg',
                    'Par : ARTISTE',
                    <?=$imagesRequete[$random]['id_image']?>,
                    <?=$imagesRequete[$random]['nb_vote_image']?>)">
        <?php }?>
        <img src="/images/<?=$imagesRequete[$random]['nom_image']?>.jpg"
             alt="<?=$imagesRequete[$random]['nom_image']?>.jpg" />
        </div>
        <?php unset($imagesRequete[$random]);?>
    <?php } ?>
</main>

<footer>
    &copy; 2025 Style2Geek - Designs originaux par des artistes partenaires
</footer>

</body>
</html>

<!-- JAVASCRIPT FAIT PAR CHATGPT -->
<script>
    function openModal(imgSrc, title, id_image, nbVotes) {
        document.getElementById('modalImage').src = imgSrc;
        document.getElementById('modalTitle').textContent = title;
        document.getElementById('modal').style.display = 'block';
        document.getElementById('id_image_modal').value = id_image;
        document.getElementById('nbVotes').textContent = nbVotes;
    }
    document.getElementById('closeModal').onclick = function() {
        document.getElementById('modal').style.display = 'none';
    };
    window.onclick = function(event) {
        if (event.target == document.getElementById('modal')) {
            document.getElementById('modal').style.display = 'none';
        }
    };
</script>