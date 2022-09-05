-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06-Set-2022 às 01:30
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mundo pet`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE `agenda` (
  `idagenda` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `data_consulta` date NOT NULL,
  `horario` int(4) NOT NULL,
  `idveterinario` int(11) NOT NULL,
  `idconsulta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE `animal` (
  `idanimal` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `raça` varchar(100) NOT NULL,
  `idade` int(2) NOT NULL,
  `sexo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`idanimal`, `idusuario`, `Nome`, `raça`, `idade`, `sexo`) VALUES
(1, 1, 'thor', 'viralata', 2, 'M'),
(2, 3, 'Pipoca', 'Poodle', 2, 'M'),
(3, 2, 'Rex', 'Vira-Lata', 1, 'F');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE `consulta` (
  `idconsulta` int(11) NOT NULL,
  `idveterinario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_consulta` date NOT NULL,
  `horario` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idenderenco` int(50) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `Bairro` varchar(50) NOT NULL,
  `Rua` varchar(150) NOT NULL,
  `Cidade` varchar(50) NOT NULL,
  `Numero` int(11) NOT NULL,
  `UF` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idenderenco`, `idusuario`, `Bairro`, `Rua`, `Cidade`, `Numero`, `UF`) VALUES
(1, 1, 'newton', 'rua quinze', 'palmares', 222, 'Pe'),
(2, 2, 'Cohab', 'rua dom pedro I', 'Palmares', 330, 'PE'),
(3, 3, 'Quilombo', 'rua 87', 'Joaquim Nabuco', 75, 'PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`email`, `senha`) VALUES
('Ericlecio', 'ericlecio8978'),
('Lucas', 'lucas343'),
('vinicius', 'senha123');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_Nasc` int(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `CPF` char(11) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nome`, `data_Nasc`, `email`, `CPF`, `senha`) VALUES
(1, 'Vinícius', 250403, 'aaaaa@gmail.com', '1234566754', 'senha123'),
(2, 'Ericlecio', 190302, 'ericlecio@gmail.com', '12345437857', 'ericlecio8978'),
(3, 'Lucas', 110600, 'lucas@gmail.com', '12367547584', 'lucas343');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vacinacao`
--

CREATE TABLE `vacinacao` (
  `idvacinacao` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_aplicacao` date NOT NULL,
  `horario` int(4) NOT NULL,
  `idveterinario` int(11) NOT NULL,
  `idanimal` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vacinacao`
--

INSERT INTO `vacinacao` (`idvacinacao`, `nome`, `data_aplicacao`, `horario`, `idveterinario`, `idanimal`, `idusuario`) VALUES
(1, 'gripe canina', '2024-09-22', 1500, 1, 2, 1),
(2, 'anti-rabica', '2001-10-22', 1500, 3, 3, 2),
(3, 'giardiase', '2011-10-22', 1500, 2, 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinario`
--

CREATE TABLE `veterinario` (
  `idveterinario` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_Nasc` int(6) NOT NULL,
  `email` varchar(100) NOT NULL,
  `CPF` char(11) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `veterinario`
--

INSERT INTO `veterinario` (`idveterinario`, `nome`, `data_Nasc`, `email`, `CPF`, `senha`) VALUES
(1, 'Alex', 190398, 'alex@gmail.com', '12334265733', 'alex123'),
(2, 'maria isabel', 290501, 'maria@gmail.com', '11234222221', 'maria123'),
(3, 'luiz', 110694, 'luzi@gmail.com', '14322995643', 'luiz123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`idagenda`),
  ADD KEY `idveterinario` (`idveterinario`),
  ADD KEY `idconsulta` (`idconsulta`);

--
-- Índices para tabela `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`idanimal`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Índices para tabela `consulta`
--
ALTER TABLE `consulta`
  ADD PRIMARY KEY (`idconsulta`),
  ADD KEY `idveterinario` (`idveterinario`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idenderenco`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `email` (`email`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`);

--
-- Índices para tabela `vacinacao`
--
ALTER TABLE `vacinacao`
  ADD PRIMARY KEY (`idvacinacao`);

--
-- Índices para tabela `veterinario`
--
ALTER TABLE `veterinario`
  ADD PRIMARY KEY (`idveterinario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `idagenda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `animal`
--
ALTER TABLE `animal`
  MODIFY `idanimal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `consulta`
--
ALTER TABLE `consulta`
  MODIFY `idconsulta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `idenderenco` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `vacinacao`
--
ALTER TABLE `vacinacao`
  MODIFY `idvacinacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `veterinario`
--
ALTER TABLE `veterinario`
  MODIFY `idveterinario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agenda`
--
ALTER TABLE `agenda`
  ADD CONSTRAINT `agenda_ibfk_1` FOREIGN KEY (`idveterinario`) REFERENCES `veterinario` (`idveterinario`),
  ADD CONSTRAINT `agenda_ibfk_2` FOREIGN KEY (`idconsulta`) REFERENCES `consulta` (`idconsulta`);

--
-- Limitadores para a tabela `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`);

--
-- Limitadores para a tabela `consulta`
--
ALTER TABLE `consulta`
  ADD CONSTRAINT `consulta_ibfk_1` FOREIGN KEY (`idveterinario`) REFERENCES `veterinario` (`idveterinario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
