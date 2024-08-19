-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19/08/2024 às 14:42
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `portalnew`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('hendrewneresfsa@gmail.com|127.0.0.1', 'i:2;', 1722253748),
('hendrewneresfsa@gmail.com|127.0.0.1:timer', 'i:1722253748;', 1722253748);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_24_133849_create_noticias_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descricao`, `url`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'sdadsa', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', '2024-07-01 18:03:46', '2024-07-01 18:20:57'),
(2, 'asdasd', 'sdadsa', '/storage/arquivos/cLVRTfBg6Nlm6JgkjkmPblJiP2RHbEjIfmecZP3A.png', '2024-07-01 18:11:28', '2024-07-01 18:11:28'),
(3, 'Vista Panorâmica da Cidade', 'Uma visão abrangente da cidade durante o pôr do sol, capturada do topo de um edifício alto.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(4, 'Determinando o Futuro', 'Um estudo aprofundado sobre as tendências futuras na tecnologia e como elas podem moldar o nosso mundo.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(5, 'A Arte da Fotografia Macro', 'Exploração das técnicas e maravilhas da fotografia macro, destacando detalhes minuciosos do mundo natural.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(6, 'A Jornada Espacial', 'Um relato fascinante das missões espaciais mais notáveis e seus impactos na exploração do universo.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(7, 'Segredos da Medicina Antiga', 'Descubra os métodos e práticas de cura utilizados pelas civilizações antigas e como eles influenciam a medicina moderna.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(8, 'Cultura e Tradições no Japão', 'Uma imersão nas tradições culturais e festivais únicos do Japão, explorando a rica herança cultural do país.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(9, 'Design de Interiores Moderno', 'Tendências atuais em design de interiores, com dicas para transformar espaços com estilo e funcionalidade.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(10, 'Maravilhas da Engenharia Civil', 'Uma análise das maiores conquistas da engenharia civil, desde arranha-céus até pontes imensas.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(11, 'Mistérios do Oceano Profundo', 'Explorando os segredos escondidos nas profundezas dos oceanos e as criaturas incríveis que habitam essas regiões.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(12, 'O Impacto das Redes Sociais', 'Análise dos efeitos das redes sociais na sociedade moderna, incluindo aspectos positivos e negativos.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(13, 'Arquitetura Sustentável', 'Exemplos e práticas de arquitetura que visam minimizar o impacto ambiental e promover a sustentabilidade.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(14, 'A Revolução Digital', 'Como a tecnologia digital transformou diversos aspectos da vida cotidiana e continua a evoluir.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL),
(15, 'Explorando a Fotografia de Paisagens', 'Dicas e técnicas para capturar imagens impressionantes de paisagens naturais e urbanas.', '/storage/arquivos/JudsmdKOoRn45zXNL9wu4Nll9PQ0gP3ite5ZKHsJ.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GghzCBoriJ67O3ymbQhfOi2MUAbzYQwTPaJkwHA7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWXNQTk1nTEVrS3hZVnBkQnQ0MElyWjFGdkhRM25EbjFsMUtEY2RzZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQ/cGFnZT0xIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1722264796),
('tsDdQR3pnfUgLG1QIWl4PSSoOh4yIZchbucyKoF8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnRta2xuWVNIaTI3SUJ2dHkwSkZ5bzd3eU04WEFiamh0OEZBZFpnaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1724071255);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hendrew', 'hendrew@gmail.com', NULL, '$2y$12$zTxbIJK1MclW5mQYbBWhxuio07z6xPstsMxXlX9...uA25aFNWnwC', NULL, '2024-06-24 15:08:01', '2024-06-24 15:09:37');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Índices de tabela `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
