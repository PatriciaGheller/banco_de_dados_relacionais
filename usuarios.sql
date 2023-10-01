-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-148219-db.mariadb-148219:10064
-- Tempo de geração: 01-Out-2023 às 19:01
-- Versão do servidor: 10.5.12-MariaDB-1:10.5.12+maria~bionic
-- versão do PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viagens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome do usuário',
  `email` varchar(255) NOT NULL COMMENT 'Endereço de e-mail do usuário',
  `data_nascimento` date NOT NULL COMMENT 'Data de nascimento do usuário',
  `rua` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `data_nascimento`, `rua`, `numero`, `cidade`, `estado`) VALUES
(2, 'Maria Santos', 'maria@example.com', '1985-08-22', 'Rua B', ' 456', ' Cidade Y', ' Estado Z'),
(3, 'Pedro Souza', 'pedro@example.com', '1998-02-10', 'Avenida C', ' 789', ' Cidade X', ' Estado Y'),
(4, 'João Maria', 'joaomaria@example.com', '1990-01-01', 'Rua A', ' 123', ' 123', ' 123'),
(6, 'Usuario sem reservas', 'semreservar@teste.com', '1990-10-10', 'Rua', '123', 'cidade', 'estado'),
(8, 'João Silva', 'joao.silva@example.com', '1990-01-01', 'Rua A', NULL, NULL, NULL),
(9, 'Maria Santos', 'maria.santos@example.com', '1992-03-15', 'Rua B', NULL, NULL, NULL),
(10, 'Pedro Almeida', 'pedro.almeida@example.com', '1985-07-10', 'Rua C', NULL, NULL, NULL),
(11, 'Ana Oliveira', 'ana.oliveira@example.com', '1998-12-25', 'Rua D', NULL, NULL, NULL),
(12, 'Carlos Pereira', 'carlos.pereira@example.com', '1991-06-05', 'Rua E', NULL, NULL, NULL),
(13, 'Laura Mendes', 'laura.mendes@example.com', '1994-09-12', 'Rua F', NULL, NULL, NULL),
(14, 'Fernando Santos', 'fernando.santos@example.com', '1988-02-20', 'Rua G', NULL, NULL, NULL),
(15, 'Mariana Costa', 'mariana.costa@example.com', '1997-11-30', 'Rua H', NULL, NULL, NULL),
(16, 'Ricardo Rodrigues', 'ricardo.rodrigues@example.com', '1993-04-18', 'Rua I', NULL, NULL, NULL),
(17, 'Camila Alves', 'camila.alves@example.com', '1989-08-08', 'Rua J', NULL, NULL, NULL),
(18, 'Bruno Carvalho', 'bruno.carvalho@example.com', '1995-03-25', 'Rua K', NULL, NULL, NULL),
(19, 'Amanda Silva', 'amanda.silva@example.com', '1996-12-02', 'Rua L', NULL, NULL, NULL),
(20, 'Paulo Mendonça', 'paulo.mendonca@example.com', '1999-07-20', 'Rua M', NULL, NULL, NULL),
(21, 'Larissa Oliveira', 'larissa.oliveira@example.com', '1987-10-15', 'Rua N', NULL, NULL, NULL),
(22, 'Fernanda Sousa', 'fernanda.sousa@example.com', '1992-05-08', 'Rua O', NULL, NULL, NULL),
(23, 'Gustavo Santos', 'gustavo.santos@example.com', '1993-09-18', 'Rua P', NULL, NULL, NULL),
(24, 'Helena Costa', 'helena.costa@example.com', '1998-02-22', 'Rua Q', NULL, NULL, NULL),
(25, 'Diego Almeida', 'diego.almeida@example.com', '1991-11-27', 'Rua R', NULL, NULL, NULL),
(26, 'Juliana Lima', 'juliana.lima@example.com', '1997-04-05', 'Rua S', NULL, NULL, NULL),
(27, 'Rafaela Silva', 'rafaela.silva@example.com', '1996-01-10', 'Rua T', NULL, NULL, NULL),
(28, 'Lucas Pereira', 'lucas.pereira@example.com', '1986-08-30', 'Rua U', NULL, NULL, NULL),
(29, 'Fábio Rodrigues', 'fabio.rodrigues@example.com', '1989-03-12', 'Rua V', NULL, NULL, NULL),
(30, 'Isabela Santos', 'isabela.santos@example.com', '1994-12-07', 'Rua W', NULL, NULL, NULL),
(31, 'André Alves', 'andre.alves@example.com', '1995-09-28', 'Rua X', NULL, NULL, NULL),
(32, 'Clara Carvalho', 'clara.carvalho@example.com', '1990-02-15', 'Rua Y', NULL, NULL, NULL),
(33, 'Roberto Mendes', 'roberto.mendes@example.com', '1992-07-21', 'Rua Z', NULL, NULL, NULL),
(34, 'Mariana Oliveira', 'mariana.oliveira@example.com', '1997-05-03', 'Av. A', NULL, NULL, NULL),
(35, 'Gustavo Costa', 'gustavo.costa@example.com', '1998-11-16', 'Av. B', NULL, NULL, NULL),
(36, 'Lara Sousa', 'lara.sousa@example.com', '1993-06-09', 'Av. C', NULL, NULL, NULL),
(37, 'Pedro Lima', 'pedro.lima@example.com', '1996-09-27', 'Av. D', NULL, NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_nome` (`nome`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
