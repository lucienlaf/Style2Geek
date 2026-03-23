# 🎨 Style2Geek - Projet BTS SIO SLAM

## 📌 Description

Ce projet a été réalisé dans le cadre du BTS SIO option SLAM.
Il s'agit d'un site web permettant de présenter des designs de tee-shirts créés par des designers partenaires, avec un système de vote pour mesurer leur popularité.

---

## 🎯 Contexte

L’entreprise fictive **Style2Geek** souhaite créer une plateforme permettant :

* D’afficher des designs de tee-shirts
* De permettre aux utilisateurs de voter pour leurs designs préférés
* D’identifier les modèles les plus populaires pour une future production

---

## ⚙️ Fonctionnalités réalisées

### ✅ Affichage des designs

* Affichage des images sur la page d’accueil
* Images affichées de manière aléatoire à chaque chargement

### ✅ Détail d’un design

* Ouverture d’une image dans une fenêtre (modale ou nouvelle page)
* Affichage du visuel du tee-shirt (si disponible)
* Affichage du nombre de votes

### ✅ Système de vote

* Possibilité de voter pour un design
* Le nombre de votes est enregistré en base de données

### ✅ Système 'authentification

* PConnexion via un bouton ainsi que déconnexion

---

## 🛠️ Technologies utilisées

* **Frontend :**

  * HTML
  * CSS
  * JavaScript (par IA)

* **Backend :**

  * PHP

* **Base de données :**

  * MySQL
  * PDO (connexion sécurisée)

---

## ⚡ Installation

1. Cloner le projet :

```bash
git clone https://github.com/ton-username/style2geek.git
```

2. Importer la base de données :

* Ouvrir phpMyAdmin
* Importer le fichier `database.sql`

3. Configurer la connexion à la base de données :

* Modifier le fichier de configuration (ex : `connexion.php`)

```php
$host = 'localhost';
$dbname = 'style2geek';
$user = 'root';
$password = '';
```

4. Lancer le projet :

* Placer le dossier dans `htdocs` (XAMPP) ou `www` (WAMP)
* Accéder via :

```
http://localhost/style2geek
```

---

## 👨‍💻 Auteur

Projet réalisé par **LAFORÊT Lucien** dans le cadre du BTS SIO SLAM.

---

## 📄 Licence

Projet réalisé à des fins pédagogiques.

