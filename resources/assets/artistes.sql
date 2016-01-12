-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 13 Janvier 2016 à 00:01
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `codepi_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `artistes`
--

CREATE TABLE IF NOT EXISTS `artistes` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Contenu de la table `artistes`
--

INSERT INTO `artistes` (`Id`, `Nom`, `Description`, `Image`, `Tags`) VALUES
(1, 'Bassnectar', 'Bassnectar is the stage name of Lorin Ashton, a freeform electronic music producer and DJ based in Santa Cruz, California. He is best known for his live performances, light shows, and community engagement.', 'bassnectar08.jpg', 'Dubstep'),
(2, 'Boogaloo Joe Jones', 'Ivan Joseph Jones (born November 1, 1940), known professionally as Joe Jones or Boogaloo Joe Jones, is a jazz guitarist', 'Boogaloo_Joe_Jones.jpg', 'Funk, Jazz'),
(3, 'Curtis Mayfield', 'Curtis Lee Mayfield, né le 3 juin 1942 à Chicago et mort le 26 décembre 1999, était un chanteur, auteur et compositeur de soul, de funk, de rhythm and blues, notamment connu pour la bande originale du film de blaxploitation Superfly.', 'Curtis_Mayfield.png', 'Soul, Chanson'),
(4, 'Cypress Hill', 'Cypress Hill est un groupe américain de rap, formé en 1988, originaire de Californie.', 'cypress_hill.jpg', 'Hip Hop'),
(5, 'Daft Punk', 'Daft Punk est un groupe français de musique électronique, originaire de Paris. Actifs depuis 1993, Thomas Bangalter et Guy-Manuel de Homem-Christo, les deux membres, ont allié à leurs sons electro, ...', 'Daft-Punk.jpg', 'Electro'),
(6, 'Django Reinhardt', 'Jean Reinhardt, plus connu sous le nom de Django Reinhardt, est un guitariste de jazz français, né le 23 janvier 1910 à Liberchies en Belgique et mort le 16 mai 1953 à Samois-sur-Seine.', 'Django_Reinhardt_by_toadboue.jpg', 'Jazz, Gypsy'),
(7, 'The Beatles', 'The Beatles est un groupe musical originaire de Liverpool, composé de John Lennon, Paul McCartney, George Harrison et Ringo Starr. Il demeure, en dépit de sa séparation en 1970, l''un des groupes de rock les plus populaires au monde.', 'down-the-abbey-road-the-beatles.jpg', 'Pop, Rock'),
(8, 'Ennio Morricone', 'Ennio Morricone est un compositeur et chef d''orchestre italien, réputé notamment pour ses musiques de films, en particulier celles réalisées pour son ami et camarade de classe Sergio Leone. Son fils Andrea Morricone est également compositeur.', 'ennio-morricone.jpg', 'Rock, Western'),
(9, 'Flux Pavilion', 'Joshua Steele, plus connu sous le nom de Flux Pavilion, est un producteur et DJ anglais, né en 1989 et actif depuis 2008. ', 'flux-pavilion.jpg', 'Electro'),
(10, 'Gentlemans Dub Club', 'Having built a reputation on consistently delivering one of the most energetic and exhilarating live shows to emerge from the UK bass music scene, the Gents’ antics have seen them astound crowds from Goa to Glastonbury, Bestival, V Festival, Secret Garden Party, France''s Telerama Dub Festival and Poland’s Ostróda Reggae Festival, not to mention the biggest bass music festival in the world - Croatia’s Outlook Festival', 'Gentlemans-Dub-Club.jpg', 'Dub, Reggae, Pop'),
(11, 'Gramatik', 'Gramatik, de son vrai nom Denis Jasarevic, est un DJ, producteur américain, né le 19 octobre 1984 à Portorož, Slovénie.', 'Gramatik.jpeg', 'Dubstep'),
(12, 'James Brown', 'James Joseph Brown Jr. était un musicien, chanteur, auteur-compositeur, danseur et producteur américain. Un des initiateurs du funk, il est fréquemment surnommé "The Godfather of Soul".', 'james_brown.jpg', 'Soul, Funk'),
(13, 'Kavinsky', 'Kavinsky, de son vrai nom Vincent Belorgey, né le 31 juillet 1975, en Seine-Saint-Denis est un artiste de musique électronique et un acteur français', 'kavinsky.jpg', 'Electro'),
(14, 'Queen', 'Queen est un groupe de rock britannique, formé en 1970 à Londres par Freddie Mercury, Brian May et Roger Taylor, ces deux derniers étant issus du groupe Smile. L’année suivante, le bassiste John Deacon vient compléter la formation.', 'Logo_Queen.png', 'Rock'),
(15, 'Major Lazer', 'Major Lazer est un projet musical mené par le DJ/producteur Diplo. La musique de Major Lazer s''inscrit dans le reggae avec en plus des sonorités électroniques. Le groupe collabore régulièrement avec des chanteurs pour ses chansons', 'Major-Lazer.png', 'Reggae, Hip Hop'),
(16, 'Mc solaar', 'MC Solaar, de son vrai nom Claude M''Barali, est un rappeur français d''origine sénégalo-tchadienne né le 5 mars 1969 à Dakar.', 'mc_solaar.jpg', 'Hip Hop, Chanson'),
(17, 'MGMT', 'MGMT, précédemment connu sous le nom de The Management, est un groupe américain de rock alternatif. Originaire de Brooklyn, le groupe est composé initialement de Ben Goldwasser et de Andrew VanWyngarden.', 'mgmt.jpeg', 'Rock'),
(18, 'Michael Jackson', 'Michael Joseph Jackson, né le 29 août 1958 à Gary et mort le 25 juin 2009 à Los Angeles, est un chanteur, danseur-chorégraphe, auteur-compositeur-interprète acteur et réalisateur américain.', 'Michael-Jackson.jpg', 'Pop, Funk'),
(19, 'Moby', 'Moby, de son vrai nom Richard Melville Hall, est un artiste de musique électronique américain et photographe, né le 11 septembre 1965 à New York dans le quartier de Harlem.', 'moby-smile.jpg', 'Electro, Pop'),
(20, 'Mr. Oizo', 'Mr. Oizo, de son vrai nom Quentin Dupieux est un artiste de musique électronique, réalisateur et scénariste français, né le 14 avril 1974 à Paris', 'mr-oizo-flat-eric.jpg', 'Electro'),
(21, 'Mungo''s Hifi', 'Mungo''s Hi Fi is a sound system based in Glasgow, Scotland which follows the original Jamaican sound system tradition. After working together as the Dub Dentists, Tom Tattersall and Doug Paine founded the group in 2000, writing, recording, producing and performing their own brand of reggae and dub music, working in collaboration with other artists and producers.', 'mungohifi.jpg', 'Dub, Reggae'),
(22, 'Nirvana', 'Nirvana est un groupe américain de rock alternatif, souvent associé au grunge, formé en 1987 à Aberdeen, dans l''état de Washington, par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic.', 'nirvana.jpg', 'Rock'),
(23, 'Panda Dub', 'Le projet Panda Dub est né à Lyon en 2007. Dub maker influencé par les scènes dub françaises et Anglaises, Panda Dub a su se créer un style très personnel. Le reggae roots, le stepper anglais et l’électro dub à la française nourrissent ses compositions qui ont toutes les caractéristiques de celles dont les sound system à l’anglaise raffolent. Le son du Panda est issu d’un savant mélange de samples ethno, de mélodies electro fraîches et percutantes, de textures envoûtantes et de rythmiques lourdes.', 'panda_dub_m.jpg', 'Dub, Electro'),
(24, 'Puppetmastaz', 'The Puppetmastaz est un groupe de hip-hop allemand fondé dans les années 1990 dont les membres sont représentés par des marionnettes.', 'puppetmastaz.jpg', 'Hip Hop, Reggae'),
(25, 'Radiohead', 'Radiohead est un groupe de rock anglais originaire d''Abingdon dans l''Oxfordshire. Le groupe est composé de Thom Yorke au chant, à la guitare et au piano, de Jonny Greenwood à la guitare, piano et Ondes ...', 'radiohead.jpg', 'Rock, Electro'),
(26, 'Rusko', 'Rusko, de son vrai nom Christopher William Mercer, est né le 26 janvier 1985. Né a Leeds en Angleterre, il est producteur de dubstep et DJ.', 'rusko.jpeg', 'Dubstep'),
(27, 'Stand High Patrol', 'Pupajim est un chanteur et compositeur de reggae français né en 1983 et originaire de Brest, en Bretagne. Il fait partie du sound system Stand High Patrol, avec qui il se produit occasionnellement. Le sound system est composé de Rootystep (selecta), McGyver (operator) et Pupajim (chanteur, MC, dub builder)1, ou Marina P (chanteuse).', 'Stand-High-Patrol-midnightwalker.jpg', 'Dub, Reggae'),
(28, 'The xx', 'The xx est un groupe de rock aux sonorités épurées le rapprochant parfois de la musique minimaliste, formé à Londres en 2005.', 'the_xx_coexist.jpg', 'Rock'),
(29, 'Uppermost', 'Behdad Nejatbakhshe, better known by his stage name Uppermost, is a French electronic music producer based in Paris, France.', 'Uppermost2.jpg', 'Electro'),
(30, 'Paul Kalkbrenner', 'Paul Kalkbrenner, né à Leipzig en 1977, est un producteur et DJ allemand de musique électronique de style techno et electro, également connu sous les pseudonymes Paul dB+, Kalkito ou Grenade', 'Paul_Kalkbrenner_at_Alte_Diamantbrauerei.jpg', 'Electro');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;