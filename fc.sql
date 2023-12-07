-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/11/2023 às 13:34
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `fc`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `email`, `telefone`) VALUES
(5, 'JOSÃ‰ BELO', '', '', '(88) 99624-0652');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estoque`
--

INSERT INTO `estoque` (`id`, `imagem`, `nome`, `funcao`, `detalhe`, `valorcompra`, `valorvenda`, `quantidade`, `vendido`, `marca`, `peso`) VALUES
(1, 'img/estoque/terra_cortril.webp', 'Terra-Cortril Spray', 'Anti-Inflamatï¿½rios', 'Mensagem 2', '31', '45,40', 1, 17, 'ZOETIS', '100ml'),
(2, 'img/estoque/equipalazone.webp', 'Equipalazone', 'Anti-Inflamatórios', 'Mensagem 2', '55.90', '62.90', 3, 17, 'Ceva', '100ml'),
(3, 'img/estoque/diclofenato.jpg', 'Diclofenaco', 'Anti-Inflamatórios', 'Mensagem 2', '8.50', '12.90', 0, 65, 'JASaúdeAnimal', '50ml'),
(4, 'img/estoque/cortvet.webp', 'Cortvet', 'Anti-Inflamatórios', 'Mensagem 2', '4.90', '7.40', 45, 5, 'UCB', '10ml'),
(5, 'img/estoque/CortTrat.webp', 'Cort-trat', 'Anti-Inflamatórios', 'Mensagem 2', '19.90', '25.90', 40, 0, 'SM', '100g'),
(6, 'img/estoque/diuzon.webp', 'Diuzon', 'Anti-Inflamatórios', 'Mensagem 2', '39.90', '45.90', 12, 0, 'Chemitec', '10ml'),
(7, 'img/estoque/flumax.webp', 'Flumax', 'Anti-Inflamatï¿½rios', 'Mensagem 2', '0,0', '67,6', 4, 1, 'JA Saï¿½deAnimal', '50ml'),
(8, 'img/estoque/terramicina-la.webp', 'Terramicina /LA', 'Antibióticos', 'Mensagem 3', '15.90', '20.90', 59, 1, 'ZOETIS', '50ml'),
(9, 'img/estoque/Terramicina_mais_+.webp', ' Terramicina mais +', 'Anti-Inflamatórios', 'Mensagem 1', '15.85', '19.90', 40, 0, 'ZOETIS', '50ml'),
(10, 'img/estoque/terramicina_po.webp', 'Terramicina Pó', 'Antibióticos', 'Mensagem 2', '19.00', '24.40', 22, 0, 'ZOETIS', '100g'),
(11, 'img/estoque/cef-50.webp', 'Cef-50', 'Antibióticos', 'Mensagem 3', '55.90', '60.00', 42, 3, 'Agener', '100ml'),
(12, 'img/estoque/Agemoxi-Cl.webp', 'Agemoxi-CL', 'Antibióticos', 'Mensagem 2', '55.90', '60.00', 0, 6, 'Agemoxi', '250mg'),
(13, 'img/estoque/Pulmodrazin_Plus.webp', 'Pulmodrazin Plus', 'Antimicrobianos', 'Mensagem 1', '18.80', '23.15', 10, 2, 'Pearson', '25ml'),
(14, 'img/estoque/pencil-pronto.webp', 'Pencil Pronto', 'Antimicrobianos', 'Mensagem 1', '16.90', '22.00', 25, 0, 'Calbos', '50ml'),
(15, 'img/estoque/Acura.webp', 'Acura', 'Antimicrobianos', 'Mensagem 2', '25.90', '33.00', 45, 0, 'Clarion', '25ml'),
(16, 'img/estoque/Tribrissen.jpg', ' Tribrissen', 'Antimicrobianos', 'Mensagem 2', '19.85', '25.05', 43, 2, 'Virbac', '15ml'),
(17, 'img/estoque/Mastical_Seringa.jpg', 'Mastical Seringa', 'Antimicrobianos', 'Mensagem 1', '4.50', '6.10', 88, 2, 'Calbos', '10ml'),
(18, 'img/estoque/antitoxico_oral.webp', 'Antitóxicos SM', 'Antitóxicos', 'Mensagem 1', '14.30', '20.22', 22, 0, 'SM', '20ml'),
(19, 'img/estoque/Mercepton.webp', 'Mercepton', 'Antitóxicos', 'Mensagem 1', '25.90', '32.06', 34, 2, 'Bravet', '100ml'),
(20, 'img/estoque/Anestésico_bravet.webp', 'Anestésico Bravet', 'Anestésicos', 'Mensagem 2', '17.20', '22.80', 29, 1, 'Bravet', '50ml'),
(21, 'img/estoque/anestesico-vansil.jpg', 'Anestésico Vansil', 'Anestésicos', 'Mensagem 3', '17.20', '25.90', 44, 1, 'Vansil', '100ml'),
(22, 'img/estoque/Verrutrat.webp', 'Verrutrat', 'Profilaxia e Tratamento', 'Mensagem 2', '16.90', '22.80', 54, 0, 'UCB', '20ml'),
(23, 'img/estoque/Tristezina.webp', 'Tristezina', 'Profilaxia e Tratamento', 'Mensagem 2', '22.20', '28.90', 45, 0, 'UCB', '20ml'),
(24, 'img/estoque/Imizol.webp', 'Imizol', 'Profilaxia e Tratamento', 'Mensagem 2', '59.90', '66.90', 14, 0, 'MSD', '15ml'),
(25, 'img/estoque/ferron.webp', 'Ferron B-12', 'Suplementos e Vitaminas', 'Mensagem 3', '16.21', '21.12', 60, 0, 'Calbos', '100ml'),
(26, 'img/estoque/ferron_50.webp', 'Ferron B-12', 'Suplementos e Vitaminas', 'Mensagem 2', '16.90', '22.80', 49, 0, 'Calbos', '50ml'),
(27, 'img/estoque/Rubralan.webp', 'Rubralan 5000', 'Suplementos e Vitaminas', 'Mensagem 1', '14.90', '19.00', 85, 0, 'Calbos', '10ml'),
(28, 'img/estoque/Rubralan_50.webp', 'Rubralan 5000', 'Suplementos e Vitaminas', 'Mensagem 2', '35.90', '40.90', 85, 0, 'Calbos', '50ml'),
(29, 'img/estoque/PhenodralAmpola.webp', ' Phenodral Ampola', 'Suplementos e Vitaminas', 'Mensagem 2', '8.50', '13.80', 60, 0, 'UCB', '15ml'),
(30, 'img/estoque/organovit-100.png', 'Organovit', 'Suplementos e Vitaminas', 'Mensagem 2', '25.90', '37.00', 53, 1, 'Biofarm', '100ml'),
(31, 'img/estoque/organovit-500.webp', 'Organovit', 'Suplementos e Vitaminas', 'Mensagem 3', '147.00', '197.90', 88, 1, 'Biofarm', '500ml'),
(32, 'img/estoque/BioLeite.png', 'BioLeite', 'Suplementos e Vitaminas', 'Mensagem 2', '900.00', '998.00', 90, 0, 'Quimvet', '10KG'),
(46, 'img/estoque/vetiolate_antissepico_de_uso_veterinario_30ml_2847_1_f618ce270357b608096bf06776e19cfe.webp', 'VETIOLATE ', 'ANTISSÃ‰PTICO', '', '', 'R$24,90', 3, 0, 'BIOFARM', '30 ML'),
(47, 'img/estoque/c7acac524aa0245943d8af2da00a5224.webp', 'PREVIN COLEIRA', 'ANTIPULGAS E CARRAPATOS', '', '', 'R$48,00', 8, 0, 'COVELI', '24g'),
(48, 'img/estoque/', 'PREVEMPET TALCO', 'ANTIPULGAS, CARRAPATOS E PIOLHOS', '', '', 'R$13,00', 4, 0, 'PROVETS SIMOES', '100g'),
(49, 'img/estoque/CLOREXIDINA', 'SHAMPOO CLOREXIDINA', '', '', '', 'R$33,75', 11, 0, 'WORLD', '500ML'),
(50, 'img/estoque/REX', 'SABONETE ENXOFRE', 'ANTI-SARNA E COCEIRAS', '', '', 'R$11,70', 1, 0, 'REX', '80g'),
(51, 'img/estoque/3110173-1.jpg', 'SIMPARIC 5 A 10KG', 'ANTI-PULGAS, CARRAPATOS E SARNAS', 'COMPRIMIDOS', '', 'R$98,50', 18, 0, 'ZOETIS', '20mg'),
(52, 'img/estoque/10 A 20', 'SIMPARIC 10 A 20KG', 'ANTI-PULGAS, CARRAPATOS E SARNAS', 'COMPRIMIDOS', '', 'R$116,60', 15, 0, 'ZOETIS', '80g'),
(53, 'img/estoque/DESODORANTE.jpg', 'DESODORANTE ANTI-PULGAS', 'ANTIPULGAS E BANHO A SECO', 'AÃ‡ÃƒO REPELENTE', '', 'R$36,00', 1, 0, 'MON AMI', '200ml'),
(54, 'img/estoque/POMADA.jpg', 'NGF-5 POMADA', 'DESCONGESTIONANTE E ANALGESICO', 'CONTÃ‰M CANFORA E MENTOL', '', 'R$33,40', 3, 0, 'CEVA', '100g'),
(55, 'img/estoque/UNGUENTO', 'UNGUENTO ', 'CICATRIZANTE', '', '', 'R$18,60', 3, 0, 'CHEMITEC', '50g'),
(56, 'img/estoque/Pomada-Unguento-Chemitec-200g-7898096852244-1.png', 'UNGUENTO ', 'CICATRIZANTE', '', '', 'R$29,50', 3, 0, 'CHEMITEC', '200G'),
(57, 'img/estoque/1530188963584.jpg', 'MATABICHEIRAS', 'CICATRIZANTE', '', '', 'R$12,00', 22, 0, 'ZOETIS', '500ml'),
(58, 'img/estoque/mata-bicheira-silverbac-sulfadiazina-de-prata-500-ml_187523.webp', 'SILVERBAC PRATA', 'CICATRIZANTE', '', '', 'R$24,60', 3, 0, 'LABGARD', '500ML'),
(59, 'img/estoque/AEROCID', 'AEROCID TOTAL', 'CICATRIZANTE', '', '', 'R$16,50', 23, 0, 'AGENER UNIÃƒO', '200ml'),
(60, 'img/estoque/tintura-de-iodo-10-100ml-9566526-1689712321540.png', 'IODO 10%', 'CICATRIZANTE', 'PASSAR EM UMBIGO DE RECEM NASCIDO', '', 'R$28,00', 4, 0, 'PINUS', '100ML'),
(61, 'img/estoque/ganadol-pomada-50-g_186952.webp', 'GANADOL', 'CICATRIZANTE', '', '', 'R$48,70', 1, 0, 'ZOETIS', '50g'),
(62, 'img/estoque/download.jpg', 'IVERMAX 1 A 5KG', 'ANTIPULGAS, CARRAPATOS E VERMES', 'CX', '', 'R$15,60', 16, 0, 'PRODUTO IMPORTADO', '1mg'),
(63, 'img/estoque/WhatsApp Image 2023-11-08 at 14.57.12.jpeg', 'IVERMAX 5 A 15KG', 'ANTIPULGAS, CARRAPATOS E VERMES', '', '', 'R$17,80', 9, 0, 'PRODUTO IMPORTADO', '3mg'),
(64, 'img/estoque/images.jpg', 'IVERMAX 15 A 30KG', 'ANTIPULGAS, CARRAPATOS E VERMES', 'cx', '', 'R$19,70', 8, 0, 'PRODUTO IMPORTADO', '5mg'),
(65, 'img/estoque/OVERDOG.jpg', 'OVERDOG 2 A 10KG', 'ANTIPULGAS E CARRAPATOS', 'COMPRIMIDOS', '', 'R$63,30', 3, 0, 'PRODUTO IMPORTADO', ''),
(66, 'img/estoque/0d3dbe58-16ec-4b9d-a2b9-e527f153107e.jpg', 'OVERDOG 10 A 20KG', 'ANTIPULGAS E CARRAPATOS', 'COMPRIMIDOS', '', 'R$70,00', 3, 0, 'PRODUTO IMPORTADO', ''),
(67, 'img/estoque/1a4d754e-cb53-488c-8d43-4c8793a6e096.jpg', 'OVERDOG 20 A 30KG', 'ANTIPULGAS E CARRAPATOS', '', '', 'R$76,60', 1, 0, 'PRODUTO IMPORTADO', ''),
(68, 'img/estoque/defefnd pro', 'DEFEND PRO ATÃ‰ 10KG', 'ANTIPULGAS E CARRAPATOS', 'PIPETA, USO TÃ“PICO', '', 'R$23,00', 5, 0, 'BIOVET', '0,60ml'),
(69, 'img/estoque/20', 'DEFEND PRO 10 a 20KG', 'ANTIPULGAS E CARRAPATOS', 'PIPETA, USO TÃ“PICO', '', 'R$27,50', 2, 0, 'BIOVET', '1,34ML'),
(70, 'img/estoque/download (1).jpg', 'DEFEND PRO 20 A 40KG', 'ANTIPULGAS E CARRAPATOS', 'PIPETA, USO TÃ“PICO', '', 'R$31,50', 1, 0, 'BIOVET', '2,68ML'),
(71, 'img/estoque/GATOS.webp', 'DEFEND PRO GATOS', 'ANTIPULGAS E CARRAPATOS', '', '', 'R$28,75', 3, 0, 'BIOVET', '0,50ml'),
(72, 'img/estoque/IVERCANIUS', 'IVERCANIS 15KG', 'ANTIPULGAS E CARRAPATOS', 'COMPRIMIDOS', '', 'R$4,50', 10, 0, 'WORLD', '3mg'),
(73, 'img/estoque/ivercanis-6mg-casa-do-produtor.webp', 'IVERCANIS 30KG', 'ANTIPULGAS E CARRAPATOS', 'COMPRIMIDOS', '', 'R$6,00', 17, 0, 'WORLD', '6mg'),
(74, 'img/estoque/VERMI.webp', 'NATUVERM ORAL', 'VERMIFUGO', 'CÃƒES E GATOS', '', 'R$15,60', 5, 0, 'VETBRAS', '20ml'),
(75, 'img/estoque/1654521042966.jpg', 'DIPIRONA GOTAS', 'ANALGESICO', '', '', 'R$30,20', 5, 0, 'BIOVET', '20ML'),
(76, 'img/estoque/neocidol-21-0c813b2976da001b6916444938862960-640-0.jpg', 'NEOCIDOL B-40', 'ANTIPARASITARIO ', 'SACHÃŠ C/10 BRINCOS', '', 'R$70,50', 8, 0, 'VALLE', ''),
(77, 'img/estoque/cipermetrina-6-pour-on-1-litro_185827.webp', 'CIPERMETRINA POUR-ON 6%', 'ANTIPARASITARIO ', 'USO TÃ“PICO', '', 'R$42,85', 2, 0, 'CALBOS', '1L'),
(78, 'img/estoque/d3b5b5cf-d99e-4904-97ad-8e05e4d219c7.jpg', 'DECATHRINE SC 25 ', 'INSETICIDA DE AMBIENTES', '', '', 'R$8,50', 3, 0, 'AGENER UNIÃƒO', '30ML'),
(79, 'img/estoque/COLOSSO', 'COLOSSO', 'ANTIPARASITARIO ', 'PULVERIZAÃ‡ÃƒO', '', 'R$8,50', 37, 0, 'OURO FINO', '25ML'),
(80, 'img/estoque/barrage_15ce_20ml_1488_1_e1b3901c4304deb3d207cc38afb5cf86.webp', 'BARRAGE', 'ANTIPARASITARIO ', '', '', 'R$5,50', 15, 0, 'ZOETIS', '20ml'),
(81, 'img/estoque/TOP LINE', 'TOP LINE POUR-ON', 'ANTIPARASITARIO ', '', '', 'R$176,90', 2, 0, 'BOEHRINGER INGELHEIM', '1L'),
(82, 'img/estoque/1607024197672.jpg', 'RIMADYL ', 'ANTI-INFLAMATORIO', '', '', 'R$63,80', 1, 0, 'ZOETIS', '25MG'),
(83, 'img/estoque/75', 'RIMADYL ', 'ANTI-INFLAMATORIO', '', '', 'R$90,50', 1, 0, 'ZOETIS', '75mg'),
(84, 'img/estoque/TOSS.jpg', 'TOSSICANIS XAROPE', 'XAROPE', 'USO ORAL', '', 'R$40,80', 1, 0, 'PROVETS SIMOES', '90ml'),
(85, 'img/estoque/D_NQ_NP_2X_986528-MLB45375387444_032021-F.webp', 'TUSSEDAN', 'EXPECTORANTE', '', '', 'R$61,40', 2, 0, 'BIOFARM', '100ML'),
(86, 'img/estoque/WhatsApp Image 2023-11-08 at 15.33.56.jpeg', 'ELOXICAM INJETAVEL', 'ANTI-INFLAMATORIO', '', '', 'R$57,00', 5, 0, 'CHEMITEC', '20ML'),
(87, 'img/estoque/1592501991532.jpg', 'ELOXICAM COMP', 'ANTI-INFLAMATORIO', 'CX', '', 'R$35,00', 4, 0, 'CHEMITEC', '2MG'),
(88, 'img/estoque/MELO', 'MELOXIWORLD ', 'ANTI-INFLAMATORIO', 'CX', '', 'R$21,00', 2, 0, 'WORLD', '0,5MG'),
(89, 'img/estoque/1629910430959.jpg', 'MELOXIWORLD ', 'ANTI-INFLAMATORIO', 'COMPRIMIDOS', '', 'R$3,50', 45, 0, 'WORLD', '2,0MG'),
(90, 'img/estoque/1666970622484.jpg', 'DOXITABS', 'ANTIMICROBIANO', 'CX', '', 'R$44,40', 3, 0, 'BIOVET', '100MG'),
(91, 'img/estoque/1629903891959.jpg', 'ENRONEW', 'ANTIBIÃ“TICO', 'CARTELA', '', 'R$16,00', 25, 0, 'WORLD', '50MG'),
(92, 'img/estoque/', '', '', '', '', '', 0, 0, '', ''),
(93, 'img/estoque/FLOXI', 'FLOXICLIN', 'ANTIBIÃ“TICO', 'CX', '', 'R$16,70', 2, 0, 'BIOFARM', '50MG'),
(94, 'img/estoque/ANTIT', 'ANTITOXICO ORAL PET', 'ANTITOXICO VITAMINADO', '', '', 'R$16,30', 3, 0, 'BIOFARM', '20ML'),
(95, 'img/estoque/provermin-envelope-fembendazol-20-g_186103.webp', 'PROVERMIN PÃ“', 'VERMIFUGO ORAL', 'ENVELOPE', '', 'R$6,70', 3, 0, 'INDUBRAS', '20g'),
(96, 'img/estoque/download.jpg', 'STOP ANTI-DIARREICO', 'ANTI-DIARREICO', 'ENVELOPE', '', 'R$3,50', 9, 0, 'CALBOS', '10g'),
(97, 'img/estoque/MEBEN', 'MEBENDAZOLE ORAL', 'VERMIFUGO', 'ENVELOPE', '', 'R$18,50', 16, 0, 'VETNIL', '30G'),
(98, 'img/estoque/4671_grd (1)-800x800.jpg', 'BIO AVES', 'ANTIBIOTICO', 'PÃ“', '', 'R$8,50', 7, 0, 'PINUS', '50g'),
(99, 'img/estoque/1442603150324.jpg', 'AVITRIN ANTIBIOTICO', 'ANTIBIOTICO', '', '', 'R$26,60', 2, 0, 'COVELI', '10ml'),
(100, 'img/estoque/1633456085482.jpg', 'AVITRIN CANTO', 'SUPLEMENTO ALIMENTAR', '', '', 'R$12,80', 3, 0, 'COVELI', '15ml'),
(101, 'img/estoque/Avitrin_Ferro_Max.webp', 'AVITRIN FERRO', 'SUPLEMENTO VITAMINICO', 'ORAL', '', 'R$24,80', 4, 0, 'COVELI', '15ml'),
(102, 'img/estoque/AVITRIN REPRODUÃ‡AO', 'AVITRIN REPRODUÃ‡ÃƒO', 'SUPLEMENTO VITAMINICO', '', '', 'R$24,30', 5, 0, 'COVELI', '15ml'),
(103, 'img/estoque/1442604430523.jpg', 'AVITRIN VERMIFUGO', 'SUPLEMENTO VITAMINICO', '', '', 'R$19,50', 5, 0, 'COVELI', '10ML'),
(104, 'img/estoque/81FOR7dj57L._AC_UF1000,1000_QL80_.jpg', 'AVITRIN COMPLEXO VITAMINICO', 'SUPLEMENTO VITAMINICO', '', '', 'R$24,50', 6, 0, 'COVELI', '15ml'),
(105, 'img/estoque/1487014827329.jpg', 'THUYA', 'TRATAMENTO P VERRUGAS', '', '', 'R$7,20', 13, 0, 'PROVETS SIMOES', '20ML'),
(106, 'img/estoque/sanagogo-20-ml_186140.webp', 'SANAGOGO', 'TRATAMENTO P GOGO', '', '', 'R$22,00', 1, 0, 'PROVETS SIMOES', '20ML'),
(107, 'img/estoque/nausetrat_solucao_oral_ucbvet_20ml_3133_1_7e749295d0279091afbea5a6bdd4f6e7.webp', 'NAUSETRAT ', 'ANTIEMETICO (GASTURA)', '', '', 'R$19,30', 3, 0, 'UCBVET', '20ML'),
(108, 'img/estoque/ANT.webp', 'ANTICION', 'INIBIDOR DE CIO', 'AMPOLA', '', 'R$5,30', 33, 0, 'UCBVET', '1ML'),
(109, 'img/estoque/HEMO.webp', 'HEMOCELL PET', 'ANTI ANEMICO', '', '', 'R$26,00', 3, 0, 'CALBOS', '30ML'),
(110, 'img/estoque/HEMOPET.webp', 'HEMOPET GOLD', 'SUPLEMENTO VITAMINICO', '', '', 'R$15,70', 1, 0, 'VETBRAS', '30ML'),
(111, 'img/estoque/10007230000285-1.jpg', 'HEMOLITAN PET', 'SUPLEMENTO VITAMINICO', '', '', 'R$32,80', 2, 0, 'VETNIL', '30ML'),
(112, 'img/estoque/1663336443747.jpg', 'GLICOPAN PET', 'SUPLEMENTO VITAMINICO', '', '', 'R$31,50', 2, 0, 'VETNIL', '30ML');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `login`, `senha`) VALUES
(1, 'adm', '123'),
(2, '123', '123');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
