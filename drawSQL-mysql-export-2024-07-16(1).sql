CREATE TABLE `annonce`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `intitule` VARCHAR(255) NOT NULL,
    `contenu` TEXT NOT NULL,
    `auteur` BIGINT UNSIGNED NOT NULL,
    `lieu` VARCHAR(255) NOT NULL,
    `type` VARCHAR(255) NOT NULL,
    `salaire` VARCHAR(255) NOT NULL,
    `duree` VARCHAR(255) NULL
);
CREATE TABLE `utilisateur_annonce`(
    `id_utilisateur` BIGINT UNSIGNED NOT NULL,
    `id_annonce` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `Utilisateur`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `prenom` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` BIGINT NOT NULL,
    `statut` VARCHAR(255) NOT NULL,
    `nom` VARCHAR(255) NOT NULL,
    `cv` TEXT NOT NULL
);
ALTER TABLE
    `utilisateur_annonce` ADD CONSTRAINT `utilisateur_annonce_id_utilisateur_foreign` FOREIGN KEY(`id_utilisateur`) REFERENCES `Utilisateur`(`id`);
ALTER TABLE
    `utilisateur_annonce` ADD CONSTRAINT `utilisateur_annonce_id_annonce_foreign` FOREIGN KEY(`id_annonce`) REFERENCES `annonce`(`id`);
ALTER TABLE
    `annonce` ADD CONSTRAINT `annonce_auteur_foreign` FOREIGN KEY(`auteur`) REFERENCES `Utilisateur`(`id`);