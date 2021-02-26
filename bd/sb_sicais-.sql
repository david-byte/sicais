-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 26-Fev-2021 às 18:40
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sb_sicais`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acidentado`
--

CREATE TABLE `acidentado` (
  `acidentado_id` int(11) NOT NULL,
  `acodentado_idade` int(11) NOT NULL,
  `fk_posto_graduacao_id` int(11) NOT NULL,
  `fk_om_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acidente`
--

CREATE TABLE `acidente` (
  `acidente_id` int(11) NOT NULL,
  `acidente_descricao` varchar(255) NOT NULL,
  `date_acidente` datetime NOT NULL,
  `acidente_medidas_preventivas` varchar(100) NOT NULL,
  `fk_om_id` int(11) NOT NULL,
  `fk_acidentado_id` int(11) NOT NULL,
  `fk_situacao_id` int(11) NOT NULL,
  `fk_gradacao_id` int(11) NOT NULL,
  `fk_tipo_id` int(11) NOT NULL,
  `fk_users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aspecto`
--

CREATE TABLE `aspecto` (
  `aspecto_id` int(11) NOT NULL,
  `aspecto_nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `cidade_id` int(11) NOT NULL,
  `cidade_nome` varchar(100) NOT NULL,
  `fk_estado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`cidade_id`, `cidade_nome`, `fk_estado_id`) VALUES
(1, 'Goiânia', 9),
(2, 'Brasília', 1),
(3, 'Cristalina', 9),
(10, 'teste2', 13),
(11, 'teste3', 16),
(17, 'nova', 1),
(18, 'rsrtsrsrfgrg', 1),
(19, 'nova', 1),
(20, 'teste45', 1),
(22, 'teste100', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `c_mil_a`
--

CREATE TABLE `c_mil_a` (
  `c_mil_a_id` int(11) NOT NULL,
  `c_mil_a_nome` varchar(45) NOT NULL,
  `c_mil_a_sigla` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `c_mil_a`
--

INSERT INTO `c_mil_a` (`c_mil_a_id`, `c_mil_a_nome`, `c_mil_a_sigla`) VALUES
(3, 'Comando Militar do Sul', 'CMS'),
(4, 'Comando Militar do Norte', 'CMN'),
(5, 'Comando Militar do Oeste', 'CMO'),
(6, 'Comando Militar do Nordeste', 'CMNE'),
(7, 'Comando Militar do Sudeste', 'CMSE'),
(8, 'Comando Militar do Planalto', 'CMP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `estado_id` int(11) NOT NULL,
  `estado_nome` varchar(45) NOT NULL,
  `estado_sigla` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`estado_id`, `estado_nome`, `estado_sigla`) VALUES
(1, 'Distrito Federal', 'DF'),
(2, 'Acre', 'AC'),
(3, 'Alagoas', 'AL'),
(4, 'Amapá', 'AP'),
(5, 'Amazonas', 'AM'),
(6, 'Bahia', 'BA'),
(7, 'Ceará', 'CE'),
(8, 'Espirito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piauí', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande Do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Roraima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fator`
--

CREATE TABLE `fator` (
  `fator_id` int(11) NOT NULL,
  `fator_nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fatores_contribuintes`
--

CREATE TABLE `fatores_contribuintes` (
  `fatores_contribuintes_id` int(11) NOT NULL,
  `fk_terminologia_id` int(11) NOT NULL,
  `fk_aspecto_id` int(11) NOT NULL,
  `fk_fator_id` int(11) NOT NULL,
  `fk_acidente_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gradacao`
--

CREATE TABLE `gradacao` (
  `gradacao_id` int(11) NOT NULL,
  `gradacao_nome` varchar(45) NOT NULL,
  `gradacao_descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `om`
--

CREATE TABLE `om` (
  `om_id` int(11) NOT NULL,
  `om_nome` varchar(100) NOT NULL,
  `om_sigla` varchar(45) NOT NULL,
  `om_codom` varchar(45) NOT NULL,
  `fk_cidade_id` int(11) NOT NULL,
  `fk_c_mil_a_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `om`
--

INSERT INTO `om` (`om_id`, `om_nome`, `om_sigla`, `om_codom`, `fk_cidade_id`, `fk_c_mil_a_id`) VALUES
(8, '16º Batalhão Logístico', '16º B Log', '123456', 2, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posto_graduacao`
--

CREATE TABLE `posto_graduacao` (
  `posto_graduacao_id` int(11) NOT NULL,
  `posto_graduacao_sigla` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `posto_graduacao`
--

INSERT INTO `posto_graduacao` (`posto_graduacao_id`, `posto_graduacao_sigla`) VALUES
(14, '1º Sgt'),
(10, '1º Ten'),
(15, '2º Sgt'),
(11, '2º Ten'),
(16, '3º Sgt'),
(12, 'Asp'),
(9, 'Cap'),
(17, 'Cb'),
(6, 'Cel'),
(5, 'Gen Bda'),
(4, 'Gen Div'),
(3, 'Gen Ex'),
(8, 'Maj'),
(13, 'S Ten'),
(18, 'Sd'),
(7, 'Ten Cel');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

CREATE TABLE `situacao` (
  `situacao_id` int(11) NOT NULL,
  `situacao_nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `terminologia`
--

CREATE TABLE `terminologia` (
  `terminologia_id` int(11) NOT NULL,
  `terminologia_nome` varchar(45) NOT NULL,
  `terminologia_descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `tipo_id` int(11) NOT NULL,
  `tipo_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `identidade` varchar(45) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `ramal` varchar(45) DEFAULT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(10) UNSIGNED DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(10) UNSIGNED NOT NULL,
  `last_login` int(10) UNSIGNED DEFAULT NULL,
  `active` tinyint(3) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `fk_posto_graduacao_id` int(11) NOT NULL,
  `fk_om_id_om` int(11) NOT NULL,
  `nome_guerra` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `cpf`, `identidade`, `password`, `email`, `phone`, `ramal`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `fk_posto_graduacao_id`, `fk_om_id_om`, `nome_guerra`) VALUES
(1, '127.0.0.1', 'administrator', NULL, NULL, '$2y$10$Vb0nVe.RR4TdSMM76wnIGeukb1oxtyxpfSFxVYGbCbys5DRawENoK', 'admin@admin.com', '0', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1613998621, 1, 'Admin', 'istrator', 'ADMIN', 0, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acidentado`
--
ALTER TABLE `acidentado`
  ADD PRIMARY KEY (`acidentado_id`),
  ADD UNIQUE KEY `id_acidentado_UNIQUE` (`acidentado_id`),
  ADD KEY `fk_acidentado_posto_graduacao1_idx` (`fk_posto_graduacao_id`),
  ADD KEY `fk_acidentado_om1_idx` (`fk_om_id`);

--
-- Índices para tabela `acidente`
--
ALTER TABLE `acidente`
  ADD PRIMARY KEY (`acidente_id`),
  ADD UNIQUE KEY `id_acidente_UNIQUE` (`acidente_id`),
  ADD KEY `fk_acidente_om1_idx` (`fk_om_id`),
  ADD KEY `fk_acidente_acidentado1_idx` (`fk_acidentado_id`),
  ADD KEY `fk_acidente_situacao1_idx` (`fk_situacao_id`),
  ADD KEY `fk_acidente_gradacao1_idx` (`fk_gradacao_id`),
  ADD KEY `fk_acidente_tipo1_idx` (`fk_tipo_id`),
  ADD KEY `fk_acidente_users1_idx` (`fk_users_id`);

--
-- Índices para tabela `aspecto`
--
ALTER TABLE `aspecto`
  ADD PRIMARY KEY (`aspecto_id`),
  ADD UNIQUE KEY `id_aspecto_UNIQUE` (`aspecto_id`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`cidade_id`),
  ADD UNIQUE KEY `id_cidade_UNIQUE` (`cidade_id`),
  ADD KEY `fk_cidade_estado1_idx` (`fk_estado_id`);

--
-- Índices para tabela `c_mil_a`
--
ALTER TABLE `c_mil_a`
  ADD PRIMARY KEY (`c_mil_a_id`),
  ADD UNIQUE KEY `id_c_a_mil_UNIQUE` (`c_mil_a_id`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`estado_id`),
  ADD UNIQUE KEY `id_estado_UNIQUE` (`estado_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`estado_nome`),
  ADD UNIQUE KEY `uf_UNIQUE` (`estado_sigla`);

--
-- Índices para tabela `fator`
--
ALTER TABLE `fator`
  ADD PRIMARY KEY (`fator_id`),
  ADD UNIQUE KEY `id_fator_UNIQUE` (`fator_id`);

--
-- Índices para tabela `fatores_contribuintes`
--
ALTER TABLE `fatores_contribuintes`
  ADD PRIMARY KEY (`fatores_contribuintes_id`),
  ADD UNIQUE KEY `id_fatores_contribuintes_UNIQUE` (`fatores_contribuintes_id`),
  ADD KEY `fk_fatores_contribuintes_terminologia1_idx` (`fk_terminologia_id`),
  ADD KEY `fk_fatores_contribuintes_aspecto1_idx` (`fk_aspecto_id`),
  ADD KEY `fk_fatores_contribuintes_fator1_idx` (`fk_fator_id`),
  ADD KEY `fk_fatores_contribuintes_acidente1_idx` (`fk_acidente_id`);

--
-- Índices para tabela `gradacao`
--
ALTER TABLE `gradacao`
  ADD PRIMARY KEY (`gradacao_id`),
  ADD UNIQUE KEY `id_gradacao_UNIQUE` (`gradacao_id`);

--
-- Índices para tabela `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `om`
--
ALTER TABLE `om`
  ADD PRIMARY KEY (`om_id`),
  ADD UNIQUE KEY `id_om_UNIQUE` (`om_id`),
  ADD KEY `fk_om_cidade1_idx` (`fk_cidade_id`),
  ADD KEY `fk_om_c_a_mil1_idx` (`fk_c_mil_a_id`);

--
-- Índices para tabela `posto_graduacao`
--
ALTER TABLE `posto_graduacao`
  ADD PRIMARY KEY (`posto_graduacao_id`),
  ADD UNIQUE KEY `id_posto_graduacao_UNIQUE` (`posto_graduacao_id`),
  ADD UNIQUE KEY `sigla_UNIQUE` (`posto_graduacao_sigla`);

--
-- Índices para tabela `situacao`
--
ALTER TABLE `situacao`
  ADD PRIMARY KEY (`situacao_id`),
  ADD UNIQUE KEY `id_situacao_UNIQUE` (`situacao_id`),
  ADD UNIQUE KEY `name_UNIQUE` (`situacao_nome`);

--
-- Índices para tabela `terminologia`
--
ALTER TABLE `terminologia`
  ADD PRIMARY KEY (`terminologia_id`),
  ADD UNIQUE KEY `id_terminologia_UNIQUE` (`terminologia_id`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`tipo_id`),
  ADD UNIQUE KEY `id_tipo_UNIQUE` (`tipo_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_email` (`email`),
  ADD UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  ADD UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  ADD UNIQUE KEY `uc_remember_selector` (`remember_selector`),
  ADD UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  ADD UNIQUE KEY `identidade_UNIQUE` (`identidade`),
  ADD KEY `fk_users_posto_graduacao1_idx` (`fk_posto_graduacao_id`),
  ADD KEY `fk_users_om1_idx` (`fk_om_id_om`);

--
-- Índices para tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acidentado`
--
ALTER TABLE `acidentado`
  MODIFY `acidentado_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `acidente`
--
ALTER TABLE `acidente`
  MODIFY `acidente_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `aspecto`
--
ALTER TABLE `aspecto`
  MODIFY `aspecto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `cidade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `c_mil_a`
--
ALTER TABLE `c_mil_a`
  MODIFY `c_mil_a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `fator`
--
ALTER TABLE `fator`
  MODIFY `fator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fatores_contribuintes`
--
ALTER TABLE `fatores_contribuintes`
  MODIFY `fatores_contribuintes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `gradacao`
--
ALTER TABLE `gradacao`
  MODIFY `gradacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `om`
--
ALTER TABLE `om`
  MODIFY `om_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `posto_graduacao`
--
ALTER TABLE `posto_graduacao`
  MODIFY `posto_graduacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `situacao`
--
ALTER TABLE `situacao`
  MODIFY `situacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `terminologia`
--
ALTER TABLE `terminologia`
  MODIFY `terminologia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `acidentado`
--
ALTER TABLE `acidentado`
  ADD CONSTRAINT `fk_acidentado_om1` FOREIGN KEY (`fk_om_id`) REFERENCES `om` (`om_id`),
  ADD CONSTRAINT `fk_acidentado_posto_graduacao1` FOREIGN KEY (`fk_posto_graduacao_id`) REFERENCES `posto_graduacao` (`posto_graduacao_id`);

--
-- Limitadores para a tabela `acidente`
--
ALTER TABLE `acidente`
  ADD CONSTRAINT `fk_acidente_acidentado1` FOREIGN KEY (`fk_acidentado_id`) REFERENCES `acidentado` (`acidentado_id`),
  ADD CONSTRAINT `fk_acidente_gradacao1` FOREIGN KEY (`fk_gradacao_id`) REFERENCES `gradacao` (`gradacao_id`),
  ADD CONSTRAINT `fk_acidente_om1` FOREIGN KEY (`fk_om_id`) REFERENCES `om` (`om_id`),
  ADD CONSTRAINT `fk_acidente_situacao1` FOREIGN KEY (`fk_situacao_id`) REFERENCES `situacao` (`situacao_id`),
  ADD CONSTRAINT `fk_acidente_tipo1` FOREIGN KEY (`fk_tipo_id`) REFERENCES `tipo` (`tipo_id`),
  ADD CONSTRAINT `fk_acidente_users1` FOREIGN KEY (`fk_users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `fk_id_acidente` FOREIGN KEY (`acidente_id`) REFERENCES `acidente` (`acidente_id`);

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `fk_cidade_estado1` FOREIGN KEY (`fk_estado_id`) REFERENCES `estado` (`estado_id`);

--
-- Limitadores para a tabela `fatores_contribuintes`
--
ALTER TABLE `fatores_contribuintes`
  ADD CONSTRAINT `fk_fatores_contribuintes_acidente1` FOREIGN KEY (`fk_acidente_id`) REFERENCES `acidente` (`acidente_id`),
  ADD CONSTRAINT `fk_fatores_contribuintes_aspecto1` FOREIGN KEY (`fk_aspecto_id`) REFERENCES `aspecto` (`aspecto_id`),
  ADD CONSTRAINT `fk_fatores_contribuintes_fator1` FOREIGN KEY (`fk_fator_id`) REFERENCES `fator` (`fator_id`),
  ADD CONSTRAINT `fk_fatores_contribuintes_terminologia1` FOREIGN KEY (`fk_terminologia_id`) REFERENCES `terminologia` (`terminologia_id`);

--
-- Limitadores para a tabela `om`
--
ALTER TABLE `om`
  ADD CONSTRAINT `fk_om_c_a_mil1` FOREIGN KEY (`fk_c_mil_a_id`) REFERENCES `c_mil_a` (`c_mil_a_id`),
  ADD CONSTRAINT `fk_om_cidade1` FOREIGN KEY (`fk_cidade_id`) REFERENCES `cidade` (`cidade_id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_om1` FOREIGN KEY (`fk_om_id_om`) REFERENCES `om` (`om_id`),
  ADD CONSTRAINT `fk_users_posto_graduacao1` FOREIGN KEY (`fk_posto_graduacao_id`) REFERENCES `posto_graduacao` (`posto_graduacao_id`);

--
-- Limitadores para a tabela `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
