-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 07/12/2023 às 20:23
-- Versão do servidor: 5.7.23-23
-- Versão do PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `starho41_fc`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(95) NOT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(97) NOT NULL,
  `telefone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `email`, `telefone`) VALUES
(2, 'Gabriel Cordeiro', '333.333.333-33', 'gabrielpikachuoficial@gmail.com', '(88) 98751-2680');

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(11) NOT NULL,
  `imagem` varchar(270) NOT NULL,
  `nome` varchar(85) NOT NULL,
  `funcao` varchar(97) NOT NULL,
  `detalhe` varchar(200) NOT NULL,
  `valorcompra` varchar(95) NOT NULL,
  `valorvenda` varchar(95) NOT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `vendido` int(255) NOT NULL,
  `marca` varchar(95) NOT NULL,
  `peso` varchar(95) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`id`, `imagem`, `nome`, `funcao`, `detalhe`, `valorcompra`, `valorvenda`, `quantidade`, `vendido`, `marca`, `peso`) VALUES
(2, 'img/estoque/equipalazone.webp', 'Equipalazone', 'Anti-Inflamatórios', 'Mensagem 2', ' 55.90', '62.90', 2, 40, 'Ceva', '100ml'),
(3, 'img/estoque/diclofenato.jpg', 'Diclofenaco', 'Anti-Inflamatórios', 'Mensagem 2', '8.50', '12.90', 0, 65, 'JASaúdeAnimal', '50ml'),
(4, 'img/estoque/cortvet.webp', 'Cortvet', 'Anti-Inflamatórios', 'Mensagem 2', '4.90', '7.40', 40, 10, 'UCB', '10ml'),
(5, 'img/estoque/CortTrat.webp', 'Cort-trat', 'Anti-Inflamatórios', 'Mensagem 2', '19.90', '25.90', 40, 0, 'SM', '100g'),
(6, 'img/estoque/diuzon.webp', 'Diuzon', 'Anti-Inflamatórios', 'Mensagem 2', '39.90', '45.90', 6, 6, 'Chemitec', '10ml'),
(7, 'img/estoque/flumax.webp', 'Flumax', 'Anti-Inflamatórios', 'Mensagem 2', '77.90', '89.90', 5, 4, 'JASaúdeAnimal', '100ml'),
(8, 'img/estoque/terramicina-la.webp', 'Terramicina /LA', 'Antibióticos', 'Mensagem 3', '15.90', '20.90', 56, 4, 'ZOETIS', '50ml'),
(9, 'img/estoque/Terramicina_mais_+.webp', ' Terramicina mais +', 'Anti-Inflamatórios', 'Mensagem 1', '15.85', '19.90', 31, 9, 'ZOETIS', '50ml'),
(10, 'img/estoque/terramicina_po.webp', 'Terramicina Pó', 'Antibióticos', 'Mensagem 2', '19.00', '24.40', 0, 22, 'ZOETIS', '100g'),
(11, 'img/estoque/cef-50.webp', 'Cef-50', 'Antibióticos', 'Mensagem 3', '55.90', '60.00', 40, 5, 'Agener', '100ml'),
(12, 'img/estoque/Agemoxi-Cl.webp', 'Agemoxi-CL', 'Antibióticos', 'Mensagem 2', '55.90', '60.00', 2, 4, 'Agemoxi', '250mg'),
(13, 'img/estoque/Pulmodrazin_Plus.webp', 'Pulmodrazin Plus', 'Antimicrobianos', 'Mensagem 1', '18.80', '23.15', 0, 12, 'Pearson', '25ml'),
(14, 'img/estoque/pencil-pronto.webp', 'Pencil Pronto', 'Antimicrobianos', 'Mensagem 1', '16.90', '22.00', 25, 0, 'Calbos', '50ml'),
(15, 'img/estoque/Acura.webp', 'Acura', 'Antimicrobianos', 'Mensagem 2', '25.90', '33.00', 0, 45, 'Clarion', '25ml'),
(16, 'img/estoque/Tribrissen.jpg', ' Tribrissen', 'Antimicrobianos', 'Mensagem 2', '19.85', '25.05', 42, 3, 'Virbac', '15ml'),
(17, 'img/estoque/Mastical_Seringa.jpg', 'Mastical Seringa', 'Antimicrobianos', 'Mensagem 1', '4.50', '6.10', 0, 90, 'Calbos', '10ml'),
(18, 'img/estoque/antitoxico_oral.webp', 'Antitóxicos SM', 'Antitóxicos', 'Mensagem 1', '14.30', '20.22', 0, 22, 'SM', '20ml'),
(21, 'img/estoque/anestesico-vansil.jpg', 'Anestésico Vansil', 'Anestésicos', 'Mensagem 3', '17.20', '25.90', 43, 2, 'Vansil', '100ml'),
(22, 'img/estoque/Verrutrat.webp', 'Verrutrat', 'Profilaxia e Tratamento', 'Mensagem 2', '16.90', '22.80', 54, 0, 'UCB', '20ml'),
(23, 'img/estoque/Tristezina.webp', 'Tristezina', 'Profilaxia e Tratamento', 'Mensagem 2', '22.20', '28.90', 45, 0, 'UCB', '20ml'),
(24, 'img/estoque/Imizol.webp', 'Imizol', 'Profilaxia e Tratamento', 'Mensagem 2', '59.90', '66.90', 14, 0, 'MSD', '15ml'),
(25, 'img/estoque/ferron.webp', 'Ferron B-12', 'Suplementos e Vitaminas', 'Mensagem 3', '16.21', '21.12', 59, 1, 'Calbos', '100ml'),
(26, 'img/estoque/ferron_50.webp', 'Ferron B-12', 'Suplementos e Vitaminas', 'Mensagem 2', '16.90', '22.80', 48, 1, 'Calbos', '50ml'),
(27, 'img/estoque/Rubralan.webp', 'Rubralan 5000', 'Suplementos e Vitaminas', 'Mensagem 1', '14.90', '19.00', 85, 0, 'Calbos', '10ml'),
(28, 'img/estoque/Rubralan_50.webp', 'Rubralan 5000', 'Suplementos e Vitaminas', 'Mensagem 2', '35.90', '40.90', 85, 0, 'Calbos', '50ml'),
(29, 'img/estoque/PhenodralAmpola.webp', ' Phenodral Ampola', 'Suplementos e Vitaminas', 'Mensagem 2', '8.50', '13.80', 60, 0, 'UCB', '15ml'),
(30, 'img/estoque/organovit-100.png', 'Organovit', 'Suplementos e Vitaminas', 'Mensagem 2', '25.90', '37.00', 53, 1, 'Biofarm', '100ml'),
(31, 'img/estoque/organovit-500.webp', 'Organovit', 'Suplementos e Vitaminas', 'Mensagem 3', '147.00', '197.90', 88, 1, 'Biofarm', '500ml'),
(32, 'img/estoque/BioLeite.png', 'BioLeite', 'Suplementos e Vitaminas', 'Mensagem 2', '900.00', '998.00', 0, 90, 'Quimvet', '10KG'),
(45, 'img/estoque/Nestle.webp', 'Raçãoasd', 'ração', 'sad', '0.023', '0.032', 0, 9000, 'da', 'n'),
(46, 'img/estoque/terra_cortril.webp', 'Terra-Cortril Spray', 'Anti-Inflamatórios', 'sdsdd', ' 25', '37.45', 0, 4, 'ZOETIS	', '100ml	'),
(57, 'img/estoque/ARvore.jpg', 'ração papita', 'Ração', 'rrwerewrwe', '0.01', '0.012', 10000, 0, 'adsad', 'kg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`) VALUES
(1, 'adm', '123'),
(2, 'teste', '321');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
