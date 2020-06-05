-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2020 at 02:42 PM
-- Server version: 5.5.65-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weekendplus`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add teste', 7, 'add_teste'),
(26, 'Can change teste', 7, 'change_teste'),
(27, 'Can delete teste', 7, 'delete_teste'),
(28, 'Can view teste', 7, 'view_teste'),
(29, 'Can add perfil', 8, 'add_perfil'),
(30, 'Can change perfil', 8, 'change_perfil'),
(31, 'Can delete perfil', 8, 'delete_perfil'),
(32, 'Can view perfil', 8, 'view_perfil'),
(33, 'Can add midia', 9, 'add_midia'),
(34, 'Can change midia', 9, 'change_midia'),
(35, 'Can delete midia', 9, 'delete_midia'),
(36, 'Can view midia', 9, 'view_midia'),
(37, 'Can add favoritos', 10, 'add_favoritos'),
(38, 'Can change favoritos', 10, 'change_favoritos'),
(39, 'Can delete favoritos', 10, 'delete_favoritos'),
(40, 'Can view favoritos', 10, 'view_favoritos'),
(41, 'Can add filmes', 11, 'add_filmes'),
(42, 'Can change filmes', 11, 'change_filmes'),
(43, 'Can delete filmes', 11, 'delete_filmes'),
(44, 'Can view filmes', 11, 'view_filmes'),
(45, 'Can add series', 12, 'add_series'),
(46, 'Can change series', 12, 'change_series'),
(47, 'Can delete series', 12, 'delete_series'),
(48, 'Can view series', 12, 'view_series'),
(49, 'Can add favoritos filmes', 13, 'add_favoritosfilmes'),
(50, 'Can change favoritos filmes', 13, 'change_favoritosfilmes'),
(51, 'Can delete favoritos filmes', 13, 'delete_favoritosfilmes'),
(52, 'Can view favoritos filmes', 13, 'view_favoritosfilmes'),
(53, 'Can add favoritos series', 14, 'add_favoritosseries'),
(54, 'Can change favoritos series', 14, 'change_favoritosseries'),
(55, 'Can delete favoritos series', 14, 'delete_favoritosseries'),
(56, 'Can view favoritos series', 14, 'view_favoritosseries'),
(57, 'Can add serie episodio', 15, 'add_serieepisodio'),
(58, 'Can change serie episodio', 15, 'change_serieepisodio'),
(59, 'Can delete serie episodio', 15, 'delete_serieepisodio'),
(60, 'Can view serie episodio', 15, 'view_serieepisodio');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$21XwX4GhWdSw$n+BIoaxgDoETXbkiXJ50J0JPLFr/yw/g6lHHaVaMCCw=', '2020-05-13 23:41:26.161550', 0, 'ygor', '', '', 'ygorsa1998@hotmail.com', 0, 1, '2020-03-26 22:39:03.363125'),
(2, 'pbkdf2_sha256$150000$o6HlX4GjGg7K$feWEsMPuk9C3bNadDVSYull1TJtsTmdQhi+2pl3pTHo=', '2020-06-05 12:33:53.721206', 1, 'admin', 'ADMIN', 'Masters', 'admin@admin.com', 1, 1, '2020-03-26 22:41:43.000000'),
(3, 'pbkdf2_sha256$150000$fintvW0492pK$trRQAwz+Laiy6QWSU1Cm25uWmutpLW28fktkMP1ItZ4=', '2020-04-23 20:07:59.589387', 0, 'ricardo', 'Ricardo', 'Taverna', 'taverna.ricardo@gmail.com', 0, 1, '2020-03-26 23:18:09.281932'),
(5, 'pbkdf2_sha256$150000$eIBesHcxdnHr$un2GZsdzgP83383hJi3aOiQ0zGaYzDXqiCxg8wE6ibs=', '2020-05-08 12:50:54.652635', 0, 'ricardo.taverna', '', '', 'taverna.ricardo@gmail.com', 0, 1, '2020-04-23 22:26:12.227739'),
(6, 'pbkdf2_sha256$150000$rsFiLeQC4NVr$1l45nHwDUyEQZ2pWPu+QFNC+tFyJWkDKFPp1T6Kq1EY=', NULL, 0, 'ygor.stengrat', '', '', 'taverna.ricardo@gmail.com', 0, 0, '2020-04-23 22:49:41.307669'),
(7, 'pbkdf2_sha256$150000$Rq4kRPJ2FNtd$vVpuDiVU2Rax0dEci7Hi98GH7kLKRXmDDTQpY6/TQiM=', '2020-04-28 20:03:23.149248', 0, 'Gelson', '', '', 'taverna.ricardo@gmail.com', 0, 1, '2020-04-28 20:00:16.000000'),
(8, 'pbkdf2_sha256$150000$4e4pWQA3WcOd$8vZUr/B9qCzBwLJyimVv4scOQ67L2FoPytZRqe42ncw=', '2020-05-14 22:02:26.599569', 0, 'ricardotaverna', '', '', 'taverna.ricardo@gmail.com', 0, 1, '2020-05-14 22:01:14.910075'),
(9, 'pbkdf2_sha256$150000$necoE9ugNesA$pSA/df8+P8ra2GCCYiEDll0zYOIxGhsUzDBmHK7Fsy0=', '2020-05-14 22:14:45.995493', 0, 'taverna', '', '', 'taverna.ricardo@gmail.com', 0, 1, '2020-05-14 22:13:18.595703'),
(10, 'pbkdf2_sha256$150000$tjetX5jYCDL3$uzy55Q8vhs0ihWkme16C7y/J/ehdTjID+Pqv2ewcAAs=', NULL, 0, 'stengrat', '', '', 'ygorsa1998@hotmail.com', 0, 0, '2020-05-29 02:08:56.539857'),
(11, 'pbkdf2_sha256$150000$Tjwe5X70ifAe$qlwsu86s2N4j6e1qf6hOBuSNZrmxbcvPTkfZrVE5ZRM=', NULL, 0, 'stengrat2', '', '', 'ygorsa1998@hotmail.com', 0, 0, '2020-05-29 02:27:09.907582'),
(12, 'pbkdf2_sha256$150000$cz9m6hag9K1g$2cn2jZw+UfIItFapj24qk0v41JRwdOlz2b/1cyv1gZg=', NULL, 0, 'stengrat3', '', '', 'ygorsa1998@hotmail.com', 0, 0, '2020-05-29 02:32:14.117103'),
(13, 'pbkdf2_sha256$150000$28RiGyv5Ysjq$XUZcZqdjMsWD4oHkT4n7L3/fDstkHuoIYJf1J/yJff0=', NULL, 0, 'stengrat4', '', '', 'ygorsa1998@hotmail.com', 0, 0, '2020-05-29 02:40:49.852524'),
(14, 'pbkdf2_sha256$150000$5z4EWnTh3KKA$NTvDPGojXNbY3e0QfChElcDSnuGS/a8HVOwYa0zHx6E=', NULL, 0, 'stengrat5', '', '', 'ygorsa1998@hotmail.com', 0, 0, '2020-05-29 02:42:53.418845'),
(15, 'pbkdf2_sha256$150000$gaA97GPfpgwO$apUHoEFuOYP8jvTfBxFQ8shu1hnOltOrSaArbhiTBzc=', '2020-05-29 02:45:01.200714', 0, 'stengrat6', '', '', 'ygorsa1998@hotmail.com', 0, 1, '2020-05-29 02:43:34.283511'),
(16, 'pbkdf2_sha256$150000$tb6frJiKYsSp$BVm5btxj7CKMrvYK8YW0Gm+dAslHqLw5Gleogpvx6/k=', '2020-06-05 00:43:51.633403', 0, 'teste', 'ygor', 'stengrat', 'email@email.com', 0, 1, '2020-06-04 22:26:38.284297');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catalogo_favoritosfilmes`
--

