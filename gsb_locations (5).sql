-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 08 avr. 2024 à 14:59
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gsb_locations`
--

-- --------------------------------------------------------

--
-- Structure de la table `appartements`
--

DROP TABLE IF EXISTS `appartements`;
CREATE TABLE IF NOT EXISTS `appartements` (
  `id_appart` int(11) NOT NULL,
  `rue` varchar(50) DEFAULT NULL,
  `arrondissement` int(11) NOT NULL,
  `etage` int(11) NOT NULL,
  `type_appart` varchar(10) DEFAULT NULL,
  `prix_loc` varchar(10) DEFAULT NULL,
  `prix_charge` decimal(10,2) DEFAULT NULL,
  `ascenseur` tinyint(1) DEFAULT '1',
  `preavis` tinyint(1) DEFAULT '0',
  `date_libre` date DEFAULT NULL,
  `numero_prop` int(11) DEFAULT NULL,
  `numero_loc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_appart`),
  KEY `numero_prop` (`numero_prop`),
  KEY `numero_loc` (`numero_loc`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `appartements`
--

INSERT INTO `appartements` (`id_appart`, `rue`, `arrondissement`, `etage`, `type_appart`, `prix_loc`, `prix_charge`, `ascenseur`, `preavis`, `date_libre`, `numero_prop`, `numero_loc`) VALUES
(3, 'Boulevard Saint-Michel', 5, 3, 'F3', '1100', '150.00', 0, 1, NULL, 103, NULL),
(4, 'Rue de la République', 10, 6, 'F1', '700', '80.00', 1, 0, '2024-08-01', 104, 204);

-- --------------------------------------------------------

--
-- Structure de la table `demandes`
--

DROP TABLE IF EXISTS `demandes`;
CREATE TABLE IF NOT EXISTS `demandes` (
  `id_dem` int(11) NOT NULL AUTO_INCREMENT,
  `id_demandeur` int(3) NOT NULL,
  `num_appart` int(3) NOT NULL,
  PRIMARY KEY (`id_dem`),
  KEY `id_demandeur` (`id_demandeur`),
  KEY `num_appart` (`num_appart`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `demandes`
--

INSERT INTO `demandes` (`id_dem`, `id_demandeur`, `num_appart`) VALUES
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(1, 0, 0),
(6, 3, 0),
(7, 6, 0),
(8, 4, 3),
(9, 5, 3),
(10, 6, 3),
(11, 7, 3),
(12, 8, 3),
(13, 9, 3),
(14, 10, 3),
(15, 11, 3),
(16, 12, 3),
(17, 13, 3),
(18, 14, 3),
(19, 15, 3),
(20, 16, 3),
(21, 17, 3),
(22, 18, 3),
(23, 19, 3),
(24, 20, 3),
(25, 21, 3),
(26, 22, 3),
(27, 23, 3),
(28, 4, 4),
(29, 5, 4),
(30, 6, 4),
(31, 7, 4),
(32, 8, 4),
(33, 9, 4),
(34, 10, 4),
(35, 11, 4),
(36, 12, 4),
(37, 13, 4),
(38, 14, 4),
(39, 15, 4),
(40, 16, 4),
(41, 17, 4),
(42, 18, 4),
(43, 19, 4),
(44, 20, 4),
(45, 21, 4),
(46, 22, 4),
(47, 23, 4);

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id_personne` int(11) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `code_postal` varchar(10) DEFAULT NULL,
  `type_personne` varchar(20) DEFAULT NULL,
  `rib` varchar(255) DEFAULT NULL,
  `tel_banque` varchar(20) DEFAULT NULL,
  `revenus` int(40) NOT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom`, `prenom`, `tel`, `adresse`, `code_postal`, `type_personne`, `rib`, `tel_banque`, `revenus`) VALUES
(103, 'Lefevre', 'Marie', '0654321098', '8 Rue de la Harmonie', '75005', 'Propriétaire', 'FR567890123456789012345678901', '0654321098', 0),
(104, 'Moreau', 'Pierre', '0123456789', '18 Avenue des Roses', '75010', 'Locataire', 'FR234567890123456789012345678901', '0123456789', 5000),
(1, 'Dupont', 'Jean', '0123456789', '123 Rue de la Paix', '75001', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(2, 'Martin', 'Sophie', '0987654321', '456 Avenue des Champs-Élysées', '75008', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(3, 'Dubois', 'Marie', '0112233445', '789 Boulevard Voltaire', '75011', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(4, 'Garcia', 'Luis', '0123456789', '1 Rue du Commerce', '75002', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(5, 'Martinez', 'Sofia', '0987654321', '2 Avenue des Roses', '75009', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(6, 'Fernandez', 'Maria', '0112233445', '3 Boulevard Haussmann', '75012', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(7, 'Lopez', 'Manuel', '0123456789', '4 Rue de Rivoli', '75003', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(8, 'Gonzalez', 'Laura', '0987654321', '5 Avenue des Ternes', '75010', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(9, 'Rodriguez', 'Carlos', '0112233445', '6 Boulevard Saint-Michel', '75013', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(10, 'Sanchez', 'Ana', '0123456789', '7 Rue du Faubourg Saint-Antoine', '75004', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(11, 'Perez', 'Diego', '0987654321', '8 Avenue de la République', '75011', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(12, 'Martin', 'Elena', '0112233445', '9 Boulevard de Clichy', '75014', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(13, 'Gomez', 'Juan', '0123456789', '10 Rue de la Boétie', '75005', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(14, 'Jimenez', 'Carmen', '0987654321', '11 Avenue Montaigne', '75012', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(15, 'Torres', 'Pablo', '0112233445', '12 Boulevard des Capucines', '75015', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(16, 'Diaz', 'Isabel', '0123456789', '13 Rue de Vaugirard', '75006', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(17, 'Ruiz', 'Pedro', '0987654321', '14 Avenue Foch', '75013', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(18, 'Alvarez', 'Eva', '0112233445', '15 Boulevard du Temple', '75016', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(19, 'Moreno', 'Antonio', '0123456789', '16 Rue de la Pompe', '75007', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000),
(20, 'Molina', 'Silvia', '0987654321', '17 Avenue des Gobelins', '75014', 'Locataire', 'FR987654321098765432109876543', '0987654321', 6000),
(21, 'Romero', 'Javier', '0112233445', '18 Boulevard des Italiens', '75017', 'Propriétaire', 'FR112233445566778899001122334', '0112233445', 8000),
(22, 'Navarro', 'Patricia', '0123456789', '19 Rue du Bac', '75008', 'Locataire', 'FR123456789012345678901234567', '0123456789', 4000);

-- --------------------------------------------------------

--
-- Structure de la table `visiter`
--

DROP TABLE IF EXISTS `visiter`;
CREATE TABLE IF NOT EXISTS `visiter` (
  `date_visite` date DEFAULT NULL,
  `num_visiteur` int(3) NOT NULL,
  `num_appartement` int(3) NOT NULL,
  KEY `num_visiteur` (`num_visiteur`),
  KEY `num_appartement` (`num_appartement`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
