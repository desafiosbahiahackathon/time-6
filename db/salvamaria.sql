-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04-Jun-2017 às 21:43
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salvamaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `matricula` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admins`
--

INSERT INTO `admins` (`id`, `matricula`, `senha`, `nome`, `createdAt`, `updatedAt`) VALUES
(8, '5436534543', '123456', 'Maria', '2017-06-04', '2017-06-04'),
(9, '324242342', '24234', 'Joana', '2017-06-04', '2017-06-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `certeses`
--

CREATE TABLE `certeses` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `testemunha` varchar(100) DEFAULT NULL,
  `depoimento_usuaria` mediumtext,
  `depoimento_agressor` mediumtext,
  `users_id` int(11) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `grau_risco` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `certeses`
--

INSERT INTO `certeses` (`id`, `tipo`, `data`, `testemunha`, `depoimento_usuaria`, `depoimento_agressor`, `users_id`, `createdAt`, `updatedAt`, `grau_risco`) VALUES
(1, 'Agressão', '2017-06-15', 'Maria (Vizinha)', 'Invadiu minha casa', '"Não fiz nada"', 11, NULL, NULL, 'alto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dailys`
--

CREATE TABLE `dailys` (
  `id` int(11) NOT NULL,
  `data` varchar(255) DEFAULT NULL,
  `descricao` text,
  `user_id` int(11) DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `createdAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dailys`
--

INSERT INTO `dailys` (`id`, `data`, `descricao`, `user_id`, `updatedAt`, `createdAt`) VALUES
(1, '2017-05-31', 'Ele passou perto da minha casa', NULL, '2017-06-04', NULL),
(2, '2017-06-07', 'Mandou recado pelo amigo', NULL, '2017-06-04', '2017-06-04'),
(3, '2017-05-31', 'Mandou uma mensagem no celular', NULL, '2017-06-04', '2017-06-04'),
(4, '2017-05-31', 'Deixou um bilhete na minha porta', NULL, '2017-06-04', '2017-06-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `processo` varchar(255) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  `updatedAt` date DEFAULT NULL,
  `rua` varchar(255) DEFAULT NULL,
  `bairro` varchar(255) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `complemento` varchar(255) DEFAULT NULL,
  `endereco_visita` varchar(255) DEFAULT NULL,
  `ponto_referencia` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `turno_visita` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `filhos` varchar(255) DEFAULT NULL,
  `filhos_com_agressor` varchar(255) DEFAULT NULL,
  `escolaridade` varchar(255) DEFAULT NULL,
  `etnia` varchar(255) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `religiao` varchar(255) DEFAULT NULL,
  `profissao` varchar(255) DEFAULT NULL,
  `trabalha` varchar(255) DEFAULT NULL,
  `ultimo_emprego` varchar(255) DEFAULT NULL,
  `local_trabalho` varchar(255) DEFAULT NULL,
  `renda` varchar(255) DEFAULT NULL,
  `responsavel_sustento` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `processo`, `createdAt`, `updatedAt`, `rua`, `bairro`, `numero`, `cidade`, `complemento`, `endereco_visita`, `ponto_referencia`, `telefone`, `turno_visita`, `estado_civil`, `filhos`, `filhos_com_agressor`, `escolaridade`, `etnia`, `idade`, `religiao`, `profissao`, `trabalha`, `ultimo_emprego`, `local_trabalho`, `renda`, `responsavel_sustento`) VALUES
(11, 'Felipa', '1244', '2017-06-04', '2017-06-04', 'rua governador josé ferreira', 'federação', 424, 'Salvador', 'casa', 'fdf', 'fsf', 'fsf', 'fsfs', 'fsfs', 'uuuuuu', 'uuuuuuuu', 'uuuuuu', 'uuuuuuuu', 1, 'uuuuuuu', 'uuuuuuu', 'uuuuuu', 'uuuuuuu', 'u', 'uu', 'uuu'),
(14, 'Tainara', '56475564', '2017-06-04', '2017-06-04', 'Avenida Cardeal da Silva', 'federacao', 1234, 'Salvador', 'casa', 'Avenida Cardeal da Silva', 'pizzaria', '124453', 'tarde', 'bahia', '2', '2', 'mÃ©dio', 'preta', 13, 'evangelica', 'professora ', 'sim', 'costureira', 'Salvador', '800,00', 'marido');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certeses`
--
ALTER TABLE `certeses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_certidoes_users_idx` (`users_id`);

--
-- Indexes for table `dailys`
--
ALTER TABLE `dailys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `certeses`
--
ALTER TABLE `certeses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dailys`
--
ALTER TABLE `dailys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `certeses`
--
ALTER TABLE `certeses`
  ADD CONSTRAINT `fk_certidoes_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