CREATE TABLE `catalogo_favoritosfilmes` (
  `id` int(11) NOT NULL,
  `filme_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  `horario` datetime(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo_favoritosfilmes`
--

INSERT INTO `catalogo_favoritosfilmes` (`id`, `filme_id_id`, `user_id_id`, `horario`) VALUES
(12, 4, NULL, '2020-05-14 00:02:52.666360'),
(16, 5, 2, '2020-05-14 00:02:52.666360'),
(17, 3, 2, '2020-05-14 00:02:52.666360'),
(20, 6, 2, '2020-05-14 00:06:50.176821'),
(22, 1, 2, '2020-05-14 00:47:36.011838'),
(23, 6, 1, '2020-05-14 21:06:49.715984'),
(24, 5, 1, '2020-05-14 21:07:03.856933'),
(25, 6, NULL, '2020-05-14 21:07:22.050975'),
(26, 1, 1, '2020-05-14 21:08:47.298009'),
(27, 8, 9, '2020-05-14 22:19:46.396683'),
(28, NULL, 1, '2020-05-14 23:03:54.641825'),
(29, NULL, 1, '2020-05-14 23:04:19.713514'),
(30, NULL, 1, '2020-05-14 23:04:30.040745'),
(31, NULL, 1, '2020-05-14 23:04:39.968313'),
(32, NULL, 1, '2020-05-14 23:04:51.111372'),
(33, NULL, 1, '2020-05-14 23:05:07.534256'),
(34, NULL, 1, '2020-05-14 23:05:15.783568'),
(35, NULL, 1, '2020-05-14 23:10:23.134166'),
(36, NULL, 1, '2020-05-14 23:14:27.357443'),
(37, NULL, 1, '2020-05-14 23:14:36.989002'),
(38, NULL, 1, '2020-05-14 23:15:51.019810'),
(41, 8, NULL, '2020-06-04 04:16:56.155215'),
(42, 6, NULL, '2020-06-04 15:56:51.029347'),
(43, 8, 2, '2020-06-04 15:57:51.314150'),
(44, 8, NULL, '2020-06-04 20:19:12.919693'),
(45, 8, 16, '2020-06-04 22:29:11.806822'),
(46, 5, 16, '2020-06-05 00:20:28.020786');

-- --------------------------------------------------------

--
-- Table structure for table `catalogo_favoritosseries`
--

CREATE TABLE `catalogo_favoritosseries` (
  `id` int(11) NOT NULL,
  `horario` datetime(6) DEFAULT NULL,
  `serie_id_id` int(11) DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo_favoritosseries`
--

INSERT INTO `catalogo_favoritosseries` (`id`, `horario`, `serie_id_id`, `user_id_id`) VALUES
(2, '2020-05-14 13:10:59.555113', 1, 2),
(3, '2020-05-14 21:09:07.448896', 6, 1),
(4, '2020-05-14 21:09:15.622468', 5, 1),
(5, '2020-05-14 21:09:23.475590', 1, 1),
(6, '2020-05-31 21:00:14.636019', 5, 2),
(7, '2020-05-31 21:15:22.332865', 4, 2),
(8, '2020-06-05 00:20:59.793136', 5, 16);

-- --------------------------------------------------------

--
-- Table structure for table `catalogo_filmes`
--

CREATE TABLE `catalogo_filmes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `ano` int(11) NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `diretor` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `classificacao` varchar(20) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `background` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo_filmes`
--

INSERT INTO `catalogo_filmes` (`id`, `titulo`, `descricao`, `ano`, `duracao`, `diretor`, `genero`, `classificacao`, `link`, `thumbnail`, `background`) VALUES
(1, 'John Wick - De Volta Ao Jogo', 'John Wick é um lendário assassino de aluguel aposentado, lidando com o luto após perder o grande amor de sua vida. Quando um gângster invade sua casa, mata seu cachorro e rouba seu carro, ele é forçado a voltar à ativa e inicia sua vingança.', 2014, '107', 'Chad Stahelski', 'Ação', '16', 'https://www.youtube.com/embed/hPYz9Yz6ekA', 'images_0CUt3Nq.jfif', 'filmes_background/jw_wallpaper_iDan77G.jpg'),
(2, 'O Senhor dos Anéis - A Sociedade do Anel', 'Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso, o hobbit Frodo tem um caminho árduo pela frente, onde encontra perigo, medo e seres bizarros. Ao seu lado para o cumprimento desta jornada, ele aos poucos pode contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando nove pessoas que formam a Sociedade do Anel.', 2000, '178', 'Peter Jackson', 'Ação', '12', 'https://www.youtube.com/watch?v=YhJZz3U6qpQ', 'sdasa_wMIeOrq.jpg', 'filmes_background/suxfLQ.jpg'),
(3, 'O Senhor dos Anéis - As Duas Torres', 'Após a captura de Merry e Pippy pelos orcs, a Sociedade do Anel é dissolvida. Frodo e Sam seguem sua jornada rumo à Montanha da Perdição para destruir o anel e descobrem que estão sendo perseguidos pelo misterioso Gollum. Enquanto isso, Aragorn, o elfo e arqueiro Legolas e o anão Gimli partem para resgatar os hobbits sequestrados e chegam ao reino de Rohan, onde o rei Theoden foi vítima de uma maldição mortal de Saruman.', 2002, '180', 'Peter Jackson', 'Aventura', '12', 'https://www.youtube.com/embed/8uwJoAj3gt8', 'sda2t.jpg', 'filmes_background/lotrtt_wallpaper.jpg'),
(4, 'O Senhor dos Anéis - O Retorno do Rei', 'O confronto final entre as forças do bem e do mal que lutam pelo controle do futuro da Terra Média se aproxima. Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf e Pippin partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso, Frodo, Sam e Gollum seguem sua viagem rumo à Montanha da Perdição para destruir o anel.', 2003, '201', 'Peter Jackson', 'Aventura', '12', 'https://www.youtube.com/embed/r5X-hFf6Bwo', 'sdarr.jpg', 'filmes_background/lotrrok_wallpaper.jpg'),
(5, 'John Wick - Um Novo Dia Para Matar', 'John Wick é forçado a deixar a aposentadoria mais uma vez por causa de uma promessa antiga e viaja para Roma, com o objetivo de ajudar um velho amigo a derrubar uma organização secreta, perigosa e mortal de assassinos procurados em todo o mundo.', 123, '123', 'Chad Stahelski', 'Ação', '16', 'https://www.youtube.com/embed/REt99QNJ5Gs', 'jw2.jpg', 'filmes_background/jw2_wallpaper.jpg'),
(6, 'John Wick 3 - Parabellum', 'O lendário John Wick luta para sair de Nova York quando um contrato de 14 milhões de dólares faz dele o alvo dos maiores assassinos do mundo.', 2019, '132', 'Chad Stahelski', 'Ação', '16', 'https://www.youtube.com/embed/2PKNnrTe-Bg', 'jw3.jpg', 'filmes_background/jw3.jpg'),
(8, 'Ghost in the Shell', 'Em um mundo pós-2029, é bastante comum o aperfeiçoamento do corpo humano a partir de inserções tecnológicas. O ápice desta evolução é a Major Mira Killian (Scarlett Johansson), que teve seu cérebro transplantado para um corpo inteiramente construído pela Hanka Corporation. Considerada o futuro da empresa, Major logo é inserida no Section 9, um departamento da polícia local. Lá ela passa a combater o crime, sob o comando de Aramaki (Takeshi Kitano) e tendo Batou (Pilou Asbaek) como parceiro. Só que, em meio à investigação sobre o assassinato de executivos da Hanka, ela começa a perceber certas falhas em sua programação que a fazem ter vislumbres do passado quando era inteiramente humana.', 2017, '107', 'Rupert Sanders', 'Ficção Científica', '14', 'https://www.youtube.com/embed/8d2EmV46mmo', 'gis.jpg', 'filmes_background/ghost-in-the-shell-scarlett-johansson-takeshi-kitano.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `catalogo_serieepisodio`
--

CREATE TABLE `catalogo_serieepisodio` (
  `id` int(11) NOT NULL,
  `temporada` int(11) NOT NULL,
  `titulo` varchar(300) DEFAULT NULL,
  `numero_episodio` int(11) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `serie_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo_serieepisodio`
--

INSERT INTO `catalogo_serieepisodio` (`id`, `temporada`, `titulo`, `numero_episodio`, `link`, `serie_id_id`) VALUES
(1, 1, 'Piloto', 1, 'https://www.youtube.com/embed/_2A5_1eU0bk', 1),
(2, 1, 'Aquele da Ultrasonografia no Fina', 2, 'https://www.youtube.com/embed/ZZJAVpM8kSc', 1),
(3, 1, 'Aquele do Dedão', 3, 'https://www.youtube.com/embed/NrI72THc4is', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catalogo_series`
--

CREATE TABLE `catalogo_series` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `ano` int(11) NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `diretor` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `classificacao` varchar(20) NOT NULL,
  `temporadas` int(11) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `background` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catalogo_series`
--

INSERT INTO `catalogo_series` (`id`, `titulo`, `descricao`, `ano`, `duracao`, `diretor`, `genero`, `classificacao`, `temporadas`, `link`, `thumbnail`, `background`) VALUES
(1, 'Friends', 'Seis amigos, três homens e três mulheres, enfrentam a vida e os amores em Nova York e adoram passar o tempo livre na cafeteria Central Perk.', 1994, '22', 'David Crane', 'Comédia', '12', 10, 'https://www.youtube.com/embed/6otpNDOVol0', 'friends.jpg', 'series_background/f_wallpaper.jpg'),
(2, 'Grey\'s Anatomy', 'Um grupo de jovens médicos do Hospital Seattle Grace e suas carreiras como residentes. Um dos médicos, que se esforça para se relacionar com seus colegas, é a filha de um famoso cirurgião.', 2005, '42', 'David', 'Romance', '14', 16, 'https://www.youtube.com/embed/CJ9Uvs8U50A', 'Greys_Anatomy_poster_temporada_4.jpg', 'series_background/ga_wallpaper.jpg'),
(3, 'Brooklyn Nine-Nine', 'Jake Peralta é um detetive brilhante e ao mesmo tempo imaturo, que nunca precisou se preocupar em respeitar as regras. Tudo muda quando um capitão exigente assume o comando de seu esquadrão e Jake deve aprender a trabalhar em equipe.', 2013, '21', 'David', 'Comédia', '14', 7, 'https://www.youtube.com/embed/ourfSzoC7pA', 'Brooklyn_Nine-Nine-5.jpg', 'series_background/b99_wallpaper.jpg'),
(4, 'Mindhunter', 'Mindhunter é uma série de televisão norte-americana de drama policial criada por Joe Penhall, e baseada no livro Mind Hunter: Inside the FBI’s Elite Serial Crime Unit escrito por John E. Douglas e Mark Olshaker.', 2017, '54', 'Joe Penhall', 'Suspense', '16', 2, 'https://www.youtube.com/embed/PHlJQCyqiaI', '2286697.jpg', 'series_background/mh_wallpaper.jpg'),
(5, 'Dark', 'Dark é uma websérie alemã de drama e suspense criada por Baran bo Odar e Jantje Friese e distribuída pela Netflix. É a primeira série original alemã deste serviço de streaming, tendo estreado em 1º de dezembro de 2017.', 2017, '51', 'David', 'Suspense', '16', 2, 'https://www.youtube.com/embed/6EhDKaWLJgg', '7987-dark.jpg', 'series_background/dark_wallpaper.png'),
(6, 'Ragnarok', 'Ragnarok é uma série de drama de fantasia em língua norueguesa inspirada na mitologia nórdica da Netflix que estreou em 31 de janeiro de 2020. A sua segunda temporada foi anunciada pela Netflix, e não tem data de estreia.', 2020, '46', 'david', 'Drama', '16', 1, 'https://www.youtube.com/embed/7H9AaiBLHCo', 'e9fae3dcae1a3b978adaf214cac3c607.jpg', 'series_background/imagemteste3.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `contas_perfil`
--

CREATE TABLE `contas_perfil` (
  `id` int(11) NOT NULL,
  `email_confirmado` tinyint(1) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cidade` varchar(20) DEFAULT NULL,
  `logradouro` varchar(200) DEFAULT NULL,
  `complemento` varchar(200) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `data_criacao` datetime(6) DEFAULT NULL,
  `imagem_perfil` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contas_perfil`
--

INSERT INTO `contas_perfil` (`id`, `email_confirmado`, `telefone`, `cep`, `pais`, `estado`, `cidade`, `logradouro`, `complemento`, `numero`, `data_criacao`, `imagem_perfil`, `user_id`) VALUES
(1, 1, '4199999999', '88888888', 'Brasil', 'parana', 'curitiba', 'eu', 'quero', 4512, '2020-03-26 22:39:05.750302', 'user_image.png', 1),
(2, 1, '41999888777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-26 22:41:43.880808', 'user_admin_T1g5J84.jpg', 2),
(3, 1, '41999888777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-03-26 23:18:11.988355', 'user_image.png', 3),
(5, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-23 22:26:14.764202', 'user_image.png', 5),
(6, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-23 22:49:43.588941', 'user_image.png', 6),
(7, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-04-28 20:00:19.272590', 'user_image.png', 7),
(8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:01:17.505714', 'user_image.png', 8),
(9, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-14 22:13:21.197278', 'user_image.png', 9),
(10, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:08:57.465725', 'user_image.png', 10),
(11, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:27:12.135579', 'user_image.png', 11),
(12, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:32:15.054708', 'user_image.png', 12),
(13, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:40:50.777773', 'user_image.png', 13),
(14, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:42:54.379613', 'user_image.png', 14),
(15, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-29 02:43:35.196354', 'user_image.png', 15),
(16, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-04 22:26:40.481860', '427_khun_aguero_agnis_part_3.png', 16);

-- --------------------------------------------------------

--
-- Table structure for table `contas_teste`
--

CREATE TABLE `contas_teste` (
  `id` int(11) NOT NULL,
  `teste1` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-26 23:01:07.844459', '1', 'John Wick – De Volta Ao Jogo', 1, '[{\"added\": {}}]', 9, 2),
(2, '2020-03-27 15:09:10.182689', '2', 'O Senhor dos Anéis: A Sociedade do Anel', 1, '[{\"added\": {}}]', 9, 2),
(3, '2020-03-27 20:31:09.906851', '2', 'O Senhor dos Anéis: A Sociedade do Anel', 2, '[]', 9, 2),
(4, '2020-03-27 20:36:45.037801', '1', 'John Wick – De Volta Ao Jogo', 2, '[{\"changed\": {\"fields\": [\"link\"]}}]', 9, 2),
(5, '2020-03-31 19:57:12.732967', '3', 'Friends', 1, '[{\"added\": {}}]', 9, 2),
(6, '2020-04-02 22:30:24.363596', '4', 'O Senhor dos Anéis - As Duas Torres', 1, '[{\"added\": {}}]', 9, 2),
(7, '2020-04-02 22:30:54.527235', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 9, 2),
(8, '2020-04-02 22:31:31.769654', '1', 'John Wick - De Volta Ao Jogo', 2, '[{\"changed\": {\"fields\": [\"titulo\"]}}]', 9, 2),
(9, '2020-04-02 22:38:30.295584', '5', 'O Senhor dos Anéis - O Retorno do Rei', 1, '[{\"added\": {}}]', 9, 2),
(10, '2020-04-02 22:48:07.012026', '6', 'John Wick - Um Novo Dia Para Matar', 1, '[{\"added\": {}}]', 9, 2),
(11, '2020-04-02 22:50:22.276636', '7', 'John Wick 3 - Parabellum', 1, '[{\"added\": {}}]', 9, 2),
(12, '2020-04-02 23:43:21.624570', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 9, 2),
(13, '2020-04-02 23:43:46.629600', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 9, 2),
(14, '2020-04-02 23:59:50.055162', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 9, 2),
(15, '2020-04-03 00:00:06.935734', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 9, 2),
(16, '2020-04-16 21:59:11.869552', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"email_confirmado\", \"telefone\", \"cep\", \"pais\", \"estado\", \"cidade\", \"logradouro\", \"complemento\", \"numero\"]}}]', 8, 2),
(17, '2020-04-16 23:49:43.182093', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"imagem_perfil\"]}}]', 8, 2),
(18, '2020-04-17 00:06:29.980938', '2', 'admin', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 2),
(19, '2020-04-23 22:37:28.334061', '8', 'Teste trabalhao', 1, '[{\"added\": {}}]', 9, 2),
(20, '2020-04-23 22:39:09.713968', '8', 'Teste trabalhao', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 9, 2),
(21, '2020-04-28 18:32:25.618574', '8', 'Teste trabalhao', 3, '', 9, 2),
(22, '2020-04-28 20:02:23.727204', '7', 'Gelson', 2, '[{\"changed\": {\"fields\": [\"is_active\"]}}]', 4, 2),
(23, '2020-05-07 23:06:49.935113', '1', 'Friends', 1, '[{\"added\": {}}]', 12, 2),
(24, '2020-05-07 23:09:59.821218', '1', 'Friends', 2, '[{\"changed\": {\"fields\": [\"thumbnail\"]}}]', 12, 2),
(25, '2020-05-07 23:15:58.306356', '2', 'Grey\'s Anatomy', 1, '[{\"added\": {}}]', 12, 2),
(26, '2020-05-07 23:18:56.589381', '3', 'Brooklyn Nine-Nine', 1, '[{\"added\": {}}]', 12, 2),
(27, '2020-05-07 23:23:26.829472', '4', 'Mindhunter', 1, '[{\"added\": {}}]', 12, 2),
(28, '2020-05-07 23:27:03.730886', '5', 'Dark', 1, '[{\"added\": {}}]', 12, 2),
(29, '2020-05-07 23:28:59.818438', '6', 'Ragnarok', 1, '[{\"added\": {}}]', 12, 2),
(30, '2020-05-07 23:54:59.414542', '1', 'FavoritosFilmes object (1)', 3, '', 13, 2),
(31, '2020-05-08 00:01:53.980078', '2', 'FavoritosFilmes object (2)', 3, '', 13, 2),
(32, '2020-05-08 00:09:32.050197', '9', 'FavoritosFilmes object (9)', 3, '', 13, 2),
(33, '2020-05-08 00:09:32.279968', '8', 'FavoritosFilmes object (8)', 3, '', 13, 2),
(34, '2020-05-08 00:09:32.513454', '7', 'FavoritosFilmes object (7)', 3, '', 13, 2),
(35, '2020-05-08 00:09:32.749839', '6', 'FavoritosFilmes object (6)', 3, '', 13, 2),
(36, '2020-05-08 00:09:33.143999', '5', 'FavoritosFilmes object (5)', 3, '', 13, 2),
(37, '2020-05-08 00:09:33.380050', '4', 'FavoritosFilmes object (4)', 3, '', 13, 2),
(38, '2020-05-08 00:09:33.615550', '3', 'FavoritosFilmes object (3)', 3, '', 13, 2),
(39, '2020-05-14 00:04:29.237706', '19', 'FavoritosFilmes object (19)', 2, '[{\"changed\": {\"fields\": [\"user_id\"]}}]', 13, 2),
(40, '2020-05-14 21:58:37.625656', '4', 'taverna', 3, '', 4, 2),
(41, '2020-05-14 22:17:59.488913', '8', 'Ghost in the Shell', 1, '[{\"added\": {}}]', 11, 2),
(42, '2020-05-31 21:29:34.465748', '6', 'Ragnarok', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(43, '2020-05-31 21:29:36.282678', '6', 'Ragnarok', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(44, '2020-05-31 21:32:22.037442', '6', 'Ragnarok', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(45, '2020-05-31 21:34:07.141978', '6', 'Ragnarok', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(46, '2020-05-31 22:18:21.522472', '8', 'Ghost in the Shell', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(47, '2020-06-04 13:59:06.575206', '6', 'John Wick 3 - Parabellum', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(48, '2020-06-04 13:59:37.217159', '5', 'John Wick - Um Novo Dia Para Matar', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(49, '2020-06-04 14:00:01.639709', '1', 'John Wick - De Volta Ao Jogo', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(50, '2020-06-04 14:00:58.839442', '2', 'O Senhor dos Anéis - A Sociedade do Anel', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(51, '2020-06-04 14:01:34.157311', '3', 'O Senhor dos Anéis - As Duas Torres', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(52, '2020-06-04 14:02:05.741006', '4', 'O Senhor dos Anéis - O Retorno do Rei', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(53, '2020-06-04 14:07:37.595711', '1', 'John Wick - De Volta Ao Jogo', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(54, '2020-06-04 14:08:00.725483', '1', 'John Wick - De Volta Ao Jogo', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(55, '2020-06-04 14:12:35.891122', '6', 'John Wick 3 - Parabellum', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(56, '2020-06-04 14:12:54.890547', '6', 'John Wick 3 - Parabellum', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 11, 2),
(57, '2020-06-04 14:24:36.874958', '5', 'Dark', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(58, '2020-06-04 14:25:08.968256', '4', 'Mindhunter', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(59, '2020-06-04 14:25:33.844640', '3', 'Brooklyn Nine-Nine', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(60, '2020-06-04 14:26:01.031236', '2', 'Grey\'s Anatomy', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(61, '2020-06-04 14:26:37.636287', '1', 'Friends', 2, '[{\"changed\": {\"fields\": [\"background\"]}}]', 12, 2),
(62, '2020-06-04 17:25:49.306641', '1', 'Piloto', 1, '[{\"added\": {}}]', 15, 2),
(63, '2020-06-04 17:28:18.363592', '2', 'Aquele da Ultrasonografia no Fina', 1, '[{\"added\": {}}]', 15, 2),
(64, '2020-06-04 17:29:56.944221', '3', 'Aquele do Dedão', 1, '[{\"added\": {}}]', 15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'catalogo', 'favoritosfilmes'),
(14, 'catalogo', 'favoritosseries'),
(11, 'catalogo', 'filmes'),
(15, 'catalogo', 'serieepisodio'),
(12, 'catalogo', 'series'),
(8, 'contas', 'perfil'),
(7, 'contas', 'teste'),
(5, 'contenttypes', 'contenttype'),
(10, 'midia', 'favoritos'),
(9, 'midia', 'midia'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-26 22:36:54.914479'),
(2, 'auth', '0001_initial', '2020-03-26 22:37:03.113291'),
(3, 'admin', '0001_initial', '2020-03-26 22:37:08.508477'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-26 22:37:09.488475'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-26 22:37:09.987521'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-03-26 22:37:11.756587'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-03-26 22:37:12.484629'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-03-26 22:37:13.221700'),
(9, 'auth', '0004_alter_user_username_opts', '2020-03-26 22:37:13.713375'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-03-26 22:37:14.446446'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-03-26 22:37:14.941517'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-03-26 22:37:15.453515'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-03-26 22:37:16.217609'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-03-26 22:37:16.958612'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-03-26 22:37:17.692760'),
(16, 'auth', '0011_update_proxy_permissions', '2020-03-26 22:37:18.906509'),
(17, 'contas', '0001_initial', '2020-03-26 22:37:23.465709'),
(18, 'sessions', '0001_initial', '2020-03-26 22:37:25.150270'),
(19, 'midia', '0001_initial', '2020-03-26 23:00:20.659097'),
(20, 'contas', '0002_auto_20200416_2206', '2020-04-17 01:07:11.893816'),
(21, 'catalogo', '0001_initial', '2020-05-07 22:20:06.730686'),
(22, 'contas', '0002_auto_20200507_1919', '2020-05-07 22:20:07.341366'),
(23, 'contas', '0002_auto_20200423_1721', '2020-05-07 22:51:08.439726'),
(24, 'catalogo', '0002_favoritosfilmes', '2020-05-07 23:09:53.352501'),
(25, 'catalogo', '0003_favoritosfilmes_horario', '2020-05-14 00:02:53.640763'),
(26, 'catalogo', '0004_favoritosseries', '2020-05-14 00:25:10.818671'),
(27, 'catalogo', '0005_auto_20200531_1729', '2020-05-31 20:30:04.709023'),
(28, 'contas', '0002_auto_20200531_1827', '2020-05-31 21:28:02.989378');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('6zrd0qrtn3vd1uej51n4nyrza2pl0q6l', 'MTg1OWM1MDNkZDk3MjU0MjA3YWEzN2Y5ZGUyNTE2MmRkMzlkOWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGMyMmNkY2ZlNzZiM2I5NzRiNzgxNTY1ZjU3NDMyNzE0MDhiZDllIn0=', '2020-05-28 22:17:03.619367'),
('7jrztq5dfxl6ezh3mctr1qngp578asau', 'ZTVjMWRmYjQyMmE5YzM5NDhhZDUxMzhjMzYxZDZlNmVkN2NlODhkYjp7Il9hdXRoX3VzZXJfaWQiOiIxNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiODZlNTBjNzZjYjUxZDAyYmRiOGYzMmZmZDNlN2NmYWE2OGI1NTE4MSJ9', '2020-06-19 00:43:52.416708'),
('8wbw12jlo9cc4u4k24bxhw15sjy3lb42', 'ZTg1NjZkMWFkOWE4MzU3ZGM0YmM4Yjc3ZDRmODJiMDlmNDllOTlhZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4N2U1MDNhYjE5ZDlhYWRkZDkxNTFhNjIxYTQ4YjA3MWUxZmVlNjg2In0=', '2020-05-28 22:14:46.702603'),
('9tk1lcmkyubkfnveohn50mtkfv333rjt', 'MTg1OWM1MDNkZDk3MjU0MjA3YWEzN2Y5ZGUyNTE2MmRkMzlkOWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGMyMmNkY2ZlNzZiM2I5NzRiNzgxNTY1ZjU3NDMyNzE0MDhiZDllIn0=', '2020-06-14 22:27:23.994112'),
('b4dk2uj60r9qm21xgn73vcsesz1zze7l', 'MTg1OWM1MDNkZDk3MjU0MjA3YWEzN2Y5ZGUyNTE2MmRkMzlkOWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGMyMmNkY2ZlNzZiM2I5NzRiNzgxNTY1ZjU3NDMyNzE0MDhiZDllIn0=', '2020-04-30 22:21:21.809187'),
('buwnu5bfdco184rquvmkqndlgxp0jdno', 'OWNmOTZkYjk4Yzk1OTVmNjM3YjhiNzQwMmQyYzkxYzQ0NWFiYzc4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OTI5NDFiYzRjZmEyMWNiYzRlMjVlYmQ0MDQ0ZjA5MGUwMzA1MzU4In0=', '2020-05-27 23:41:26.874088'),
('e2kucjp33f3ees1xf9gyfg47wf3jpzxi', 'YTUzMjliOTNhYzk4OTQxYTVkNzMxMTFlNjY2YTAxMjY4N2QwYjg4YTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjlhYTRhZDRiNGUxNmZjYzllOWE4MzU2OTFlMTc2OGNkNDVkNzVhZCJ9', '2020-06-12 02:43:50.636999'),
('jl9swtauy8126cw8anh0l2tcbk8srxg3', 'MTg1OWM1MDNkZDk3MjU0MjA3YWEzN2Y5ZGUyNTE2MmRkMzlkOWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGMyMmNkY2ZlNzZiM2I5NzRiNzgxNTY1ZjU3NDMyNzE0MDhiZDllIn0=', '2020-06-18 13:58:23.228869'),
('phpp5bo8xm3vsunxi9tsh03lut6nxowp', 'YWFiYWIzYjIyNjMxZjE3YmZjMWE1MzJkYzRmNTJhMzBmZTA4Yjg0MDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODY4NGYxMmY3M2ZjMzEyNzU1ZmZmOWUyMWM0ZTFiYTY2NThjYzdkIn0=', '2020-04-17 18:07:00.016907'),
('uedlf9j0m3zs7ej248g7vkqtfzkox78k', 'MTg1OWM1MDNkZDk3MjU0MjA3YWEzN2Y5ZGUyNTE2MmRkMzlkOWFlZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MGMyMmNkY2ZlNzZiM2I5NzRiNzgxNTY1ZjU3NDMyNzE0MDhiZDllIn0=', '2020-05-22 12:51:34.023010');

-- --------------------------------------------------------

--
-- Table structure for table `midia_midia`
--

CREATE TABLE `midia_midia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `ano` int(11) NOT NULL,
  `duracao` varchar(20) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `classificacao` varchar(20) NOT NULL,
  `link` varchar(500) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midia_midia`
--

INSERT INTO `midia_midia` (`id`, `titulo`, `descricao`, `ano`, `duracao`, `categoria`, `genero`, `classificacao`, `link`, `thumbnail`) VALUES
(1, 'John Wick - De Volta Ao Jogo', 'John Wick é um lendário assassino de aluguel aposentado, lidando com o luto após perder o grande amor de sua vida. Quando um gângster invade sua casa, mata seu cachorro e rouba seu carro, ele é forçado a voltar à ativa e inicia sua vingança.', 2014, '107', 'Filme', 'Ação', '16', 'https://www.youtube.com/embed/hPYz9Yz6ekA', 'images_0CUt3Nq.jfif'),
(2, 'O Senhor dos Anéis - A Sociedade do Anel', 'Em uma terra fantástica e única, um hobbit recebe de presente de seu tio um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso, o hobbit Frodo tem um caminho árduo pela frente, onde encontra perigo, medo e seres bizarros. Ao seu lado para o cumprimento desta jornada, ele aos poucos pode contar com outros hobbits, um elfo, um anão, dois humanos e um mago, totalizando nove pessoas que formam a Sociedade do Anel.', 2000, '178', 'Filme', 'Ação', '12', 'https://www.youtube.com/watch?v=YhJZz3U6qpQ', 'sdasa_wMIeOrq.jpg'),
(3, 'Friends', 'Seis amigos, três homens e três mulheres, enfrentam a vida e os amores em Nova York e adoram passar o tempo livre na cafeteria Central Perk.', 1994, '45', 'Serie', 'Comédia', 'L', 'https://www.youtube.com/embed/Xs-HbHCcK58', '3055482.jpg'),
(4, 'O Senhor dos Anéis - As Duas Torres', 'Após a captura de Merry e Pippy pelos orcs, a Sociedade do Anel é dissolvida. Frodo e Sam seguem sua jornada rumo à Montanha da Perdição para destruir o anel e descobrem que estão sendo perseguidos pelo misterioso Gollum. Enquanto isso, Aragorn, o elfo e arqueiro Legolas e o anão Gimli partem para resgatar os hobbits sequestrados e chegam ao reino de Rohan, onde o rei Theoden foi vítima de uma maldição mortal de Saruman.', 2002, '180', 'Filme', 'Aventura', '12', 'https://www.youtube.com/embed/8uwJoAj3gt8', 'sda2t.jpg'),
(5, 'O Senhor dos Anéis - O Retorno do Rei', 'O confronto final entre as forças do bem e do mal que lutam pelo controle do futuro da Terra Média se aproxima. Sauron planeja um grande ataque a Minas Tirith, capital de Gondor, o que faz com que Gandalf e Pippin partam para o local na intenção de ajudar a resistência. Um exército é reunido por Theoden em Rohan, em mais uma tentativa de deter as forças de Sauron. Enquanto isso, Frodo, Sam e Gollum seguem sua viagem rumo à Montanha da Perdição para destruir o anel.', 2003, '201', 'Filme', 'Aventura', '12', 'https://www.youtube.com/embed/r5X-hFf6Bwo', 'sdarr.jpg'),
(6, 'John Wick - Um Novo Dia Para Matar', 'John Wick é forçado a deixar a aposentadoria mais uma vez por causa de uma promessa antiga e viaja para Roma, com o objetivo de ajudar um velho amigo a derrubar uma organização secreta, perigosa e mortal de assassinos procurados em todo o mundo.', 123, '123', 'Filme', 'Ação', '16', 'https://www.youtube.com/embed/REt99QNJ5Gs', 'jw2.jpg'),
(7, 'John Wick 3 - Parabellum', 'O lendário John Wick luta para sair de Nova York quando um contrato de 14 milhões de dólares faz dele o alvo dos maiores assassinos do mundo.', 2019, '132', 'Filme', 'Ação', '16', 'https://www.youtube.com/embed/2PKNnrTe-Bg', 'jw3.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `catalogo_favoritosfilmes`
--
ALTER TABLE `catalogo_favoritosfilmes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalogo_favoritosfilmes_user_id_id_filme_id_id_1e85e595_uniq` (`user_id_id`,`filme_id_id`),
  ADD KEY `catalogo_favoritosfi_filme_id_id_6b9586e8_fk_catalogo_` (`filme_id_id`);

--
-- Indexes for table `catalogo_favoritosseries`
--
ALTER TABLE `catalogo_favoritosseries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalogo_favoritosseries_user_id_id_serie_id_id_cc2a809d_uniq` (`user_id_id`,`serie_id_id`),
  ADD KEY `catalogo_favoritosse_serie_id_id_90beaeef_fk_catalogo_` (`serie_id_id`);

--
-- Indexes for table `catalogo_filmes`
--
ALTER TABLE `catalogo_filmes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogo_serieepisodio`
--
ALTER TABLE `catalogo_serieepisodio`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalogo_serieepisod_serie_id_id_79938c3f_fk_catalogo_` (`serie_id_id`);

--
-- Indexes for table `catalogo_series`
--
ALTER TABLE `catalogo_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contas_perfil`
--
ALTER TABLE `contas_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `contas_teste`
--
ALTER TABLE `contas_teste`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `midia_midia`
--
ALTER TABLE `midia_midia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalogo_favoritosfilmes`
--
ALTER TABLE `catalogo_favoritosfilmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `catalogo_favoritosseries`
--
ALTER TABLE `catalogo_favoritosseries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `catalogo_filmes`
--
ALTER TABLE `catalogo_filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `catalogo_serieepisodio`
--
ALTER TABLE `catalogo_serieepisodio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `catalogo_series`
--
ALTER TABLE `catalogo_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contas_perfil`
--
ALTER TABLE `contas_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contas_teste`
--
ALTER TABLE `contas_teste`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `midia_midia`
--
ALTER TABLE `midia_midia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `catalogo_favoritosfilmes`
--
ALTER TABLE `catalogo_favoritosfilmes`
  ADD CONSTRAINT `catalogo_favoritosfilmes_user_id_id_b547ebdb_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `catalogo_favoritosfi_filme_id_id_6b9586e8_fk_catalogo_` FOREIGN KEY (`filme_id_id`) REFERENCES `catalogo_filmes` (`id`);

--
-- Constraints for table `catalogo_favoritosseries`
--
ALTER TABLE `catalogo_favoritosseries`
  ADD CONSTRAINT `catalogo_favoritosseries_user_id_id_ea7e6db0_fk_auth_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `catalogo_favoritosse_serie_id_id_90beaeef_fk_catalogo_` FOREIGN KEY (`serie_id_id`) REFERENCES `catalogo_series` (`id`);

--
-- Constraints for table `catalogo_serieepisodio`
--
ALTER TABLE `catalogo_serieepisodio`
  ADD CONSTRAINT `catalogo_serieepisod_serie_id_id_79938c3f_fk_catalogo_` FOREIGN KEY (`serie_id_id`) REFERENCES `catalogo_series` (`id`);

--
-- Constraints for table `contas_perfil`
--
ALTER TABLE `contas_perfil`
  ADD CONSTRAINT `contas_perfil_user_id_7a959777_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
