-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 19-10-2023 a las 13:05:54
-- Versión del servidor: 10.3.39-MariaDB
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceccom5_intranet_cec`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaigns`
--

CREATE TABLE `campaigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `banner` varchar(191) DEFAULT NULL,
  `empresas_id` varchar(191) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `campaigns`
--

INSERT INTO `campaigns` (`id`, `nombre`, `slug`, `banner`, `empresas_id`, `descripcion`, `isActive`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'diciembre navidad', 'diciembre-navidad', '1671558885.JPG', '2,9,10', 'test', 1, 0, '2022-12-20 20:54:45', '2023-04-06 05:16:42'),
(2, 'campaña 12222', 'campana-1', '1671635423.jpg', '2', 'pueden cotactarme con este numero 22222', 1, 0, '2022-12-21 18:10:23', '2023-04-06 05:16:44'),
(3, 'campaÑA1000', 'campana1000', '1671642507.jpg', '4', 'mi descripcon de mi  campaña  dsad sad sad sad sad sad ad sad sgdrg sdfgszd gdfg xdfg df gdf', 0, 0, '2022-12-21 20:08:27', '2022-12-21 20:09:17'),
(4, 'FIESTAS PATRIAS', 'compra-en-nuestro-hoteles', '1692647086.png', '129,141,206', 'Celebra las fiestas patrias con los mejores descuentos de nuestras empresas asociadas', 1, 1, '2023-02-02 20:40:32', '2023-08-21 21:44:46'),
(5, 'Dia de la madre', 'dia-de-la-madre', '1682716719.png', '2,14,15,17,18,19,32,38,48', 'Disfruta el día de la madre con las mejores promociones para mamá', 0, 0, '2023-04-28 23:18:39', '2023-07-04 17:12:48'),
(6, 'dia del padre', 'dia-del-padre', '1688484347.png', '129,141,143,195,200', 'Celebra a papá en su día, descubre todas las ofertas y promociones con descuentos exclusivos para festejar a nuestro héroe.', 1, 0, '2023-07-04 17:14:38', '2023-08-18 17:03:47'),
(7, 'PROMOCIONES MES DE AGOSTO', 'promociones-mes-de-agosto', '1691600492.jpg', '14', 'Promociones lanzadas en el mes de agosto del 2023', 0, 1, '2023-08-09 19:01:32', '2023-08-21 21:42:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `campaing_empresas`
--

CREATE TABLE `campaing_empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `campaign_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `nombre` varchar(191) NOT NULL,
  `ruc` varchar(191) DEFAULT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `descripcion_empresa` text DEFAULT NULL,
  `descripcion_campania` text DEFAULT NULL,
  `fec_inscrip_cec` varchar(191) DEFAULT NULL,
  `fec_aniversario_empresa` varchar(191) DEFAULT NULL,
  `direccion` varchar(191) DEFAULT NULL,
  `correo` varchar(191) DEFAULT NULL,
  `rs_twitter` varchar(191) DEFAULT NULL,
  `rs_youtube` varchar(191) DEFAULT NULL,
  `rs_facebook` varchar(191) DEFAULT NULL,
  `rs_instagram` varchar(191) DEFAULT NULL,
  `rs_linkedin` varchar(191) DEFAULT NULL,
  `rs_tiktok` varchar(191) DEFAULT NULL,
  `flyer` varchar(191) DEFAULT NULL,
  `video` varchar(191) DEFAULT NULL,
  `embed_video` varchar(191) DEFAULT NULL,
  `numero_contactos` varchar(191) DEFAULT NULL,
  `sector_id` varchar(191) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT 1,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `slug`, `nombre`, `ruc`, `logo`, `descripcion_empresa`, `descripcion_campania`, `fec_inscrip_cec`, `fec_aniversario_empresa`, `direccion`, `correo`, `rs_twitter`, `rs_youtube`, `rs_facebook`, `rs_instagram`, `rs_linkedin`, `rs_tiktok`, `flyer`, `video`, `embed_video`, `numero_contactos`, `sector_id`, `isActive`, `flestado`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL),
(2, 'a-r-asesores-s-a-c', 'A&R ASESORES SAC  ( Comercializadora exclusiva SANITAS PERU EPS)', '20535720739', '1686455752.png', 'Empresa de asesoría y consultoría en programas de salud (EPS, Medicinas privadas y complementarias, agente especial COLSANITAS PERU)', '', '', '', 'www.segurosepsperu.com', 'areyes@arasesores.pl', NULL, NULL, 'https://www.facebook.com/AyRasesoresSAC', 'https://www.instagram.com/ar.asesoressac/', 'https://www.linkedin.com/in/ar-asesores-sac-74250b1ab/?originalSubdomain=pe', NULL, '', '', '', '+51995357912', '13', 1, 1, '2022-12-20 20:42:49', '2023-09-14 19:56:44'),
(3, 'nueva-empresa', 'Nueva Empresa', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '1', 1, 0, '2022-12-21 18:17:45', '2023-02-14 17:29:16'),
(4, 'gloria', 'gloria', '104556644545', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '1', 1, 0, '2022-12-21 18:33:47', '2023-02-14 18:03:28'),
(5, 'empresa-001', 'Empresa 001', '10987654321', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '1', 1, 0, '2022-12-21 20:11:01', '2022-12-21 20:40:23'),
(6, 'navidad', 'Navidad', '1010101010100', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '1', 1, 0, '2022-12-21 20:22:30', '2022-12-21 20:40:13'),
(7, 'chocolate', 'Chocolate', '10456722135', '1675356145.jpg', 'Mi empresa esta enfocado en la elaboración de chocolates', 'mi descripción de campaña', '02/01/2023', '02/02/2023', 'Los Olivos - Palmeras 525', 'admin@chocolates.com', NULL, NULL, NULL, NULL, NULL, NULL, '1675356089.jpg', 'https://www.youtube.com/watch?v=GLwJkFtT9cw', 'GLwJkFtT9cw', '999888555', '1', 1, 0, '2023-02-02 19:41:29', '2023-02-14 17:29:23'),
(8, 'hotel-estelar', 'Hotel Estelar', '10456722139', '1675358989.png', 'Disfruta la mejor estadía en los destinos más llamativos de Colombia y Perú. Con 26 hoteles, Estelar es una de las cadenas más reconocidas en esta región de Suramérica.', 'Te presentamos nuestros destinos. Para que tengas el placer de descubrir. \r\n\r\nPuedes reservar en el destino que mas te causó impresión y tienes las ganas de conocer y descubrir.', '02/01/2023', '02/03/2023', 'Av. Benavides 415  - Miraflores', 'admin@hotelestelar.com', '', '', 'https://www.facebook.com/HotelesEstelar/?brand_redir=187265511402905', '', 'https://www.linkedin.com/company/hoteles-estelar-peru/?originalSubdomain=pe', '', '1675358989.jpg', 'https://www.youtube.com/watch?v=BzM_NKMF3s8', 'BzM_NKMF3s8', '987654789', '6', 1, 0, '2023-02-02 20:29:49', '2023-04-06 05:10:10'),
(9, 'synapsis-research-sac', 'SYNAPSIS RESEARCH SAC', '20550769108', '1692321794.png', 'Servicios de Investigación de Mercados y Analítica de Negocio. Procesamiento de Información y DataScience', 'Servicios de Investigación de Mercados y Analítica de Negocio. \r\nProcesamiento de Información y DataScience', '01/01/2018', '06/01/2013', 'Av. Javier Prado Oeste 2595', '', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/company/synapsis-research/', NULL, '1692638428.png', 'https://www.youtube.com/watch?v=LAwy9UhtbPg', 'LAwy9UhtbPg', '+51993306477', '11', 1, 1, '2023-02-14 18:17:31', '2023-09-26 23:34:41'),
(10, 'aercaribe-service-s-a-c', 'AERCARIBE SERVICE S.A.C.', '20555849827', '1676387903.png', 'Aercaribe inició en el año 1997 como una comercializadora de vuelos chárter. Con la experiencia y el desarrollo constante hemos logrado consolidarnos como una aerolínea especializada en transporte aéreo de carga. Prestamos el servicio de transporte aéreo de carga consolidada y vuelos chárter uniendo América y el Caribe con el mundo.', 'Contamos con un equipo humano especializado brindando asesoría permanente a nuestros asociados de negocios, para satisfacer sus necesidades en el transporte de:\r\n\r\nCarga seca\r\nAnimales vivos\r\nCarga perecedera\r\nMercancías peligrosas\r\nCarga sobredimensionada\r\nVuelos Chárter\r\nMenajes\r\nValores', '', '', '', '', 'https://twitter.com/AercaribeCargo', 'https://www.youtube.com/@aercaribecargo6523', 'https://www.facebook.com/aercaribe/', 'https://www.instagram.com/aercaribecargo/', NULL, NULL, '1676388342.png', 'https://www.youtube.com/watch?v=bz980I2Zd5A', 'bz980I2Zd5A', '940482927', '5', 1, 0, '2023-02-14 18:18:23', '2023-04-06 05:23:16'),
(11, 'academia-de-speakers-by-zu-camargo', 'ACADEMIA DE SPEAKERS BY ZU CAMARGO', '15604116888', NULL, 'Entrenamiento en oratoria corporativa, mentoria y talleres', '', '', '', '', '+51995357912', '', '', '', '', '', '', NULL, NULL, NULL, '+51995357912', '11', 1, 0, '2023-02-14 18:18:53', '2023-04-06 02:37:40'),
(12, 'empresa-de-prueba', 'Empresa de prueba', '10123123121', NULL, '', '', '02/01/2023', '02/01/2023', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 0, '2023-02-14 18:19:40', '2023-03-27 22:21:29'),
(13, 'pertel-de-peru-s-a-c', 'PERTEL DE PERÚ S.A.C.', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, 'https://www.youtube.com/watch?v=3llj1--szHY', '3llj1--szHY', '', '5', 1, 0, '2023-03-27 22:33:18', '2023-03-27 22:33:34'),
(14, 'academia-de-speakers-by-zu-camargo-2', 'ACADEMIA DE SPEAKERS BY ZU CAMARGO', '15604116888', '1686354763.png', 'Entrenamiento en oratoria corporativa, mentoría y talleres.', 'Entrenamiento en oratoria corporativa, mentoría y talleres.', '', '', 'https://www.zucamargo.com/sitio/', 'info@zucamargo.com', NULL, NULL, 'https://www.facebook.com/zucamargocoach/', 'https://www.instagram.com/zu_camargo/?hl=es', 'https://www.linkedin.com/in/zu-camargo/?originalSubdomain=pe', 'https://www.tiktok.com/@zu_camargo?lang=es', '1691594100.png', '', '', '+51980563580', '11', 1, 1, '2023-04-06 02:36:46', '2023-08-21 18:37:28'),
(15, '99-minutos-peru-s-a-c', '99 MINUTOS PERU S.A.C.', '20606739193', '1686354461.png', 'Somos una empresa que resuelve toda la logistica de tu ecommerce.', NULL, '27/02/2023', '', 'https://99minutos.com/', '', NULL, 'https://www.youtube.com/@99minutos27', 'https://www.facebook.com/profile.php?id=100089686683142', 'https://www.instagram.com/99minutoslatam/', 'https://www.linkedin.com/company/99minutos-com', NULL, '', '', '', '+51956276527', '13', 1, 1, '2023-04-06 05:09:04', '2023-06-20 17:44:27'),
(16, 'a-r-asesores-s-a-c-2', 'A&R ASESORES S.A.C.', '20535720739', NULL, 'Empresa de asesoría y consultoría en programas de salud (EPS, Medicinas privadas y complementarias, agente especial COLSANITAS PERU)', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '10', 1, 0, '2023-04-06 05:10:01', '2023-04-06 05:10:28'),
(17, 'access-capital-group-s-a-c', 'ACCESS CAPITAL GROUP S.A.C.', '20509959332', NULL, 'Brindamos asesoría empresarial en crecimiento para optimizar su estructura de capital, mejorar su eficiencia financiera y administrativa. Contamos con fuentes adecuadas de financiamiento acorde a la necesidad financiera de cada empresa.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 0, '2023-04-06 05:12:12', '2023-05-25 17:56:43'),
(18, 'aci-proyectos-sas-sucursal-del-peru', 'ACI PROYECTOS SAS SUCURSAL DEL PERU', '20492307298', '1685639975.jpg', 'Servicios de supervisión de obras, gerenciamiento de Proyectos, Inspecciones', 'Servicios de supervisión de obras, Gerenciamiento de Proyectos, Inspecciones', '12/08/2022', '', 'www.aciproyectos.pe', '', 'https://twitter.com/ACIProyectos', NULL, 'https://www.facebook.com/profile.php?id=100057692897582&locale=es_LA', 'https://www.instagram.com/aci.proyectos.sas/', 'https://www.linkedin.com/in/aci-proyectos-s-a-s-sucursal-del-per%C3%BA-9b7054176/', NULL, NULL, NULL, NULL, '+51947465880', '5', 1, 1, '2023-04-06 05:14:14', '2023-06-01 19:19:35'),
(19, 'a-coach-pe-e-i-r-l', 'A-COACH.PE E.I.R.L.', '20535932591', NULL, 'Coaching personalizado para que desarrolles habilidades de líder, siendo productivo, próspero y feliz.', NULL, '', '', 'https://www.a-coach.pe/', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '5', 1, 0, '2023-04-06 05:20:59', '2023-05-15 23:14:35'),
(20, 'acovent-peru-s-a-c', 'ACOVENT PERU S.A.C.', '20603283156', '1685659196.jpg', 'Especialistas en expansion de mercado, alquileres de locales comerciales, compra y venta de inmuebles.', NULL, '', '', 'AV. MANUEL MONCLOA Y COBARRUBIA NRO. 2569 DPTO. 302 LIMA - LIMA - LIMA', '', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/nuevo-local-peru-5aaa86168/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '+51961544638', '13', 1, 1, '2023-04-06 05:21:28', '2023-06-02 00:39:56'),
(21, 'administradora-de-espacios-y-exhibiciones-s-a-c-skyline-peru', 'ADMINISTRADORA DE ESPACIOS Y EXHIBICIONES S.A.C.', '20515018884', NULL, 'Somos una empresa líder en el mercado de ferias y exhibiciones. Ofrecemos servicios de diseño, producción, implementación y decoración de stands para ferias y eventos dentro y fuera del Perú, además de puntos de venta, modulación y organización de eventos.', NULL, '', '', 'CAL.LA CALETA MZA. G LOTE. 13 A.V. SANTA ROSA DE LLANAVILLA (ALT KM 23 AUT AL SUR) LIMA - LIMA - VILLA EL SALVADOR', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+51989112551', '11', 1, 1, '2023-04-06 05:22:00', '2023-06-02 00:42:02'),
(22, 'aercaribe-service-s-a-c-2', 'AERCARIBE SERVICE S.A.C.', '20555849827', '1685659510.png', 'Aerolínea. Presta el servicio de transporte aéreo no regular de carga y correo.', NULL, '', '', 'http://aercaribe-peru.com', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+51940482927', '9', 1, 1, '2023-04-06 05:22:56', '2023-06-02 00:45:10'),
(23, 'aes-supply-chain-security-s-a-c', 'AES SUPPLY CHAIN SECURITY S.A.C.', '20605334521', '1685659810.jpg', 'Somos una organización que se dedica a diseñar e implementar soluciones de seguridad electrónica, sistemas contra incendio y automatización. Evaluamos cada proyecto detenidamente y proponemos las soluciones integrales más adecuadas. Para realizar esta tarea con éxito contamos con profesionales especializados que, junto a la integración de distintas marcas de prestigio, aseguran el alcance de los objetivos trazados por el cliente.', NULL, '', '', 'https://www.aes-peru.com/', '', NULL, NULL, 'https://www.facebook.com/AESPE/', NULL, 'https://www.linkedin.com/company/automation-engineering-and-security-peru/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '+573104708166', '13', 1, 1, '2023-04-06 05:24:05', '2023-06-02 00:50:10'),
(24, 'afp-integra-s-a-sura', 'AFP INTEGRA S.A. | SURA', '20157036794', '1685717944.png', 'Compañía de seguros del grupo SURA.', NULL, '', '', 'www.afpintegra.pe', '', NULL, NULL, 'https://www.facebook.com/AFPIntegra/?locale=es_LA', NULL, 'www.linkedin.com/company/afp-integra/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-04-06 05:24:59', '2023-06-02 16:59:04'),
(25, 'afp-integra-s-a-sura-2', 'AFP INTEGRA S.A. | SURA', '20157036794', NULL, 'Compañía de seguros del grupo SURA.', '', '', '', 'www.integra.com.pe', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 0, '2023-04-06 05:27:23', '2023-04-06 05:27:32'),
(26, 'agroindustrial-laredo-s-a-a', 'AGROINDUSTRIAL LAREDO S.A.A.', '20132377783', '1685720983.png', 'Producción y comercialización de azúcar en el norte del Perú', NULL, '', '', 'www.agroindustriallaredo.com', '', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/company/agroindustrial-laredo-s-a-a/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-04-06 05:28:28', '2023-06-02 17:49:43'),
(27, 'albertini-abogados-s-a-c', 'ALBERTINI ABOGADOS S.A.C.', '20543031659', '1685721182.jpg', 'Asesoría Legal Integral con Enfoque Multidisciplinario. Derecho Corporativo y Civil, Minería y Recursos Energéticos, Regulatorio, Solución de Conflictos, Tributación y Finanzas, Laboral y Migratorio, Público e Inmobiliario.', NULL, '28/03/2023', '', 'www.albertini-abogados.com', '', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/giorgio-albertini-a0010336/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '+51996970758', '13', 1, 1, '2023-04-06 05:28:58', '2023-06-02 17:53:02'),
(28, 'alfa-co-s-a-c', 'ALFA CO SOCIEDAD ANONIMA CERRADA', '20601832390', '1685721759.jpg', 'Presta servicio y experiencia al desarrollo industrial del sector estatal y privado en proyectos de ingeniería, con el fin de garantizar soluciones eficaces y dar cumplimiento a los requisitos de nuestros clientes.', NULL, '', '', 'https://alfaco.com.pe/', '', NULL, NULL, 'https://www.facebook.com/p/Alfa-Co-Per%C3%BA-100078736128552/?_rdr', NULL, 'https://www.linkedin.com/company/alfa-co-sac/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '+51956277371', '5', 1, 1, '2023-04-06 05:29:23', '2023-06-02 18:02:39'),
(29, 'aliados-logisticos-andinos-s-a-c', 'ALIADOS LOGISTICOS ANDINOS SOCIEDAD ANONIMA CERRADA', '20604560447', '1685722236.png', 'Empresa de transporte de carga.', NULL, '', '', 'https://www.aliados-logistica.com/', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+51981754493', '9', 1, 1, '2023-04-06 05:29:43', '2023-06-02 18:10:36'),
(30, 'allies-peru-s-a-c', 'ALLIES PERU S.A.C.', '20605307231', NULL, 'Servicio de mantenimiento en el sector industrial, para manutención y cuidado de las áreas funcionales y estructurales de las empresas. Servicios especializados en alturas, limpieza y mantenimiento en zonas urbanas y rurales, sector industrial y empresarial, áreas operativas y locativas, espacios turísticos y zonas verdes.', NULL, '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+573173649218', '13', 1, 1, '2023-04-06 05:30:05', '2023-06-02 18:28:28'),
(31, 'ancar-inversiones-inmobiliarias', 'ANCAR INVERSIONES INMOBILIARIAS', '15600526844', NULL, 'Somos una empresa que ofrece servicios de venta, alquiler y administración de propiedades para rentas temporales, además remodelación y home style para casas y departamentos.', NULL, '', '', NULL, '', NULL, NULL, 'https://www.facebook.com/people/ANCAR-Inmobiliaria/100053110937845/', 'https://www.instagram.com/ancar_propiedades/', NULL, NULL, NULL, NULL, NULL, '+51936551397', '13', 1, 0, '2023-04-10 16:28:39', '2023-09-14 17:13:09'),
(32, 'andras', 'ANDRAS', '20605348115', '1685724566.png', 'Es un atelier de alta gama y queremos ayudarte a que realmente logres la mejor versión de ti mismo. Para ello te brindaremos toda nuestra asesoría a fin de que, con nuestros trajes hechos a tu medida y preferencias, puedas ver y transmitir tu mejor versión. Para ello en ANDRAS contamos con los mejores sastres del Perú y tenemos en stock las mejores y mas exclusivas telas del mundo, traídas desde Inglaterra, Italia y España especialmente para ti. ¡Mereces darte esta gran oportunidad!', NULL, '', '', 'https://runats.pe/', '', NULL, NULL, 'https://www.facebook.com/runats/', NULL, NULL, NULL, NULL, NULL, NULL, '+51993464102', '13', 1, 1, '2023-04-10 17:35:34', '2023-06-02 18:49:26'),
(33, 'asd-consultants-s-a-c', 'ASD CONSULTANTS S.A.C.', '20514523054', '1681141156.png', 'Provee servicios de consultoría ambiental, social y seguridad industrial en los sectores de minería, hidrocarburos, electricidad, industria y saneamiento. Más de 13 años de experiencia y más de 90 proyectos desarrollados en todas las regiones del Perú.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '8', 1, 1, '2023-04-10 17:39:16', '2023-04-21 22:50:41'),
(34, 'asesores-de-seguridad-y-salud-ocupacional-asociados-s-a-c-assoa', 'ASESORES DE SEGURIDAD Y SALUD OCUPACIONAL ASOCIADOS S.A.C. (ASSOA)', '20605704213', '1681141298.jpg', 'Seguridad y salud ocupacional.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 17:41:38', '2023-04-10 17:54:18'),
(35, 'asia-services-peru-s-a-c-asia-grupo', 'ASIA SERVICES PERU S.A.C. (ASIA GRUPO)', '20606209852', NULL, 'Realizamos acompañamiento en importación y acreditación en Asia. Busqueda de proveedores, inspecciones de calidad, negociaciones.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 17:51:36', '2023-04-10 17:53:05'),
(36, 'atiq-consultoria-y-capacitacion-s-a-c', 'ATIQ CONSULTORIA Y CAPACITACION S.A.C.', '20602085415', '1681142934.jpg', 'Especialistas en Consultoría y Capacitación en el ERP número 1 a nivel mundial, que es SAP. Realizamos implementaciones y mejora continua para todos los módulos en SAP, así como también la localización e integraciones de SAP con plataformas de Facturación Electrónica, Portal de Proveedores, E-Commerce, entre otras.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 18:08:54', '2023-04-10 18:12:22'),
(37, 'aurora-asia-pacific-s-a-c', 'AURORA ASIA PACIFIC S.A.C.', '20604330476', NULL, 'Empresa logistica que cuenta con una infraestructura especializada para seguimiento, medición y control de los procesos del gerenciamiento de carga.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 18:46:07', '2023-04-10 18:46:07'),
(38, 'autoniza-s-a-c', 'AUTONIZA S.A.C.', '20601762219', '1681145241.jpg', 'Concesionario de autos de la marca Chevrolet e Isuzu', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 18:47:21', '2023-04-10 18:47:21'),
(39, 'autotaxi-satelital-s-a-c', 'AUTOTAXI SATELITAL S.A.C.', '20522172023', '1681145358.png', 'Empresa de servicio de taxis. Pertenece al Grupo colombiano Empresarial Rizzo', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '5', 1, 1, '2023-04-10 18:48:32', '2023-04-10 18:49:18'),
(40, 'axess-networks-solutions-peru-s-a-c-axess-peru-s-a-c', 'AXESS NETWORKS SOLUTIONS PERU S.A.C.-AXESS PERU S.A.C.', '20557158406', '1681145486.jpg', 'Soluciones satelitales para el sector de energía, petróleo, minería, banca, comercio y agroindustria; como acceso a Internet vía satélite entre otros.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 18:51:26', '2023-04-10 18:51:26'),
(41, 'b-r-consultores-asociados-s-a-c', 'B&R CONSULTORES ASOCIADOS S.A.C.', '20600620526', '1692743095.png', 'Empresa especializada en Consultoría de Sistemas, desarrollos y en la Implementación del ERP SAP Business One para medianas empresas y Odoo para pequeñas empresas.', 'Descubre la potencia transformadora de los ERP 💪🏻\r\n\r\n SAP Business One aporta integración y análisis profundo, mientras que Odoo brinda flexibilidad y adaptabilidad. 📊🤝🏻\r\n\r\nAmbos impulsan la eficiencia al automatizar procesos, optimizar flujos de trabajo y potenciar la toma de decisiones informadas. Nuestra misión es maximizar estos recursos para llevar a las empresas hacia operaciones más ágiles, precisas y exitosas ✅', '08/01/2022', '08/26/2022', 'https://byrperu.com/', 'acorvo@byrperu.com', NULL, 'https://www.youtube.com/@enmanuelconsultorsap4243', 'https://www.facebook.com/byrconsultores/', 'https://www.instagram.com/byrconsultores/', 'https://www.linkedin.com/company/byrconsultores/?viewAsMember=true', 'https://www.tiktok.com/@byrconsultores.sac?lang=es', '1692744489.png', 'https://www.youtube.com/watch?v=ISp7zzKoUMM', 'ISp7zzKoUMM', '931 270 145', '7', 1, 1, '2023-04-10 18:52:37', '2023-08-25 01:12:05'),
(42, 'bafur-s-c-r-ltda', 'BAFUR S.C.R.LTDA', '20100977037', '1681145747.png', 'Firma de abogados con más de 40 años de experiencia en diversas especialidades como sector Bancario, Financiero y de Seguros, Competencia y Regulación, Comercio Internacional , Compliance entre otros.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '11', 1, 1, '2023-04-10 18:55:47', '2023-04-21 22:52:11'),
(43, 'banco-gnb-peru-s-a', 'BANCO GNB PERU S.A', '20513074370', '1681145817.png', 'Entidad financiera del grupo Banco GNB Sudameris - Colombia, ofrece productos y servicios para empresas y personas, con agencias en lima, piura, chiclayo, trujillo y arequipa.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 18:56:57', '2023-04-10 18:56:57'),
(44, 'berkes-contruccion-y-montajes-s-a-sucursal-del-peru', 'BERKES CONTRUCCION Y MONTAJES S.A.; SUCURSAL DEL PERÚ', '20610675213', NULL, 'Berkes es una compañía interdisciplinaria, lo que constituye su mayor fortaleza y su gran diferencial. Esta condición la distingue como una compañía única en el área, capaz de proveer soluciones globales en los campos de la construcción y de la ingeniería.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-04-10 19:01:18', '2023-04-10 19:01:18'),
(45, 'bgm-ingenieria-servicios-s-a-c', 'BGM INGENIERIA & SERVICIOS S.A.C.', '20468446457', '1681153543.png', 'Venta y comercializacion de equipos con tecnologia de punta y ahorradores de energia como aires acondicionados, deshumidificadores entre otros.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 21:05:43', '2023-04-10 21:05:43'),
(46, 'blancas-sandoval-asociados-s-a-c', 'BLANCAS SANDOVAL & ASOCIADOS S.A.C.', '20549658696', '1681153621.jpg', 'UHY BSA es una firma de servicios profesionales líder que ofrece servicios de contabilidad y de consultoría de negocios de servicio completo a las empresas nacionales e internacionales, tanto en el sector público y privado', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-04-10 21:07:01', '2023-04-10 21:07:01'),
(47, 'bonna-tours-s-a-c', 'BONNA TOURS S.A.C.', '20123101538', '1681153894.png', 'Agencia de viajes.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 0, '2023-04-10 21:11:34', '2023-09-14 17:13:35'),
(48, 'borden-s-a-c-pat-primo', 'BORDEN S.A.C. (PAT PRIMO)', '20492784622', '1681154094.jpg', 'Tienda de Ropa y accesorios colombiana para mujeres, hombres y niños.', NULL, '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '12', 1, 1, '2023-04-10 21:14:54', '2023-04-12 18:14:15'),
(49, 'consejo-empresarial-colombiano', 'CONSEJO EMPRESARIAL COLOMBIANO', '20551742459', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 0, '2023-05-05 00:32:50', '2023-05-08 02:00:11'),
(50, 'bustamante-y-barrientos-ingenieros-del-peru-s-a-c-bbi', 'BUSTAMANTE Y BARRIENTOS INGENIEROS DEL PERU S.A.C. (BBI)', '20600028996', NULL, 'Dedicada a la consultoría, asesoría y capacitaciónen materia de seguridad, salud en el trabajo y medio ambiente. Estamos comprometidos con apoyar a que las empresas sean más rentables, innovadoras,en cumplimiento normativo y con la mejora continua', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '8', 1, 1, '2023-05-05 07:08:52', '2023-05-05 07:08:52'),
(51, 'campos-guanilo-hebert-dan-hc-brokers', 'CAMPOS GUANILO HEBERT DAN (HC BROKERS)', '10096384586', NULL, 'Asesoría integral y profesional en seguros de vida, salud, empresariales y vehículos.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 0, '2023-05-05 07:12:24', '2023-09-14 17:13:44'),
(52, 'carvajal-tecnologia-y-servicios-s-a-c', 'CARVAJAL TECNOLOGIA Y SERVICIOS S.A.C.', '20505779291', NULL, 'Prestación de servicios de comercio electrónico e intercambio documentario electrónico. (factura electrónica, print, e-commerce, ciberseguridad)', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '7', 1, 1, '2023-05-05 07:15:03', '2023-05-05 07:15:03'),
(53, 'empresa-prueba', 'EMPRESA PRUEBA', '10452440356', NULL, '', '', '', '', '', '', '', '', '', '', '', '', '1683405497.png', NULL, NULL, '', '9', 1, 0, '2023-05-06 22:38:17', '2023-05-08 01:59:57'),
(54, 'cavar-peru-s-a-c', 'CAVAR PERÚ S.A.C.', '20602129021', NULL, 'Ofrece soluciones y herramientas para redes eléctricas, de telecomunicaciones y servicios complementarios', '', '', '', 'www.cavar.com.pe', '', '', '', 'https://www.facebook.com/cavarsolucionesintegrales', '', 'https://www.linkedin.com/in/cavar-s-a-722bb7195/', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-05-08 02:05:11', '2023-05-08 02:05:11'),
(55, 'dermodis-s-a-c', 'DERMODIS S.A.C.', '20502148347', NULL, 'Distribuidor exclusivo de Laboratorios Recamier de Colombia en el Perú, cuenta con diversos productos para uso profesional (tintes y tratamientos para el cabello) y para cliente final como bloqueadores, cremas, jabones, etc.', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-05-08 02:09:09', '2023-05-08 02:09:09'),
(56, 'a-coach-pe-e-i-r-l-2', 'A-COACH.PE E.I.R.L.', '', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '10', 1, 0, '2023-05-15 23:15:15', '2023-05-25 17:56:28'),
(57, 'dimel-ingenieria-peru-s-a-c', 'DIMEL INGENIERIA PERÚ S.A.C.', '20604924449', NULL, 'Producción y comercialización de postes de acero y en fibra de vidrio para redes eléctricas de alta, media y baja tensión, para iluminación, comunicaciones y estructuras para paneles solares y vías inteligentes.', '', '26/04/2022', '', '', '', '', '', 'https://www.facebook.com/dimel.ingenieria/?locale=es_LA', '', 'https://www.linkedin.com/company/dimel-ingenier%C3%ADa-s-a-/', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-05-25 22:20:30', '2023-05-25 22:20:30'),
(58, 'doble-fusion-gastronomica-s-a-c-sumerce', 'DOBLE FUSION GASTRONOMICA S.A.C. (SUMERCE)', '20605319875', NULL, 'Restaurant apasionados por el Street Food Colombia y el placer de compartir con los amigos. Alquiler de equipos de sonidos, luces, tarimas, grupo electrógeno entre otros.', '', '9/03/2022', '', 'https://sumerce.pe/', '', '', '', '', 'https://www.instagram.com/sumerceperu/', '', '', NULL, NULL, NULL, '(+51) 929 441 899', '13', 1, 1, '2023-05-25 22:37:30', '2023-05-25 22:37:30'),
(59, 'e-torres-y-torres-lara-asoc-abog-scrl', 'E.TORRES Y TORRES LARA & ASOC.ABOG.SCRL', '20110152711', NULL, 'Reconocido Estudio de abogados', '', '', '', 'https://tytl.com.pe/', 'contacto@tytl.com.pe', '', '', '', '', 'https://www.linkedin.com/company/tytlabogados/', '', NULL, NULL, NULL, '01 618 – 1515', '5', 1, 1, '2023-05-25 22:41:43', '2023-05-25 22:41:43'),
(60, 'edgeuno-s-a-s', 'EDGEUNO S.A.S.', '830064425-2', NULL, 'Ofrece la mejor experiencia Edge, Cloud, y Conectividad a través de la red más rápida y de alta disponibilidad en América Latina.', '', '', '', 'https://edgeuno.com/es/', 'sales@edgeuno.com', 'https://twitter.com/EdgeUno', '', '', '', 'https://www.linkedin.com/company/edgeuno/', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-05-25 22:45:19', '2023-05-25 22:45:19'),
(61, 'eficacia-peru-s-a-c', 'EFICACIA PERU S.A.C.', '20605857737', NULL, 'Expertos en soluciones de mercadeo, trademarketing y ventas. Cuidamos y hacemos crecer tu marca.', '', '22/06/2022', '', 'https://www.eficacia.com.pe/', 'contacto@eficacia.com.pe', '', '', '', '', 'https://www.linkedin.com/company/eficacia-per%C3%BA/', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-05-25 22:48:10', '2023-05-25 22:48:10'),
(62, 'electricas-de-medellin-peru-s-a-edemsa', 'ELECTRICAS DE MEDELLIN PERU S.A. (EDEMSA)', '', NULL, 'Compañía del GRUPO ETHUSS, ofrece servicios de Ingeniería, mantenimiento, operación, concesiones y construcción de líneas de transmisión y subestaciones eléctricas de alta, media y baja tensión, plantas de generación de energía, redes e hidroeléctricas.', '', '', '', 'https://www.edemsa.com.co/index.php/es/?pcks', 'servicioalcliente@edemsa.com.co', '', '', '', '', 'https://www.linkedin.com/company/el%C3%A9ctricas-de-medell%C3%ADn-per%C3%BA-s-a-/', '', NULL, NULL, NULL, '', '5', 1, 0, '2023-05-25 23:03:15', '2023-09-14 17:14:44'),
(63, 'eskala-inversiones-s-a-c', 'ESKALA INVERSIONES S.A.C.', '20607819425', NULL, 'Te ayudamos en la venta o alquiler de tu inmueble en Lima. Casas, Departamentos y Terrenos', '', '21/09/2022', '', 'https://eskala.pe/', 'hola@eskala.pe', '', 'https://www.youtube.com/channel/UCQLYoj-35-tNgHa0_ymrMig', '', 'https://www.instagram.com/eskala_inmobiliaria_lima/', 'https://www.linkedin.com/company/eskala-inmobiliaria-lima/', '', NULL, NULL, NULL, '987 780 387', '13', 1, 1, '2023-05-25 23:36:21', '2023-05-25 23:36:21'),
(64, 'estrategias-moviles-peru-s-a-c-aldeamo', 'ESTRATEGIAS MOVILES PERU S.A.C. -ALDEAMO', '20512273280', NULL, 'Servicio de telecomunicaciones.', '', '', '', 'www.aldeamo.com', 'info@aldeamo.com', 'https://twitter.com/Aldeamo', 'https://www.youtube.com/user/aldeamovideo', 'https://www.facebook.com/aldeamo', 'https://www.instagram.com/aldeamo_oficial/', 'https://www.linkedin.com/company/aldeamo/', '', NULL, NULL, NULL, '(+57) 601 770 29 00', '13', 1, 1, '2023-05-25 23:43:31', '2023-05-25 23:43:31'),
(65, 'etek-internacional-corporation-sucursal-peru', 'ETEK INTERNACIONAL CORPORATION SUCURSAL PERU', '20477830626', NULL, 'Es una sociedad que suministra tecnología de hardware y software para la seguridad de la información y diseño e integración de soluciones para la seguridad de la información.', '', '', '', 'https://etek.com/', '', 'https://twitter.com/ETEKInt', 'https://www.youtube.com/channel/UCaLljWaPWiUfLKgdiveVsgw/videos?view_as=subscriber', '', '', 'https://www.linkedin.com/company/etek-international/', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-05-25 23:46:30', '2023-05-25 23:46:30'),
(66, 'eterna-peru-s-a-c', 'ETERNA PERU S.A.C.', '20537036151', '1685576766.png', 'Eterna te ofrece una solución integral de limpieza para el cuidado de tu hogar sin perjudicar el medio ambiente.', NULL, '19/05/2022', '', 'www.eterna.com.co', 'info@eterna.com.co', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/company/eterna-s-a-/', NULL, NULL, NULL, NULL, '', '13', 1, 1, '2023-05-25 23:50:36', '2023-06-01 01:46:06'),
(67, 'expertos-en-cafe-peru-s-a-c-juan-valdez', 'EXPERTOS EN CAFÉ PERU S.A.C (JUAN VALDEZ )', '20551375791', NULL, 'Franquicia colombiana de café cuenta con tiendas en Lima, Trujillo, Piura, Arequipa y Cuzco.', '', '', '', 'https://juanvaldez.com/', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-05-25 23:52:51', '2023-05-25 23:52:51'),
(68, 'facturactiva-del-peru-s-a-c', 'FACTURACTIVA DEL PERU S.A.C.', '20600543050', '1685375356.png', NULL, NULL, '', '', 'Calle Alfonso Urgante Nro. 349 Oficina 201 Urb. Municipal Lima', 'jpaz@facturactiva.com', 'https://twitter.com/facturactiva', 'https://www.youtube.com/@facturactiva-facturacionel3210', 'https://www.facebook.com/Facturactiva', 'https://www.instagram.com/facturactiva/?hl=es-la', 'https://www.linkedin.com/company/facturactiva-del-per%C3%BA-s-a-c/', NULL, '1685373355.png', 'https://www.youtube.com/watch?v=5PaOezrSEyI&pp=ygUQZmFjdHVyYWN0aXZhLmNvbQ%3D%3D', '5PaOezrSEyI', '957328038', '7', 1, 1, '2023-05-29 17:15:55', '2023-06-01 01:50:20'),
(69, 'tcl-international-peru-s-a-c', 'TCL INTERNATIONAL PERU S.A.C.', '20525130909', '1685726941.jpg', 'Somos una compañía que brinda soluciones para la conducción y control de gas y agua potable, atendemos en el mercado peruano desde el año 2010. Vendemos productos para instalaciones  de gas domiciliario como por ejemplo (Tubería, Válvulas, medidores entre otros)', '', '', '', 'www.tcl.com.pe', 'jepuche@tcl.com.pe', '', '', 'https://www.facebook.com/people/TCL-Internacional-Per%C3%BA-SAC/100089762170389/', '', '', '', NULL, NULL, NULL, '+51933539050', '5', 1, 1, '2023-06-02 19:29:01', '2023-06-02 19:29:01'),
(70, 'technology-environmental-assessment-s-a-c', 'TECHNOLOGY & ENVIRONMENTAL ASSESSMENT S.A.C.', '20551556078', '1685727177.png', 'Es una empresa privada, dedicada a la asesoría y consultoría ambiental de proyectos de ingeniería, reingeniería, desarrollo y planificación, abocados hacia la conservación del ambiente y el desarrollo sostenible de los recursos. En TEA estamos seguros de que la satisfacción de nuestros clientes es la mejor herramienta de marketing y el camino directo al crecimiento institucional, por lo que nos regimos en altos estándares de calidad y procedimientos establecidos en la legislación nacional.', '', '', '', 'www.tea.com.pe', 'alex.murillo@tea.com.pe', '', '', 'https://www.facebook.com/tea.technologyperu/?locale=es_LA', '', 'https://www.linkedin.com/company/tea-technology-environmental/about/', '', NULL, NULL, NULL, '+51997567154', '5', 1, 1, '2023-06-02 19:32:57', '2023-06-02 19:32:57'),
(71, 'tecna-peru-s-a-c', 'TECNA PERU S.A.C.', '20503490391', NULL, 'Brinda servicios de mantenimiento de instalaciones eléctricas para sectores de energía, minería, gas y petróleo, suministrando materiales para la construcción', '', '', '', 'www.tecnaperu.com', 'pilar.adames@tecna-ice.com', 'https://twitter.com/SacTecna', '', '', '', '', '', NULL, NULL, NULL, '+51995605570', '5', 1, 1, '2023-06-02 21:58:42', '2023-06-02 21:58:42'),
(72, 'terah-s-a-c', 'TERAH S.A.C.', '20512701851', NULL, 'Terah es una empresa especializada y dedicada al transporte y distribución de productos farmacéuticos y de carga en general con más de 15 años en el Perú, brindando confianza y soluciones logísticas', '', '', '', 'www.terahsac.com', 'mhernandez@terahsac.com', '', '', 'https://www.facebook.com/transportesTerah/?locale=es_LA', '', 'https://www.linkedin.com/company/terah-sac/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51959811326', '9', 1, 1, '2023-06-02 23:00:35', '2023-06-02 23:00:35'),
(73, 'terpel-peru-s-a-c', 'TERPEL PERU S.A.C.', '20511995028', '1685740094.png', 'Comercialización de gas natural y combustibles líquidos para el sector automotriz', '', '', '', 'terpel.pe', 'rossella.pollari@terpel.com', '', '', 'https://www.facebook.com/Terpelperu/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51995959327', '5', 1, 1, '2023-06-02 23:08:14', '2023-06-02 23:08:14'),
(74, 'th-gestion-integral-sociedad-anonima-cerrada', 'TH GESTION INTEGRAL SOCIEDAD ANONIMA CERRADA', '20607489336', NULL, 'Nos dedicamos al servicio del sector minero y constructor, como proveedor de servicios, productos y capacitación, que permitan producir beneficios al más bajo costo y con la máxima eficiencia, ofreciendo a nuestros clientes nuestro equipo profesional con un gran nivel de competencia, integridad y responsabilidad.', '', '', '', 'https://www.thiessenperu.com/', 'cbielich@thiessen.com.pe', '', 'https://www.youtube.com/channel/UC2Qaj5B1ezt7IfLRRU_ZuOw', 'https://www.facebook.com/ThiessenPer%C3%BA-SA-345894642161136/', 'https://www.instagram.com/thiessenperu/', 'https://www.linkedin.com/company/thiessen-del-per%C3%BA/', '', NULL, NULL, NULL, '+51995767345', '5', 1, 1, '2023-06-02 23:12:53', '2023-06-02 23:12:53'),
(75, 'tigerengineering-colombia-s-a-s-sucursal-del-peru', 'TIGERENGINEERING COLOMBIA S.A.S. SUCURSAL DEL PERU', '20552702795', '1685742035.jpg', 'Ofrece servicios de diseño de ingeniería, gerencia y supervisión de proyectos. Actualmente ejecuta la supervisión de la ampliación de la refinería Talara', '', '', '', 'www.summumcorp.com', 'jrtorres@summumcorp.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51995030212', '5', 1, 0, '2023-06-02 23:40:35', '2023-09-14 17:35:25'),
(76, 'torres-torres-rueda-s-a-c', 'TORRES & TORRES RUEDA S.A.C.', '20606834722', '1685742330.png', 'Somos CHAMBAPLUS el primer sistema de anuncios de empleos por WhatsApp de Latinoamérica con impacto de 16 países hispanohablantes, podrás encontrar con 3 simples clic a los profesionales y colaboradores que tu empresa necesita y sin brindar información privilegiada podrás encontrar el empleo que tanto estabas buscando.', '', '', '', 'www.tt.com.pe', 'jtorres@chambaplus.com', '', '', 'https://www.facebook.com/p/Torres-Torres-Rueda-SAC-100064496300683/?_rdr', '', '', '', NULL, NULL, NULL, '+51927401875', '13', 1, 0, '2023-06-02 23:45:30', '2023-09-14 17:36:10'),
(77, 'tremach-group-s-a-c', 'TREMACH GROUP S.A.C.', '20601214831', NULL, 'Alquiler de transportes diversos. Proveedores minero', '', '', '', 'www.tremach.com', 'julio.reategui@tremach.com', '', '', 'https://www.facebook.com/tremachgroup/?locale=es_LA', 'https://www.instagram.com/tremachgroup_piura/', 'https://www.linkedin.com/company/tremach-group/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51981327141', '9', 1, 1, '2023-06-03 00:08:58', '2023-06-03 00:08:58'),
(78, 'tricon-peru-s-a-c', 'TRICON PERU S.A.C.', '20537921545', '1685744284.jpg', 'Empresa multinacional comercializadora de productos químicos y plásticos. Actualmente es el proveedor lider de resinas termoplásticas. Con presencia en el Perú desde hace más de 10 años . Cuenta con aproximadamente 30 oficinas, ubicadas en más de 20 países, en los 5 continentes. Productos comercializados: polietileno, polipropileno, poliestireno, pvc, pet, entre otros.', NULL, '', '', 'www.triconenergy.com', 'pinillost@triconenergy.com', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/company/grupo-triconm-sac/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '+51999928200', '13', 1, 1, '2023-06-03 00:18:04', '2023-06-03 00:18:49'),
(79, 'unimed-del-peru-sociedad-anonima', 'UNIMED DEL PERU SOCIEDAD ANONIMA', '20253768119', '1685744732.jpg', 'Empresa que forma parte del Grupo Procaps, con presencia en Colombia, Venezuela, Brasil, Perú, Bolivia, Ecuador y Centro América y el Caribe, dedicada a la fabricación y exportación de productos farmacéuticos.', '', '', '', 'http://www.unimed.com.pe', 'vpisano@unimed.com.pe', '', '', '', '', 'https://www.linkedin.com/company/unimed-del-peru-sa/?originalSubdomain=pe', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-06-03 00:25:32', '2023-06-03 00:25:32'),
(80, 'union-electrica-sa-sucursal-del-peru', 'UNION ELECTRICA SA SUCURSAL DEL PERU', '20514650161', '1685744970.png', 'Brinda soluciones integrales en servicios de ingeniería y comercialización de productos para los sectores de energía eléctrica, telecomunicaciones, seguridad electrónica y automatización.', '', '', '', 'www.uniongr.com', 'jorozco@uniongr.com', '', '', '', '', 'https://www.linkedin.com/in/union-electrica-s-a-sucursal-del-peru-6740091a4/?originalSubdomain=pe', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-06-03 00:29:30', '2023-06-03 00:29:30'),
(81, 'universidad-esan', 'UNIVERSIDAD ESAN', '20136507720', '1685745191.png', 'El instituto de Regulación y Finanzas – FRI ESAN – de la Universidad ESAN fue fundado en el año 2001 por PhD Sergio Bravo Orellana. Como instituto buscamos colaborar en el desarrollo y fortalecimiento de las instituciones públicas y privadas de nuestro país; y para tal fin brindamos capacitación especializada en temas económicos, financieros, regulatorios y legales, desarrollamos programas de capacitación ad hoc para clientes corporativos y brindamos asesoría y consultoría empresarial.', NULL, '', '', 'www.ue.edu.pe', 'sbravo@esan.edu.pe', 'https://twitter.com/universidadesan?lang=es', NULL, 'https://www.facebook.com/uesan/?locale=es_LA', 'https://www.instagram.com/uesan_oficial/?hl=es', 'https://www.linkedin.com/school/universidad-esan/?originalSubdomain=pe', NULL, NULL, NULL, NULL, '', '5', 1, 1, '2023-06-03 00:33:11', '2023-06-03 15:36:20'),
(82, 'viviendas-del-peru-s-a-c', 'VIVIENDAS DEL PERU S.A.C.', '20512691529', '1685748060.png', 'Inmobiliaria, del grupo colpatria', '', '', '', 'www.urbanaperu.com.pe', 'cinthya.carrillo@urbanaperu.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51946009082', '13', 1, 1, '2023-06-03 01:21:00', '2023-06-03 01:21:00'),
(83, 'voyant-s-a-c', 'VOYANT S.A.C.', '20607096571', '1685748203.png', 'Por Nuestro Conocimiento, Experiencia y Visión Integral de la infraestructura crítica, lo cual nos permite diseñar soluciones adaptadas a tu requerimiento específico, optimizando costos de inversión y operación. Creemos en la tecnología con propósito, y el propósito de la nuestra es hacer tu operación más confiable y sostenible, haciendo uso efectivo de los recursos. Queremos convertirnos en la garantía de operación confiable de la infraestructura crítica en empresas industriales, de energía y m', '', '', '', 'https://voyant.pe/', 'victor.salas@voyant.pe', '', '', '', '', 'https://www.linkedin.com/company/voyantperu/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51998401212', '5', 1, 1, '2023-06-03 01:23:23', '2023-06-03 01:23:23'),
(84, 'western-union-peru-s-a', 'WESTERN UNION PERU S.A.', '20106903230', '1685748344.png', 'Líder mundial en envíos y recepción de dinero a más de 200 países y territorios. Cuenta con envíos de dinero a cuentas bancarias en más de 90 países. Además de tener una Mesa de Dinero (Fx Trading) con los mejores tipos de cambio . En Perú, cuentan con más de 2000 puntos de venta y 52 Agencias Principales.', '', '', '', 'https://www.westernunionperu.pe/', 'johanna.grados@westernunion.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51989209487', '5', 1, 1, '2023-06-03 01:25:44', '2023-06-03 01:25:44'),
(85, 'wm-wireless-mobile-peru-sociedad-anonima-cerrada', 'WM WIRELESS & MOBILE PERU SOCIEDAD ANONIMA CERRADA', '20553944580', '1685748498.jpg', 'Desarrollo de soluciones móviles, computación móvil e Identificación Automática, Optimización de Redes Inalámbricas, entre otros.', '', '', '', 'www.wi-mobile.com', 'jcepeda@wi-mobile.com', '', '', 'https://www.facebook.com/OficialWMWireless/', '', 'https://www.linkedin.com/company/wmwireless/?originalSubdomain=pe', '', NULL, NULL, NULL, '+573203202003', '7', 1, 1, '2023-06-03 01:28:18', '2023-06-03 01:28:18'),
(86, 'zentrica-digital-s-a-c', 'ZENTRICA DIGITAL S.A.C', '20607033618', '1685748682.jpg', 'Brinda Servicios de Marketing', '', '', '', 'http://www.zentricadigital.com/', 'revoredo.rodrigo@zentricadigital.com', '', '', '', '', 'https://www.linkedin.com/company/zentricadigital/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51994550203', '11', 1, 1, '2023-06-03 01:31:22', '2023-06-03 01:31:22'),
(87, 'zoluxiones-bpo-s-a-c', 'ZOLUXIONES BPO S.A.C.', '20543617009', '1685748807.png', 'Brinda diferentes servicios como son, desarrollo de software, soporte técnico, soluciones RPA (Robotización de Proceso), Soluciones Móviles. Analítica, consultoría de sistemas y staffing especializado', '', '', '', 'www.zoluxiones.com', 'Gerardo.lopez@zoluxiones.com', '', '', '', '', 'https://www.linkedin.com/company/zoluxiones/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51993532761', '7', 1, 1, '2023-06-03 01:33:27', '2023-06-03 01:33:27'),
(88, 'ztp-s-a-c', 'ZTP S.A.C.', '20562770560', '1685748917.jpg', 'Empresa de soluciones de software integrales para hoteles, restaurantes, salud, agencias de viajes, cáterin, aeropuertos, clubes y otros.', '', '', '', 'www.ztp.pe', 'sdrc@siesa.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51947233231', '7', 1, 1, '2023-06-03 01:35:17', '2023-06-03 01:35:17'),
(89, 'afigarantias-s-a-c', 'AFIGARANTIAS S.A.C.', '20610727400', '1685749240.jpg', 'Nos dedicamos al afianzamiento de créditos', '', '', '', 'https://afigarantias.com/pe', 'presidencia@afigarantias.com', '', '', '', '', '', '', NULL, NULL, NULL, '+573003278257', '13', 1, 0, '2023-06-03 01:40:40', '2023-09-14 17:12:23'),
(90, 'barrios-fuentes-bafur-s-civil-de-r-l', 'BARRIOS & FUENTES-BAFUR S CIVIL DE R.L.', '20602554903', '1685749418.png', 'Firma de abogados con más de 40 años de experiencia en diversas especialidades como sector Bancario, Financiero y de Seguros, Competencia y Regulación, Comercio Internacional , Compliance entre otros.', '', '', '', 'www.bafur.com.pe', 'gbarrios@bafur.com.pe', 'https://twitter.com/EstudioBafur', '', 'https://www.facebook.com/EstudioBafur/', '', 'https://www.linkedin.com/company/barrios-&-fuentes-abogados---bafur/', '', NULL, NULL, NULL, '+51999629614', '11', 1, 1, '2023-06-03 01:43:38', '2023-06-03 01:43:38'),
(91, 'blue-marlin-beach-club-s-a-hoteles-decameron-colombia', 'BLUE MARLIN BEACH CLUB S.A (HOTELES DECAMERON COLOMBIA)', '20205605500', '1685749556.png', 'Cadena de hoteles, con presencia en Tumbes', '', '', '', 'www.decameron.pe', 'gerencia.elpueblo@decameron.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51951751873', '11', 1, 1, '2023-06-03 01:45:56', '2023-06-03 01:45:56'),
(92, 'carrera-cia-sociedad-civil-de-responsabilidad-limitada', 'CARRERA & CIA SOCIEDAD CIVIL DE RESPONSABILIDAD LIMITADA', '20461677836', NULL, 'Somos una firma de abogados full-service, con más de 20 años de experiencia brindando un servicio integral de asesoría legal a empresas nacionales y extranjeras. Nacimos con el claro propósito de construir relaciones a largo plazo con nuestros clientes, convirtiéndonos en sus socios estratégicos clave para el cumplimiento de sus objetivos.  Nuestros profesionales son especialistas en brindar asesoría multidisciplinar de la más alta calidad y con un profundo conocimiento de los diversos sectores', '', '', '', 'https://www.cpb-abogados.com.pe/', 'mpinatte@cpb-abogados.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51990206261', '13', 1, 1, '2023-06-03 01:50:13', '2023-06-03 01:50:13'),
(93, 'ceelimp-group-s-a-c', 'CEELIMP GROUP S.A.C.', '20555330244', '1685749972.jpg', 'Empresa internacional especializada en limpieza de hospitales', '', '', '', 'www.ceelimp.com', 'jsainz@ceelimp.com.pe', '', '', 'https://www.facebook.com/ceelimpgroup/?locale=es_LA', '', 'https://www.linkedin.com/company/cee-sa-ceelimp/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51942407283', '13', 1, 1, '2023-06-03 01:52:52', '2023-06-03 01:52:52'),
(94, 'century-ecological-corporation-s-a-c-ecocentury-s-a-c', 'CENTURY ECOLOGICAL CORPORATION S.A.C. ECOCENTURY S.A.C.', '20502073401', '1685750313.jpg', 'Somos una empresa peruana con más de 12 años de experiencia brindando el servicio de Gestión Medio Ambiental. Reflejada en la Gestión Integral de Residuos, Venta y Alquiler de Sanitarios, Equipos, Contenedores Portátiles, Saneamiento Ambiental y Limpieza Industrial. Nuestra dedicación nos ha llevado a formar parte de importantes proyectos en todo el Perú.', '', '', '', 'www.ecocentury.pe', 'jfalkenheiner@ecocentury.pe', '', '', '', '', 'https://www.linkedin.com/company/ecocentury-sac---century-ecological-corporation/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51942630815', '8', 1, 0, '2023-06-03 01:58:33', '2023-09-14 17:13:27'),
(95, 'cia-industrial-lima-s-a-cilsa', 'CIA. INDUSTRIAL LIMA S.A. (CILSA)', '20100814324', '1685751617.png', 'Re-refinación de aceite minerales y base de petroleo, Lubricantes y afines de uso automotriz como a la comercializacion de aceites de lubricantes, aditivos y grasas.', '', '', '', 'https://www.cilsaperu.com/', 'CESARLARI@CILSAPERU.COM', '', '', 'https://www.facebook.com/CompaniaIndustrialLimaSA/?locale=es_LA', '', 'https://www.linkedin.com/in/cilsa/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51985607876', '5', 1, 1, '2023-06-03 02:20:17', '2023-06-03 02:20:17'),
(96, 'colombia-tools-s-a-c', 'COLOMBIA TOOLS S.A.C.', '20602146759', '1685751745.png', 'Amplia experiencia en la comercialización de herramientas especializadas para la industria pinturera, construcción, agrícola, automotriz y acabados. Además, abastecemos a nivel nacional una amplia gama de marcas de gran calidad, con garantía y reconocimiento en el Perú.', '', '', '', 'https://colombiatools.com/', 'mauricio.nieto@colombiatools.com', '', '', 'https://www.facebook.com/colombiatoolsac/', 'https://www.instagram.com/colombiatoolsac/', 'https://www.linkedin.com/in/colombia-tools-sac-empresa-03422620a/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51960216647', '5', 1, 1, '2023-06-03 02:22:25', '2023-06-03 02:22:25'),
(97, 'colombina-del-peru-s-a-c', 'COLOMBINA DEL PERU S.A.C.', '20515108794', '1685752075.png', 'Comercialización de productos de consumo masivo. Cuenta con diversas marcas como: BONBONBUM, Crackers, coffee delight, entre otras.', '', '', '', 'www.colombina.com', 'jacardenas@colombina.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51945118250', '13', 1, 1, '2023-06-03 02:27:55', '2023-06-03 02:27:55'),
(98, 'comboplay-peru-s-a-c', 'COMBOPLAY PERÚ S.A.C.', '20610151052', '1685752170.png', 'Pasarela de pagos que ofrece una solución exacta para empresas del sector público y privado, ofreciendo un sistema de recaudo en línea a bajo costo.', '', '', '', 'http://comboplay.pe/', 'gerencia@comboplay.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51954690931', '13', 1, 1, '2023-06-03 02:29:30', '2023-06-03 02:29:30'),
(99, 'communik-t-sas', 'COMMUNIK-T SAS', '901401654 - 6', '1685752323.png', 'Empresa colombiana que ofrece soluciones eficientes para que las comunicaciones dentro de las organizaciones sean estratégicas, fáciles, creativas y medibles. A través de nuestra app aportamos a la cultura organizacional y la gestión del conocimiento. Nuestro propósito es entregarles a las organizaciones las herramientas paraque hagan de la comunicación interna con sus colaboradores una experiencia cercana, innovadora y efectiva.', '', '', '', 'WWW.COMMUNIK-T.COM', 'juanpablo@communik-t.com', '', '', '', '', 'https://www.linkedin.com/company/appcommunik-t/', '', NULL, NULL, NULL, '+573103340280', '11', 1, 1, '2023-06-03 02:32:03', '2023-06-03 02:32:03'),
(100, 'compania-operadora-de-agua-tecca-s-a-c-tecca-s-a-c', 'COMPAÑIA OPERADORA DE AGUA TECCA S.A.C. - TECCA S.A.C.', '20543537749', '1695767391.png', 'Tenemos soluciones desde el diseño, ingeniería, montaje, puesta en marcha y operación de plantas de tratamiento de agua residual y potable para los sectores Oil & Gas, Alimentos, Minería y diversos sectores industriales', '', '28/03/2022', '01/06/2011', 'www.tecca.com.co', 'anapaulina.forero@tecca.com.co', 'https://twitter.com/TeccaAgua', 'https://www.youtube.com/channel/UCgBoF9YwcCx2vuAHdtYTUHQ', NULL, NULL, 'https://www.linkedin.com/company/tecca-sas/', NULL, '1695767366.JPG', 'https://www.youtube.com/watch?v=xACLc0rjQPA', 'xACLc0rjQPA', '+51954001208', '8', 1, 1, '2023-06-03 02:34:59', '2023-09-27 00:29:51');
INSERT INTO `empresas` (`id`, `slug`, `nombre`, `ruc`, `logo`, `descripcion_empresa`, `descripcion_campania`, `fec_inscrip_cec`, `fec_aniversario_empresa`, `direccion`, `correo`, `rs_twitter`, `rs_youtube`, `rs_facebook`, `rs_instagram`, `rs_linkedin`, `rs_tiktok`, `flyer`, `video`, `embed_video`, `numero_contactos`, `sector_id`, `isActive`, `flestado`, `created_at`, `updated_at`) VALUES
(101, 'concertum-gestion-profesional-de-intereses-s-a-c', 'CONCERTUM GESTION PROFESIONAL DE INTERESES S.A.C.', '20513486139', '1685752633.jpg', 'Somos una empresa de profesionales LOBBYING  y gestión profesional de interés al amparo de la ley 28024-DS.120-2019-PNL y DL 1415. Formamos parte de WPG con oficinas propias en Washington y toda latinoamerica. Somos miembros The National Institute for Lobbying and Ethics.', '', '', '', 'https://www.concertum.com.pe/', 'felgutie@concertum.com.pe', '', '', '', '', 'https://www.linkedin.com/company/concertumperu/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51996476906', '13', 1, 0, '2023-06-03 02:37:13', '2023-09-19 16:13:36'),
(102, 'conectar-telecomunicaciones-s-a-c', 'CONECTAR TELECOMUNICACIONES S.A.C.', '20604704147', '1685752761.png', 'Servicios de  Instalación y mantenimiento de Redes HFC Y Fibra Óptica, mantenimiento de Redes móviles, entre otros.', '', '', '', 'www.conectartv.com', 'ruben.Pena@grupoconectar.co', '', '', '', '', '', '', NULL, NULL, NULL, '+573022204230', '11', 1, 1, '2023-06-03 02:39:21', '2023-06-03 02:39:21'),
(103, 'confipetrol-andina-s-a', 'CONFIPETROL ANDINA S.A.', '20357259976 ', '1685752952.jpeg', 'servicios integrales de operación y mantenimiento para los sectores industriales gas, petroquímico, petrolero, energético y minero.', '', '', '', 'www.confipetrol.com', 'wilson.miranda@confipetrol.pe', '', '', 'https://www.facebook.com/confipetroloficial/', '', 'https://www.linkedin.com/company/confipetrol-s.a./?originalSubdomain=pe', '', NULL, NULL, NULL, '+51993539819', '8', 1, 1, '2023-06-03 02:42:32', '2023-06-03 02:42:32'),
(104, 'controles-empresariales-peru-s-a-c-coem-sac', 'CONTROLES EMPRESARIALES PERU S.A.C. - COEM SAC', '20600007174', '1685753075.png', 'Somos una organización de servicios que integra soluciones de software, hardware y consultoría enfocados en la satisfacción del cliente. Nuestros servicios y soluciones de TI integran desarrollo, herramientas, tecnología y consultorías a la medida de los negocios para que afronten los retos del mercado actual generando ventajas competitivas en sus segmentos.', '', '', '', 'https://controlesempresariales.com/index.php', 'jbarbosa@coem.co', '', '', '', '', 'https://www.linkedin.com/company/coem-peru/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51950111097', '7', 1, 1, '2023-06-03 02:44:35', '2023-06-03 02:44:35'),
(105, 'core-global-partners-sac', 'CORE GLOBAL PARTNERS SAC', '20603047070', NULL, 'Tiene como objetivo generar sinergia entre los profesionales y las empresas para que ambos lleguen a resultados que generen valor. Para ello contamos con alta especializacion de selección de personal.', '', '', '', 'https://coreglobalpartners.com.pe/', 'gsantacruz@coreglobalpartners.com.pe', '', '', 'https://www.facebook.com/coreglobalpartners/?locale=es_LA', '', 'https://www.linkedin.com/company/core-global-partners-peru/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51938160446', '5', 1, 1, '2023-06-03 02:48:15', '2023-06-03 02:48:15'),
(106, 'corporacion-acme-sociedad-de-gestion-academica', 'CORPORACION ACME (SOCIEDAD DE GESTION ACADEMICA)', '20563408660', '1685753451.png', 'Asesoría y gestión en buenas prácticas en los procesos institucionales.', '', '', '', 'www.gestionacademica.com', 'gderomana@acme.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51968490352', '7', 1, 1, '2023-06-03 02:50:51', '2023-06-03 02:50:51'),
(107, 'corporacion-latinoamericana-de-servicios-tecnologicos-s-a-c-clastec', 'CORPORACION LATINOAMERICANA DE SERVICIOS TECNOLOGICOS S.A.C. - CLASTEC', '20508161418', '1685759385.jpg', 'Mantenimiento preventivo y correctivo de equipos informáticos, servicios de outsourcing de impresión, servicio de digitalización documental y comercialización de equipos informáticos, con el fin de brindar a nuestros clientes soluciones integrales a sus necesidades informáticas. contamos un equipo de colaboradores en constante capacitación y con certificaciones en: Xerox, HP, Epson, Lexmark, Microsoft, ITIL.', '', '', '', 'https://clastec.com/', 'roberto.garcia@clastec.com', '', '', 'https://www.facebook.com/ClastecPeru?locale=zh_CN', '', 'https://www.linkedin.com/company/corporacion-latinoamericana-de-servicios-tecnologicos-clastec/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51989062600', '5', 1, 1, '2023-06-03 04:29:45', '2023-06-03 04:29:45'),
(108, 'ctic-s-a-c', 'CTIC  S.A.C.', '20478050667', '1685759675.png', 'Empresa con más de 11 años de experiencia en el mercado peruano,  brindando los servicios de consultoría, gestión, seguridad y continuidad de las TIC\'s.', '', '', '', 'www.ctic.pe', 'carlos.rojas@ctic.pe', '', '', '', '', 'https://www.linkedin.com/company/cticpe/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51992106506', '7', 1, 1, '2023-06-03 04:34:35', '2023-06-03 04:34:35'),
(109, 'cuatrecasas-goncalves-pereira-s-c-r-ltda', 'CUATRECASAS GONÇALVES PEREIRA S.C.R.LTDA', '20604912271', NULL, 'Desde una visión sectorial y enfocada a cada tipo de negocio, acumulamos un profundo conocimiento y experiencia en el asesoramiento más sofisticado en todas las áreas del derecho de empresa. Cuatrecasas cuenta con un Área de Conocimiento e Innovación, formada por un equipo multidisciplinar de abogados, académicos y técnicos, dedicados a la I+D+i, con el objetivo de garantizar un asesoramiento jurídico de la máxima calidad. Nuestra fortaleza son las personas y estamos comprometidos.', '', '', '', 'www.cuatrecasas.com', 'rodrigo.rabines@cuatrecasas.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51997503930', '13', 1, 1, '2023-06-03 04:38:52', '2023-06-03 04:38:52'),
(110, 'dattis-comunicaciones-peru-s-a-c', 'DATTIS COMUNICACIONES PERU S.A.C.', '20607986631', '1685760144.png', 'Dattis es la firma de comunicaciones estratégicas y relaciones públicas líder en Colombia, Ecuador y Perú. Inspiramos y acompañamos a las organizaciones a identificar y enfrentar sus retos de comunicación desde la creatividad. Detectamos cómo cada compañía, marca o institución le puede aportar valor a la sociedad desde su negocio o propósito y la acompañamos para contarlo con impacto a sus públicos. Construimos marca, construimos reputación, construimos valor.', '', '', '', 'www.dattis.com', 'vanessaquinde@dattis.com', '', '', '', '', 'https://www.linkedin.com/company/dattis/?originalSubdomain=co', '', NULL, NULL, NULL, '+51961822835', '13', 1, 1, '2023-06-03 04:42:24', '2023-06-03 04:42:24'),
(111, 'edgeuno-s-a-s-2', 'EDGEUNO S.A.S.', '830.064.425-2', '1685760494.jpg', '', '', '', '', 'https://edgeuno.com/', 'diana@edgeuno.com', 'https://twitter.com/EdgeUno', '', '', '', 'https://www.linkedin.com/company/edgeuno/', '', NULL, NULL, NULL, '+573102770483', '5', 1, 0, '2023-06-03 04:48:14', '2023-09-14 17:14:25'),
(112, 'electricas-de-medellin-peru-s-a-edemsa-2', 'ELECTRICAS DE MEDELLIN PERU S.A. (EDEMSA)', '20502846460', '1685761535.jpg', 'Compañía del GRUPO ETHUSS, ofrece servicios de Ingeniería, mantenimiento, operación, concesiones y construcción de líneas de transmisión y subestaciones eléctricas de alta, media y baja tensión, plantas de generación de energía, redes e hidroeléctricas.', '', '', '', 'www.edemsa.com.co', 'malvarez@edemsa.com.pe', '', '', '', '', 'https://www.linkedin.com/company/el%C3%A9ctricas-de-medell%C3%ADn-per%C3%BA-s-a-/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51993583396', '5', 1, 0, '2023-06-03 05:05:35', '2023-09-14 17:14:53'),
(113, 'expertta-salud-s-a-c', 'EXPERTTA SALUD S.A.C.', '20602059261', '1685761780.png', 'Somos una empresa de servicios medicos de apoyo de atención domiciliario que ofrece servicios en diversas especialidades. Cuenta con un laboratorio propio y botica para la atencion de sus pacientes.', '', '', '', 'https://expertta.com.pe/', 'camilo.buelvas@expertta.com.pe', '', '', 'https://www.facebook.com/expertta/', 'https://www.instagram.com/expertta.salud/?hl=es', 'https://www.linkedin.com/in/expertta/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51950077206', '11', 1, 1, '2023-06-03 05:09:40', '2023-06-03 05:09:40'),
(114, 'formulacion-y-gestion-de-proyectos-s-a-s', 'FORMULACIÓN Y GESTIÓN DE PROYECTOS S.A.S.', '900.539.329-7', '1685761970.jpg', 'Somos una organización que se dedica a diseñar e implementar gestión de proyectos pre factibilidad, factibilidad o viabilidad en metodologías nacionales o internacionales, para la gestión de negocios o proyectos con el Estado Colombiano, Organizaciones no Gubernamentales, Organismos Multilaterales, Agencias de Cooperación. Tambien somos operador economico autorizado . Realizamos alistamientos comerciales e internacionalizacion de empresas.', '', '', '', 'www.fygproyectos.com', 'germandpr@gmail.com', '', '', 'https://www.facebook.com/formulacionygestiondeproyectos/?locale=es_LA', '', 'https://www.linkedin.com/company/formulaci%C3%B3n-y-gesti%C3%B3n-de-proyectos-sas/?originalSubdomain=co', '', NULL, NULL, NULL, '+573112100213', '13', 1, 1, '2023-06-03 05:12:50', '2023-06-03 05:12:50'),
(115, 'gamma-comunicacion-grafica-s-a-c', 'GAMMA COMUNICACION GRAFICA S.A.C.', '20608205650', '1685762242.jpg', 'Especialistas en desarrollo de campañas publicitarias', '', '', '', 'www.gammaacg.com', 'gerenciaperu@gammacg.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51987312602', '13', 1, 1, '2023-06-03 05:17:22', '2023-06-03 05:17:22'),
(116, 'gas-natural-de-lima-y-callao-s-a-calidda', 'GAS NATURAL DE LIMA Y CALLAO S.A (CALIDDA )', '20503758114', '1685762421.png', 'Empresa del grupo Energía de Bogotá, ofrece servicios de implementación y distribución de gas natural.', '', '', '', 'www.calidda.com.pe', 'martin.gutierrez@calidda.com.pe', '', '', 'https://www.facebook.com/CALIDDA/', '', 'https://www.linkedin.com/company/calidda/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51991412476', '5', 1, 1, '2023-06-03 05:20:21', '2023-06-03 05:20:21'),
(117, 'gestion-y-desarrollo-de-proyectos-del-peru-sac', 'GESTION Y DESARROLLO DE PROYECTOS DEL PERU SAC', '20550803993', NULL, 'Especialista en Construcción de Redes externas de Acero y Polietileno e instalaciones internas.', '', '', '', '', '', '', '', 'https://www.facebook.com/gdpsac/?locale=es_LA', '', '', '', NULL, NULL, NULL, '', '13', 1, 1, '2023-06-03 05:24:41', '2023-06-03 05:24:41'),
(118, 'gevt-group-s-a-s', 'GEVT GROUP S.A.S', '901291716-0', '1685762804.png', 'Contribuye a la calidad y eficiencia operacional de la industria Colombiana con soluciones en productos y servicios integrales, únicos y novedosos, apalancando seguridad, calidad, manejo ambiental, disminución de costos, innovación tecnológica, alternatividad y conservación de activos, respaldando a nuestros clientes en preventa, venta y postventa.', '', '', '', 'www.gevtgroup.com', 'eduardo.vergara@gevtgroup.com', '', '', '', '', '', '', NULL, NULL, NULL, '+573102266235', '13', 1, 1, '2023-06-03 05:26:44', '2023-06-03 05:26:44'),
(119, 'gr-inversiones-e-ingenieria-s-a-c', 'GR INVERSIONES E INGENIERIA S.A.C.', '20600046676', '1685763143.png', 'Ser reconocidos como la primera y mejor opción para los proyectos de construcción e ingeniería (gas, civil y mecanica), brindando un valor agregado de tranquilidad y seguridad en el desarrollo de los proyectos, con un equipo altamente profesional, maquinaria en optimas condiciones y costos accesibles que permiten el total cumplimiento de las obras en pro del beneficio socio económico como también financiero de nuestros clientes, aliados, socios y accionistas.', '', '', '', 'www.grinversiones.org', 'robert.ruiz@grinversiones.com', '', '', 'https://www.facebook.com/gri.peru.colombia/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51999916940 ', '5', 1, 1, '2023-06-03 05:32:23', '2023-06-03 05:32:23'),
(120, 'graymar-s-a-c', 'GRAYMAR S.A.C.', '20306459954', '1685763415.png', 'Venta de mármoles, granitos, ónix, cuarzos y revestimientos en distintas piedras para cocina', '', '', '', 'www.grupograymar.com', 'davidgarcia@gramar.com', '', '', 'https://www.facebook.com/graymarperu/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51998147704', '13', 1, 1, '2023-06-03 05:36:55', '2023-06-03 05:36:55'),
(121, 'gricol-s-a-c', 'GRICOL S.A.C.', '', '1685763766.jpg', 'Fabricación, Comercialización de grifería para baños, cocinas. Venta de repuestos y venta institucional.', '', '', '', 'www.gricol.com', 'peru@gricol.com', '', '', '', '', 'https://www.linkedin.com/company/gricol-s-a/?originalSubdomain=ca', '', NULL, NULL, NULL, '+51995468225', '13', 1, 0, '2023-06-03 05:42:46', '2023-09-14 17:15:05'),
(122, 'grupo-himalaya', 'GRUPO HIMALAYA', '20536961802', '1685764760.png', 'Ofrecemos servicios agiles y especializados en el área del embellecimiento, limpieza y mantenimiento de vehiculos y servicios de valet parking.', '', '', '', 'http://www.grupohimalaya.com.pe/', 'dario.orjuela@grupohimalaya.com.pe', '', '', 'https://www.facebook.com/p/Grupo-Himalaya-SAC-100063506345025/', 'https://www.instagram.com/g.s.himalaya/?hl=es', 'https://www.linkedin.com/in/grupo-himalaya-sac-grupo-himalaya-sac-964092197/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51982235644', '13', 1, 1, '2023-06-03 05:59:20', '2023-06-03 05:59:20'),
(123, 'grupo-merpes-peru-s-a-c', 'GRUPO MERPES PERU S.A.C.', '20608508563', '1685764962.jpg', 'Somos un distribuidor mayorista con mas de 26 de años en el mercado comercializando las principales marcas de Tecnología, Electrodomésticos, Hogar y Deportes.', '', '', '', '', 'camilogomez@alfacosac.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51956277371', '13', 1, 1, '2023-06-03 06:02:42', '2023-06-03 06:02:42'),
(124, 'gsg-consultores-asociados-s-a-c', 'GSG CONSULTORES ASOCIADOS S.A.C.', '20544658078', '1685765254.jpg', 'Asesoría Legal especializada en temas de propiedad, saneamiento y regularización de inscripciones de derechos de propiedad.', '', '', '', 'www.gsg.pe', 'camilogomez@alfacosac.com', '', '', '', '', 'https://www.linkedin.com/company/gsgconsultoresasociados/about/', '', NULL, NULL, NULL, '+51956277371', '11', 1, 1, '2023-06-03 06:07:34', '2023-06-03 06:07:34'),
(125, 'gth-alternatives-e-i-r-l', 'GTH ALTERNATIVES E.I.R.L.', '20606196050', '1685765438.png', 'Somos una consultora que brinda sevicio en todos los procesos de recursos humanos y de seguridad y salud en el trabajo.', '', '', '', 'www.gthalternatives.com', 'rgonzales@gsg.pe', '', '', '', '', 'https://www.linkedin.com/company/gth-alternatives/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51989236960', '13', 1, 1, '2023-06-03 06:10:38', '2023-06-03 06:10:38'),
(126, 'hcv-organizacion-y-seguridad-s-a-c-ossac', 'HCV ORGANIZACION Y SEGURIDAD S.A.C. (OSSAC)', '20126980621', '1685765598.jpg', 'Empresa especialista en seguridad empresarial y corporativa, integrada por personal profesional, dedicados al cliente, con más de 25 años de experiencia acumulada en el rubro.', '', '', '', 'www.ossac.pe', 'ccanale@ossac.pe', '', '', 'https://www.facebook.com/ossacseguridad/?ref=page_internal&locale=pt_BR', '', '', '', NULL, NULL, NULL, '+51981331955', '11', 1, 1, '2023-06-03 06:13:18', '2023-06-03 06:13:18'),
(127, 'hmv-ingenieros-ltda-sucursal-peru', 'HMV INGENIEROS LTDA SUCURSAL PERU', '20545839408', '1685765784.jpg', 'Ofrece servicios de desarrollo de proyectos de ingeniería para los sectores de energía eléctrica, aguas y saneamiento básico, petróleo y gas, infraestructura para transporte, instalaciones industriales, urbanismo y ediﬁcios institucionales e ingeniería ambiental.', '', '', '', 'www.h-mv.com', 'ccalle@h-mv.com', '', '', '', '', 'https://www.linkedin.com/company/hmv-ingenieros-s-a-/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51989104851', '5', 1, 1, '2023-06-03 06:16:24', '2023-06-03 06:16:24'),
(128, 'hotelera-costa-del-pacifico-s-a-swissotel-lima', 'HOTELERA COSTA DEL PACIFICO S.A. (SWISSOTEL LIMA)', '20297885538', '1685766019.jpg', 'El Swissotel es un elegante y moderno hotel que cuenta con 345 habitaciones. Tiene el centro de convenciones más grande de la ciudad, con 12 salas de reuniones. Cuenta con el restaurante La Locanda.', '', '', '', 'www.swissotellima.com.pe', 'willy.angulo@swisslim.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51997959990', '13', 1, 1, '2023-06-03 06:20:19', '2023-06-03 06:20:19'),
(129, 'hoteles-estelar-del-peru-s-a-c', 'HOTELES ESTELAR DEL PERU S.A.C.', '20518738314', '1685766192.jpg', 'Cadena colombiana de hoteles con presencia en Lima, Asia y Arequipa', 'Celebra un día inolvidable con nuestro héroe', '', '', 'www.hotelesestelar.com', 'carlos.monsef@hotelesestelar.com', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/company/hoteles-estelar-peru/?originalSubdomain=pe', NULL, '1688484805.jpg', '', '', '+51966336348', '11', 1, 1, '2023-06-03 06:23:12', '2023-07-04 17:33:25'),
(130, 'huertas-del-pino-asesores-s-a-c', 'HUERTAS DEL PINO ASESORES S.A.C.', '20601642507', NULL, 'Firma especialista en la prestación de servicios de asesoría y consultoría empresarial, enfocada principalmente en asesoría legal. Más de 20 años de experiencia profesional multidisciplinaria. Soluciones a la medida de las necesidades de nuestros clientes.', '', '', '', 'www.hpadvisory.net', 'dhpc@hpadvisory.net', '', '', '', '', '', '', NULL, NULL, NULL, '+51989236955', '11', 1, 1, '2023-06-03 06:26:27', '2023-06-03 06:26:27'),
(131, 'human-resources-precision-s-a-c-hrp-somos', 'HUMAN RESOURCES PRECISION S.A.C. (HRP SOMOS)', '20509982318', '1685766569.jpg', 'Servicio de consultoría integral en recursos humanos.', '', '', '', 'www.hrpsomos.com', 'josetafur@hrp.com.pe', 'https://twitter.com/hrpsomos', '', '', '', 'https://www.linkedin.com/company/hrpsomos/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51996329900', '13', 1, 1, '2023-06-03 06:29:29', '2023-06-03 06:29:29'),
(132, 'hydrex-ingenieria-y-construccion-s-a-c', 'HYDREX INGENIERIA Y CONSTRUCCION S.A.C.', '20504138292', '1685766908.png', 'Brindamos servicios de construcción.', '', '', '', 'www.hydrex.pe', 'fbarron@hydrex.pe', '', '', 'https://www.facebook.com/Hydrex/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51943156263', '5', 1, 1, '2023-06-03 06:35:08', '2023-06-03 06:35:08'),
(133, 'hydrexa-peru-s-a-c', 'HYDREXA PERU S.A.C.', '20603629061', '1685767360.png', 'Compañía de servicios ambientales de tratamiento de aguas residuales, agua potable y mantenimiento.', '', '', '', 'www.hydrexaperu.com.pe', 'acastroroca@gmail.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51995038307', '13', 1, 1, '2023-06-03 06:42:40', '2023-06-03 06:42:40'),
(134, 'icontec-del-peru-s-r-l', 'ICONTEC DEL PERU S.R.L.', '20502036549', '1685767551.png', 'Servicios de implementación y capacitación en Normas ISO', '', '', '', 'www.icontec.org', 'ffsalas@la.icontec.org', '', '', '', '', 'https://www.linkedin.com/company/icontec-peru/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51985675168', '11', 1, 1, '2023-06-03 06:45:51', '2023-06-03 06:45:51'),
(135, 'idt-peru-ingenieria-s-a-c', 'IDT PERU INGENIERIA S.A.C.', '20543134628', '1685767707.png', 'Somos tu aliado para el desarrollo de proyectos integrales. Estamos desde el diseño, suministros, instalación y mantenimiento de sistemas de detección y extinción de incendios hasta la automatización (BMS) y seguridad electrónica para tu empresa.', '', '', '', 'http://www.idtperu.com/', 'rduarte@idtperu.com', '', '', 'https://www.facebook.com/p/IDT-Per%C3%BA-ingenier%C3%ADa-SAC-100063518924653/?_rdr', '', 'https://www.linkedin.com/company/idt-peru/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51987968662', '5', 1, 1, '2023-06-03 06:48:27', '2023-06-03 06:48:27'),
(136, 'ihi-peru-s-a-c-metro-hoteles', 'IHI PERU S.A.C.  (METRO HOTELES)', '20600834909', '1685767983.jpg', 'Es una empresa de Colombia que desarrolla y opera los Hoteles Hampton by Hilton en Perú Chile, Colombia y Holiday Inn Bogotá.  Hampton es una de las principales marcas de Hilton con más de 2 500 hoteles de la marca a nivel mundial, el cual está dirigido a un público corporativo y turístico que busca una buena ubicación buena infraestructura, buena conectividad.', '', '', '', 'http://www.hiltonhotels.com/es_XM/hampton-by-hilton/ https://www.ihg.com/holidayinn/hotels/us/en/bogota/bogap/hoteldetail', 'aatuesta.amhoteles@gmail.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51997155323', '5', 1, 0, '2023-06-03 06:53:03', '2023-09-15 16:34:28'),
(137, 'inandes-factor-capital-s-a-c', 'INANDES FACTOR CAPITAL S.A.C.', '20601555434 ', '1685768257.png', 'Empresa de servicios financieros. enfocamos principalmente en sectores económicos no atendidos por las alternativas tradicionales', '', '', '', 'www.efinandes.com', 'rickgallo@gmail.com', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 1, '2023-06-03 06:57:37', '2023-06-03 06:57:37'),
(138, 'industrias-humcar-peru', 'INDUSTRIAS HUMCAR - PERU', '20545819806', '1685768433.png', 'En Industrias Humcar tenemos la capacidad, experiencia y conocimiento para diseñar, fabricar y proveer a nuestros clientes en el mundo, soluciones eficaces para el uso seguro y confiable del gas.', '', '', '', 'https://www.humcar.com/', 'martinc@humcar.com', '', '', '', '', 'https://www.linkedin.com/company/industrias-humcar/', '', NULL, NULL, NULL, '+573102492035', '13', 1, 1, '2023-06-03 07:00:33', '2023-06-03 07:00:33'),
(139, 'ingenieria-transporte-mauri-s-a-c', 'INGENIERIA & TRANSPORTE MAURI S.A.C.', '20603071019', '1685768578.jpg', 'Prestamos servicios de alquiler de camionetas, couster, buses, transporte de personal, transporte de carga en general, alquiler camiones y gruas.', '', '', '', 'https://itmauri.com/', 'm.mauricio@itmauri.com', '', '', 'https://www.facebook.com/groups/2062195013894347/', '', '', '', NULL, NULL, NULL, '+51957669118', '13', 1, 1, '2023-06-03 07:02:58', '2023-06-03 07:02:58'),
(140, 'ingenieria-servicios-y-soluciones-aplicadas-issa-peru-s-a-c', 'INGENIERIA SERVICIOS Y SOLUCIONES APLICADAS ISSA PERU S.A.C', '20546530184', '1685768730.png', 'Brinda servicios de instalación de redes construcción de obras civiles y servicios de Inspección de Gas.', '', '', '', 'http://issa.com.pe/', 'gerenciaperu@issa.com.co', '', '', 'https://www.facebook.com/Issaperusac/', '', '', '', NULL, NULL, NULL, '+51989407937', '11', 1, 1, '2023-06-03 07:05:30', '2023-06-03 07:05:30'),
(141, 'inmobiliaria-de-turismo-s-a-ghl-hoteles', 'INMOBILIARIA DE TURISMO S.A ( GHL HOTELES)', '20136847237', '1685768834.jpg', 'Grupo hotelero colombiano dueño de la cadena de hoteles Sonesta Posada del Inca y Sonesta collection en Perú.', 'célebra a papá en el mejor restaurante de San Isidro con un vista espectacular', '', '', 'www.ghlhoteles.com', '', NULL, NULL, NULL, NULL, NULL, NULL, '1688484950.jpg', '', '', '', '11', 1, 1, '2023-06-03 07:07:14', '2023-07-04 17:35:50'),
(142, 'internexa-peru-s-a', 'INTERNEXA PERU S.A.', '20514448338', '1685769001.jpg', 'Ofrece servicios de soluciones de seguridad para plataformas de Tecnología de información, seguridad movil, almacenamiento de información entre otros.', '', '', '', 'www.internexa.com', 'amonge@internexa.com', '', '', '', '', 'https://www.linkedin.com/company/internexa/?originalSubdomain=pe', '', NULL, NULL, NULL, '', '7', 1, 1, '2023-06-03 07:10:01', '2023-06-03 07:10:01'),
(143, 'inverdesa-peru-s-a-c-bodytech', 'INVERDESA PERU S.A.C. (BODYTECH)', '20492858766', '1685769183.jpg', 'Centro médico deportivo con más de 20 locales en Perú', 'Cuida del bienestar físico de papá. Entrenemos a nuestro gran héroe', '', '', 'www.bodytechperu.com', 'alvaro.garcia@bodytechcorp.com', NULL, NULL, NULL, NULL, NULL, NULL, '1688484998.jpg', '', '', '', '13', 1, 1, '2023-06-03 07:13:03', '2023-07-04 17:36:38'),
(144, 'invermoda-s-a-c-cueros-velez', 'INVERMODA S.A.C - CUEROS VELEZ', '20555610107', '1685769344.png', 'Venta de artículos de cuero', '', '', '', 'www.velez.com.pe', 'asanchez@cuerosvelez.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51980525873', '13', 1, 1, '2023-06-03 07:15:44', '2023-06-03 07:15:44'),
(145, 'inversiones-sempiterno-group-s-a-c', 'INVERSIONES SEMPITERNO GROUP S.A.C.', '20609226201', '1685769474.jpg', 'Holding de empresas que brindan servicios de tecnología y compran starup del mercado suramericano', '', '', '', 'www.sempiterno.group.com', 'ecardenas@sempiterno-group.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51987714518', '7', 1, 1, '2023-06-03 07:17:54', '2023-06-03 07:17:54'),
(146, 'ipro-store-s-a-c', 'IPRO STORE S.A.C.', '20606189428', '1685769733.png', 'Somos una empresa de tecnologia que cuenta con la representacion de Apple en Perú, para la venta de los productos y ejecución de los trámites de garantía y servicio de reparacion fuera de garantia, en la actualidad nuestro enfoque esta orientado al usuario retail y al usuario corporativo (Mineras, financieras, producción, educación, diseño, entre otros), en este ultimo no solo proveemos soluciones en tecniclogia Apple, sino en todas las marcas y software Adobe.', '', '', '', 'www.iprostore.com.pe', 'ximena@iprostore.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51986034381', '7', 1, 1, '2023-06-03 07:22:13', '2023-06-03 07:22:13'),
(147, 'it-business-consultants-professionals-s-a-c-itbcp-s-a-c', 'IT BUSINESS CONSULTANTS PROFESSIONALS S.A.C.-ITBCP S.A.C', '20522513386', '1685794218.png', 'Somos una empresa peruana con 13 años de experiencia desarrollando tecnología a la medida de tus necesidades. Líder en el soporte e implementación de soluciones tecnológicas para estaciones de servicio en el Perú, experta en el Desarrollo de Aplicaciones Móviles, Web y de escritorio.', 'Somos una empresa peruana con 13 años de experiencia desarrollando tecnología a la medida de tus necesidades. Líder en el soporte e implementación de soluciones tecnológicas para estaciones de servicio en el Perú, experta en el Desarrollo de Aplicaciones Móviles, Web y de escritorio.', '', '', 'https://www.itbcp.com/', 'Grober.puchuc@itbcp.com', NULL, NULL, 'https://www.facebook.com/ITBCP?locale=es_LA', NULL, 'https://www.linkedin.com/company/itbcp/', NULL, '1685980748.png', 'https://www.youtube.com/watch?v=glYVigScrkQ', 'glYVigScrkQ', '+51999477143 ', '7', 1, 1, '2023-06-03 14:10:18', '2023-08-25 17:32:37'),
(148, 'j-s-consulting-e-i-r-l', 'J & S CONSULTING E.I.R.L.', '20609585723', '1685794390.png', 'Somos una empresa de Consultoría Financiera y Contable. Elaboramos proyectos de inversión, valorizaciones y reestructuración de pasivos. Promovemos acceso a financiamiento según sus necesidades. Brindamos asesoría contable en general y tributario.', '', '', '', 'https://jsconsulting.pe/', 'ricardo.sanabria@jsconsulting.com.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51980128990', '11', 1, 0, '2023-06-03 14:13:10', '2023-09-14 17:28:11'),
(149, 'joyco-s-a-s-sucursal-del-peru', 'JOYCO S.A.S., SUCURSAL DEL PERÚ', '20609066505', '1685794552.jpg', 'Somos expertos en todo el ciclo de vida de los proyectos. Participamos en la planeación, construcción, operación y mantenimiento de cualquier iniciativa de infraestructura civil.', '', '', '', 'https://www.joyco.co/', 'ynthia.lewis@joyco.com.co', '', 'https://www.youtube.com/@Joyco', '', '', '', '', NULL, NULL, NULL, '+573152336002', '5', 1, 0, '2023-06-03 14:15:52', '2023-09-14 17:28:48'),
(150, 'julio-palomino-asociados-s-a-c', 'JULIO PALOMINO & ASOCIADOS S.A.C.', '20607605255', '1685794712.jpg', 'En nuestro Estudio de Abogados Laboralistas, optimizamos los procesos contractuales de las empresas, ahorrando costos y brindando el mejor tipo y diseño contractual específico para las necesidades y requerimientos de cada Organización. Nuestro servicio está centrado en buscar soluciones satisfactorias evitando contingencias laborales frente a SUNAFIL y MINTRA.', '', '', '', 'https://estudiojpalominoyasociados.com/', 'jpalomino@estudiojpalominoyasociados.com', '', '', 'https://www.facebook.com/JulioPalominoAsociados/?locale=es_LA', '', 'https://www.linkedin.com/company/julio-palomino-asociados-laboralistas/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51997936073', '13', 1, 1, '2023-06-03 14:18:32', '2023-06-03 14:18:32'),
(151, 'kresalja-ip-sociedad-civil-de-responsabilidad-limitada', 'KRESALJA IP SOCIEDAD CIVIL DE RESPONSABILIDAD LIMITADA', '20600367189', '1685794841.jpg', 'Somos profesionales reconocidos por nuestra trayectoria en materia de defensa y protección de la propiedad intelectual (marcas, patentes, derechos de autor), por diversos directorios nacionales e internacionales – Leaders Leage, World Trademark Review, entre otras. Somos miembros de diversas organizaciones nacionales e internacionales vinculadas al Derecho de la Competencia y de la Propiedad Intelectual (INTA, ASIPI, APPI, entre otros).', '', '', '', 'www.kresaljaip.com', 'mrobles@kresaljaip.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51993451193', '11', 1, 1, '2023-06-03 14:20:41', '2023-06-03 14:20:41'),
(152, 'l-s-obras-y-servicios-integrales-s-a-c-oyssac', 'L.S. OBRAS Y SERVICIOS INTEGRALES S.A.C. ( OYSSAC)', '20543689255', '1685794956.png', 'Especialistas en instalaciones eléctricas en baja y media tensión. Te ayudamos a optimizar la inversión en la mejora de infraestructura eléctrica para oficinas e industrias.', '', '', '', 'www.oyssac.com', 'administracion@oyssac.com', '', '', 'https://www.facebook.com/OYSSAC/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51992785494', '5', 1, 1, '2023-06-03 14:22:36', '2023-06-03 14:22:36'),
(153, 'larbis-s-a-c', 'LARBIS S.A.C.', '20603615949', '1685795107.png', 'El invierno empezaba y buscó un termostato para regular la temperatura del departamento, y descubrió que las edificaciones no están pensadas para calefacción. Sin embargo, no se resigno a usar ropa abrigada dentro de casa y su terraza; buscamos un sistema de calefacción que guarde armonía con tus espacios, bajo consumo de energía y fácil de usar que se adaptara a la realizad de América Latina.', '', '', '', 'https://www.larbis.net/', 'c.larrea@larbis.net', '', '', 'https://www.facebook.com/larbiscalefaccion/?locale=es_LA', '', '', '', NULL, NULL, NULL, '+51997520437', '13', 1, 0, '2023-06-03 14:25:07', '2023-09-14 17:28:29'),
(154, 'legal-partners-s-a-c', 'LEGAL PARTNERS S.A.C.', '20602895930', '1685795216.jpg', 'Brindamos servicios de asesoría legal corporativa, consultoría en material de regulación energética (Gas Natural y Electricidad), así como Legislación de Construcción, outsourcing contable y de planillas.', '', '', '', 'www.legalpartners.pe', 'bruno.vega@legalpartners.pe', '', '', '', '', 'https://www.linkedin.com/company/legal-partners-per%C3%BA/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51996996009', '11', 1, 1, '2023-06-03 14:26:56', '2023-06-03 14:26:56'),
(155, 'leo-andes-s-a-leonisa', 'LEO ANDES S.A. (LEONISA)', '', '1685795368.jpg', 'Fabricación y comercialización de ropa interior femenina, prendas modeladoras, trajes de baño y ropa interior masculina.', '', '', '', 'www.leonisa.com', 'rperez@leoandes-pe.com', '', 'https://www.youtube.com/user/LeonisaChannel', 'https://www.facebook.com/PeruLeonisa?_rdc=2&_rdr', 'https://www.instagram.com/leonisaperu/', '', '', NULL, NULL, NULL, '+51993513672', '13', 1, 0, '2023-06-03 14:29:28', '2023-09-14 17:29:05'),
(156, 'lima-vias-express-s-a', 'LIMA VIAS EXPRESS S.A.', '20510394918', '1685795506.jpg', 'Operador de buses del sistema de transporte masivo BTR METROPOLITANO de Lima', '', '', '', 'www.lvesa.pe', 'hrugeles@lvesa.pe', '', '', 'https://www.facebook.com/limaviasexpress/', '', '', '', NULL, NULL, NULL, '+51966360952', '13', 1, 1, '2023-06-03 14:31:46', '2023-06-03 14:31:46'),
(157, 'm-m-security-audit-e-i-r-l', 'M & M SECURITY AUDIT E.I.R.L.', '20512970592', '1685795631.jpg', 'Somos una Empresa profesional y altamente calificada en temas técnicos de Seguridad que tiene como función principal la Auditoria de Seguridad de Empresas, Instalaciones y Negocios en General en términos de Protección.', '', '', '', 'www.mymsecurityaudit.com', 'lmolina@mymsecurityaudit.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51974769918', '13', 1, 0, '2023-06-03 14:33:51', '2023-09-14 17:29:59'),
(158, 'mab-ingenieria-de-valor-s-a-sucursal-del-peru', 'MAB INGENIERIA DE VALOR S.A. SUCURSAL DEL PERU', '20605125540', '1685795770.jpg', 'En Mainstream Global, ofrecemos soluciones y servicios de logísticas inversas sostenibles y ambientalmente racionales para equipos informáticos y electrónicos.', '', '', '', 'www.mainstream-global.com', 'Fdussan@mab.com.co', '', '', 'https://www.facebook.com/p/MAB-ingenieria-de-valor-sucursal-Per%C3%BA-100070588500817/?_rdr', '', 'https://www.linkedin.com/company/mab-ingenier%C3%ADa-de-valor-per%C3%BA/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51925227661', '5', 1, 1, '2023-06-03 14:36:10', '2023-06-03 14:36:10'),
(159, 'mac-transport-s-a-c', 'MAC TRANSPORT S.A.C.', '20517830268', '1685795903.png', 'En Mac Transport llevamos 14 años de experiencia creando soluciones flexibles e innovadoras para nuestros clientes. Por ello, contamos con un equipo altamente calificado.', '', '', '', 'www.mactransport.com.pe', 'mmaccunn@mactransport.com.pe', '', '', 'https://www.facebook.com/mactransportperu/', 'https://www.instagram.com/mactransportsac/?hl=es', 'https://www.linkedin.com/company/mac-transport-s-a-c-/', '', NULL, NULL, NULL, '+51998111210', '9', 1, 1, '2023-06-03 14:38:23', '2023-06-03 14:38:23'),
(160, 'malecon-balta-operator-s-a-c-hilton-garden', 'MALECON BALTA OPERATOR S.A.C (HILTON GARDEN)', '20601007119', '1685796106.png', 'Servicio de Alojamiento y Eventos', '', '', '', 'https://www.hilton.com/en/hotels/limlmgi-garden-inn-lima-miraflores/', 'sofia.drosos@hilton.com', 'https://twitter.com/HiltonGardenInn', 'https://www.youtube.com/channel/UCeZLIZsSGy-e9KIh6AU1Ojg', 'https://www.facebook.com/hgi.limamiraflores/', 'https://www.instagram.com/hiltongardeninn/', '', '', NULL, NULL, NULL, '+51960333692 ', '6', 1, 1, '2023-06-03 14:41:46', '2023-06-03 14:41:46'),
(161, 'marco-marketing-consultants-peru-s-a-c', 'MARCO MARKETING CONSULTANTS PERU S.A.C.', '20537816083', '1685796307.JPG', '‌Formamos modelos comerciales orientados a la necesidad de cada cliente planteando alternativas de impacto sobre el negocio acompañando su evolución. Adoptamos tus objetivos y nos convertimos en tu mejor aliado.', '', '', '', 'https://marcomkt.com/', 'nicolasi@marcomkt.com', '', '', '', '', 'https://www.linkedin.com/company/marcomkt/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51922471672', '6', 1, 1, '2023-06-03 14:45:07', '2023-06-03 14:45:07'),
(162, 'mavev-corredores-de-seguros-s-a-c', 'MAVEV CORREDORES DE SEGUROS S.A.C.', '20603667213', '1685796441.jpg', 'Asesoría sobre coberturas más convenientes, informar de las condiciones contratadas, intermediación entre las compañías de seguros y el cliente, entrega oportuna de contrato de seguros', '', '', '', 'www.mavev.com', 'eduardo.neuhaus@mavev.com', '', '', '', '', 'https://www.linkedin.com/company/mavev/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51971269093', '13', 1, 1, '2023-06-03 14:47:21', '2023-06-03 14:47:21'),
(163, 'media-commerce-peru-s-a-c', 'MEDIA COMMERCE PERU S.A.C.', '20522259064', '1685797260.png', 'Operador Internacional de Telecomunicaciones. ofrece Red de fibra optica', '', '', '', 'www.mcperu.pe', 'william.calderon@mcperu.pe', 'https://twitter.com/media_commerce', '', 'https://www.facebook.com/MediaCommerceOficial', '', '', '', NULL, NULL, NULL, '+51923816392', '7', 1, 1, '2023-06-03 15:01:00', '2023-06-03 15:01:00'),
(164, 'metalurgica-construcel-peru-s-a-c-metacol', 'METALURGICA CONSTRUCEL PERU S.A.C. - METACOL', '20609635071', '1685797424.jpg', ' Es una empresa especializada en accesorios en hierro dúctil, fundiciones especiales, proyectos y montajes, obra civil, enfocada en plantas de tratamiento de agua potable, residual, PCH con más de 50 años de experiencia en el mercado que nos ha proporcionado altos niveles de calidad, credibilidad y confianza avalándonos como una empresa referente en el sector metalúrgico.', '', '', '', 'https://metacol.com/', 'Gerencia.peru@metacol.com', 'https://twitter.com/metacol_sa', 'https://www.youtube.com/channel/UCL8hTN9GdKpdS9TSDUXKJAw', 'https://es-la.facebook.com/pages/metacol-sa/314073735269716', 'https://www.instagram.com/metacol_s.a/', 'https://www.linkedin.com/company/metacol-s-a-/', '', NULL, NULL, NULL, '+51986689371', '5', 1, 1, '2023-06-03 15:03:44', '2023-06-03 15:03:44'),
(165, 'michigan-corporation-asociacion-educativa-sir-william-osler', 'MICHIGAN CORPORATION (Asociación Educativa Sir William Osler)', '20603391609', NULL, 'Instituto educativo del idioma Ingles. Ubicado en Arequipa y Lima.', '', '', '', 'www.michigancorp.pe', 'j.guerra@michigancorp.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51959289048', '13', 1, 1, '2023-06-03 15:05:39', '2023-06-03 15:05:39'),
(166, 'notaria-espinosa-ore', 'NOTARIA ESPINOSA ORÉ', '10072735272', '1685797768.jpg', 'Somos un equipo de personas que nos gusta trabajar en un ambiente de creatividad, colaboración y confianza, lo cual nos permite ofrecerles un servicio notarial de las mas alta calidad, acorde con las exigencias de nuestros clientes.', '', '', '', 'http://notariaespinosa.com/', 'cchavez@notariaespinosa.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51955322248', '13', 1, 1, '2023-06-03 15:09:28', '2023-06-03 15:09:28'),
(167, 'omar-cardenas-y-cia-s-a-c', 'OMAR CARDENAS Y CIA S.A.C.', '20521696584', '1685797900.jpg', 'Servicios legales en materia corporativa y patrocinio de interés', '', '', '', 'http://www.omarcardenasycia.com/', 'ocardenas@omarcardenasycia.com', '', '', '', '', 'https://www.linkedin.com/in/omar-c%C3%A1rdenas-mart%C3%ADnez-11493619/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51986634439', '13', 1, 1, '2023-06-03 15:11:40', '2023-06-03 15:11:40'),
(168, 'openpay-peru-s-a', 'OPENPAY PERU S.A.', '20607489433', '1685798033.jpg', 'Pasarela de pagos del BBVA, ofrecemos pagos en línea con tarjetas y canales alternativos.', '', '', '', 'www.openpay.pe', 'juan.giraldo@osctopsolutionsgroup.com', '', '', 'https://www.facebook.com/OpenpayPE', 'https://www.instagram.com/openpaype/', 'https://www.linkedin.com/company/openpaype/about/', '', NULL, NULL, NULL, '+51922475365', '7', 1, 0, '2023-06-03 15:13:53', '2023-09-14 17:32:14'),
(169, 'osc-telecoms-s-a-c', 'OSC TELECOMS S.A.C.', '20555636246', '1685798180.jpg', 'Es un Integrador Latinoamericano, que ofrece diferentes soluciones en el Sector de Telecomunicaciones e IT. Con más de 25 años de experiencia y presencia en más de 15 países, cuenta con un talento humano de más de 900 colaboradores.', '', '', '', 'www.osctopsolutionsgroup.com', 'juan.giraldo@osctopsolutionsgroup.com', '', '', 'https://www.facebook.com/OSCTopsolutionsgroup', 'https://www.instagram.com/osctopsolutionsgroup/', 'https://www.linkedin.com/company/osc-telecoms/', '', NULL, NULL, NULL, '+51922475365', '13', 1, 1, '2023-06-03 15:16:20', '2023-06-03 15:16:20'),
(170, 'oviedo-danessi-asociados-asesores-y-corredores-de-seguros-s-a-c', 'OVIEDO & DANESSI ASOCIADOS ASESORES Y CORREDORES DE SEGUROS S.A.C.', '20522793648', '1685798291.png', 'Servicio de asesoría en seguros', '', '', '', 'https://oviedodanessi.com/', 'rcastillo@oviedodanessi.com', '', '', '', '', 'https://www.linkedin.com/company/oviedodanessi/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51988617146', '13', 1, 1, '2023-06-03 15:18:11', '2023-06-03 15:18:11'),
(171, 'p-y-t-gestiones-empresariales-s-a-c', 'P Y T GESTIONES EMPRESARIALES S.A.C.', '20601951551 ', '1685798434.jpg', 'Ofrece servicios de representación legal, administrativa, control contable además de prestación de servicios de gestión aduanera, almacenaje y distribución.', '', '', '', 'www.pytgestionesempresariales.pe', 'gerencia@pytgestionesempresariales.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51954747396', '11', 1, 1, '2023-06-03 15:20:34', '2023-06-03 15:20:34'),
(172, 'p-a-peru-s-a-c', 'P.A. PERU S.A.C.', '20549011196', '1685798566.png', 'Servicios de Ingeniería, construcción e infraestructura de obras civiles, mecánicas, eléctricas, entre otros.', '', '', '', 'www.profesionalesasociados.pe', 'angela.perdomo@profesionalesasociados.pe', '', 'https://www.youtube.com/channel/UC74JbpKvGlRAxA6Yy9ygUUw', 'https://www.facebook.com/paperusac/', '', 'https://www.linkedin.com/company/paperusac/?trk=public_post_share-update_actor-text', '', NULL, NULL, NULL, '+51977610994', '5', 1, 1, '2023-06-03 15:22:46', '2023-06-03 15:22:46'),
(173, 'par-servicios-integrales-s-a-sucursal-peru', 'PAR SERVICIOS INTEGRALES S.A SUCURSAL PERU', '20601747198', '1685798740.jpg', 'Brinda Servicios de Gestión de Proveedores para el sector energético en la base de datos RUP® - Registro Unificado de Proveedores', '', '', '', 'www.parservicios.com', 'Gonzalo.aspillaga@parservicios.com', '', 'https://www.youtube.com/channel/UCQ2TtOptDWrnyUnRLEemL5Q', 'https://www.facebook.com/parserintegrales', 'https://www.instagram.com/parservicios/', 'https://www.linkedin.com/company/par-servicios-integrales/', '', NULL, NULL, NULL, '+51972228038', '11', 1, 1, '2023-06-03 15:25:40', '2023-06-03 15:25:40'),
(174, 'paredes-cano-asociadossociedad-civil-deresponsabilidad-limitada', 'PAREDES CANO & ASOCIADOSSOCIEDAD CIVIL DERESPONSABILIDAD LIMITADA', '20107997165', '1685798902.png', 'Somos una firma de servicios profesionales con mas de 34 años contribuyendo al crecimiento de nuestros clientes brindando servicios integrales atendiendo necesidades y requerimientos de sus organizaciones. Realizamos auditorias financieras, servicios de nomina, impuestos y legal, outsourcing contable, precios de transferencias, consultoría, inventarios y activos fijos, asesoría empresarial, asesoría tributaria.', '', '', '', 'www.paredescano.com', 'juan.cano@paredescano.com', 'https://twitter.com/ParedesCanoyAso', '', 'https://www.facebook.com/paredescanoyasoc', '', 'https://www.linkedin.com/company/paredes-cano-y-asociados/', '', NULL, NULL, NULL, '+51997525491', '13', 1, 1, '2023-06-03 15:28:22', '2023-06-03 15:28:22'),
(175, 'pas-peru-s-a-c', 'PAS PERU S.A.C.', '20600462483', '1685799215.jpg', 'Estudio contable que brinda consultoria y asesoria.', '', '', '', 'http://www.pasperu.com/', 'Gnieto@pasperusac.com', '', '', '', '', 'https://www.linkedin.com/company/pas-peru-sac/about/', '', NULL, NULL, NULL, '+51997891041', '13', 1, 1, '2023-06-03 15:33:35', '2023-06-03 15:33:35'),
(176, 'payet-rey-cauvi-perez-s-civil-de-r-l', 'PAYET, REY, CAUVI, PÉREZ S. CIVIL DE R.L.', '20299704913', '1685799357.jpg', 'Prestamos servicios en todas las áreas del derecho empresarial, asesorando y representando a clientes nacionales y extranjeros en los negocios e inversiones que realizan.', '', '', '', 'https://prcp.com.pe/', 'gsc@prcp.com.pe', '', 'https://www.youtube.com/channel/UCbXFuuBk4-B26fdfYft3Oag', 'https://www.facebook.com/prcpabogados/', '', 'https://www.linkedin.com/company/prc/', '', NULL, NULL, NULL, '+51997501886', '13', 1, 1, '2023-06-03 15:35:57', '2023-06-03 15:35:57'),
(177, 'pedelta-ingenieria-s-a-c', 'PEDELTA INGENIERIA S.A.C.', '20609716551', '1685799563.jpg', 'Somos una empresa independiente de consultoría especializada en ingeniería de puentes y estructuras con logros sobresalientes en proyectos Design-Build y PPP a través de nuestras oficinas en Canadá, Colombia, Perú, España y los Estados Unidos. Damos soporte a nuestros clientes con nuestro conocimiento local y perspectiva internacional.', '', '', '', 'https://www.pedelta.com/quienes-somos', 'KCORAL@PEDELTA.COM.PE', '', '', '', '', 'https://www.linkedin.com/company/pedelta/', '', NULL, NULL, NULL, '+51972607300', '13', 1, 1, '2023-06-03 15:39:23', '2023-06-03 15:39:23'),
(178, 'peru-cargo-line-s-a-c', 'PERU CARGO LINE S.A.C.', '20511687986', '1685799813.png', 'Soluciones integrales en protección eléctrica, respaldo energético y calidad de energía. equipos ups monofásicos, trifásicos y servicios', '', '', '', 'https://liverita.com/nosotros/', 'carolina.hurtado@liverita.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51970383040', '7', 1, 0, '2023-06-03 15:43:33', '2023-09-14 17:36:58'),
(179, 'plataforma-peru-s-a-c', 'PERU MASIVO S.A', '20492392031', NULL, 'Operadores del Sistema BRT de Lima, más conocido como El Metropolitano.', NULL, '', '', 'www.perumasivo.com', 'jorgepo@perumasivo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+51982854241', '9', 1, 1, '2023-06-03 15:45:49', '2023-06-08 05:25:24'),
(180, 'plataforma-peru-s-a-c-2', 'PLATAFORMA PERU S.A.C.', '20544025890', NULL, 'Servicios audiovisuales y expertos en produccion de eventos', '', '', '', 'www.plataformaav.com', 'luisa.osorio@plataforma.com.co', '', '', '', '', '', '', NULL, NULL, NULL, '+51999068298', '7', 1, 1, '2023-06-03 15:47:52', '2023-06-03 15:47:52'),
(181, 'prisontec-s-a-c', 'PRISONTEC S.A.C.', '20563709601', '1685800187.jpg', 'Servicio de implementación de sistema de telefonía pública para penitenciaría', '', '', '', 'www.prisontec.com', 'augusto.fernandez@prisontec.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51988626803', '11', 1, 1, '2023-06-03 15:49:47', '2023-06-03 15:49:47'),
(182, 'promigas-peru-s-a-gascop', 'PROMIGAS PERU S.A. (GASCOP)', '20521608987', '1685800319.jpg', 'Gas natural para el mercado industrial y vehicular', '', '', '', 'http://www.promigas.com/', 'carina.ortega@promigas.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51987939093', '5', 1, 1, '2023-06-03 15:51:59', '2023-06-03 15:51:59'),
(183, 'proyecta-t-ltda', 'PROYECTA-T LTDA', '901096692-7', '1685800535.png', '', '', '', '', 'www.proyectat.co', 'lrodriguez@proyectat.co', '', 'https://www.youtube.com/channel/UCza_YR5QaLWKB6zUMp6ajLA', 'https://www.facebook.com/proyectat1/', 'https://www.instagram.com/proyectat.co/', 'https://www.linkedin.com/company/proyectat-colombia/', '', NULL, NULL, NULL, '+573183811658', '13', 1, 1, '2023-06-03 15:55:35', '2023-06-03 15:55:35'),
(184, 'proyectos-productos-soluciones-sac', 'PROYECTOS PRODUCTOS SOLUCIONES SAC', '20610833722', NULL, 'Somos una empresa especializada en la fabricación de Spools metálicos (CS, SS, Aleados) en 7 años hemos participado en los Proyectos más importantes del País', '', '', '', '', 'eduardo.vera@ppspiping.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51993757006', '13', 1, 1, '2023-06-03 15:58:11', '2023-06-03 15:58:11'),
(185, 'publi-plus-e-i-r-l', 'PUBLI PLUS E.I.R.L', '20601117976', NULL, 'Ofrecemos el servicio personalizado de confección de ropa industrial y la manufactura de merchandising, cumpliendo con todos los requerimientos de los clientes, brindando no solo una atención rápida si no también la mejor calidad a un precio competitivo.', '', '', '', 'www.ropaindustrial.confeccionespubliplus.com', 'patty-rodriguezp@hotmail.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51941351684', '9', 1, 0, '2023-06-03 16:00:13', '2023-09-14 17:34:40'),
(186, 'pvc-gerfor-peru-s-a-c', 'PVC GERFOR PERU S.A.C.', '20524501521', '1685801024.png', 'Producción y comercialización de tuberías y accesorios de PVC, grifería de uso doméstico, tejas en PVC y geosistemas.', '', '', '', 'www.gerfor.com', 'Marco.Pineda@gerfor.com', 'https://twitter.com/PVCGerfor', 'https://www.youtube.com/channel/UC6Ewt3km4Wfb9fZDf9ztihw', 'https://www.facebook.com/people/PVC-Gerfor/100063970896359/', 'https://www.instagram.com/pvc_gerfor/?hl=es', 'https://www.linkedin.com/company/pvc-gerfor/', '', NULL, NULL, NULL, '+5151997377146', '13', 1, 1, '2023-06-03 16:03:44', '2023-06-03 16:03:44'),
(187, 'quala-peru-s-a-c', 'QUALA PERÚ S.A.C.', '20550914809', '1685801314.png', 'Elaboración y comercialización de productos de consumo masivo', '', '', '', 'www.quala.com.pe', 'mbecerra@quala.com.pe', '', '', '', 'https://www.instagram.com/qualacolombia/?hl=es', 'https://www.linkedin.com/company/quala-s-a-/', '', NULL, NULL, NULL, '+51945058929', '13', 1, 1, '2023-06-03 16:08:34', '2023-06-03 16:08:34'),
(188, 'quantic-development-del-peru-s-a-c-spira', 'QUANTIC DEVELOPMENT DEL PERU S.A.C. (SPIRA)', '20518890612', NULL, 'Alineados a los objetivos y a la estrategia de su compañía, en SPIRA diseñamos, desarrollamos y ejecutamos soluciones de formación y desarrollo, con una metodología encaminada a aumentar el desempeño.', '', '', '', 'www.grupospira.com', 'nicolas.solorzano@spira.pe', '', '', '', '', '', '', NULL, NULL, NULL, '+51989192333', '11', 1, 1, '2023-06-03 16:10:43', '2023-06-03 16:10:43'),
(189, 'red-de-energia-del-peru-s-a-isa-rep', 'RED DE ENERGIA DEL PERU S.A. (ISA REP)', '20504645046', '1685801619.jpg', 'Transmisión de energía eléctrica en alta tensión a todo el Perú', '', '', '', 'www.rep.com.pe', 'mcoronel@rep.com.pe', '', 'https://www.youtube.com/user/ReddeEnergiadelPeru', 'https://www.facebook.com/isarep.conexiones/?lang=es', '', 'https://www.linkedin.com/company/isarep/?lang=es', '', NULL, NULL, NULL, '+51989307595', '13', 1, 1, '2023-06-03 16:13:39', '2023-06-03 16:13:39'),
(190, 'red-verde-peru-s-a-c-servientrega', 'RED VERDE PERU S.A.C. (SERVIENTREGA)', '20506471703', NULL, 'Ofrece servicios de transporte, almacenamiento, empaque y embalaje, logística promocional, y distribución de documentos y mercancías.', '', '', '', 'www.servientrega.com.pe', 'belisa.herrera@servientrega.com', 'https://twitter.com/servientregacs?lang=es', 'https://www.youtube.com/user/servientregacs', 'https://www.facebook.com/ServientregaPeru/', '', '', '', NULL, NULL, NULL, '+51949936047', '9', 1, 1, '2023-06-03 16:15:42', '2023-06-03 16:15:42');
INSERT INTO `empresas` (`id`, `slug`, `nombre`, `ruc`, `logo`, `descripcion_empresa`, `descripcion_campania`, `fec_inscrip_cec`, `fec_aniversario_empresa`, `direccion`, `correo`, `rs_twitter`, `rs_youtube`, `rs_facebook`, `rs_instagram`, `rs_linkedin`, `rs_tiktok`, `flyer`, `video`, `embed_video`, `numero_contactos`, `sector_id`, `isActive`, `flestado`, `created_at`, `updated_at`) VALUES
(191, 'ruiz-rodriguez-y-compania-s-a-c', 'RUIZ RODRIGUEZ Y COMPAÑIA S.A.C.', '20543916928', '1685801890.JPG', 'Empresa que brinda soluciones integrales ejecutando trabajos de Ingeniería Conceptual, Básica y de Detalle, así como construcción, montaje y mantenimiento de obras de infraestructura para los diferentes sectores productivos del país que consumen gas natural y/o petróleo. Otra unidad de negocios de la empresa está dedicada a la construcción con acero liviano -Steel Framing. Estas construcciones están enfocadas a promover las últimas tecnologías en consumos energéticos que permitan ser sostenibles', '', '', '', 'www.ruizrodriguezcia.com', 'aruiz@ruizrodriguezcia.com', '', '', '', '', 'https://www.linkedin.com/company/ruiz-rodr%C3%ADguez-cia/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51994398329', '5', 1, 1, '2023-06-03 16:18:10', '2023-06-03 16:18:10'),
(192, 'sanitas-peru-s-a-eps', 'SANITAS PERU S.A. - EPS', '20523470761', '1685802109.png', 'Compañía de seguros de Salud', '', '', '', 'www.sanitasperu.com', 'nonovoa@sanitasperu.com', '', '', 'https://www.facebook.com/sanitasperu/?locale=es_LA', 'https://www.instagram.com/sanitasperu/?hl=es', 'https://www.linkedin.com/company/sanitas-per%C3%BA/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51943004365', '13', 1, 1, '2023-06-03 16:21:49', '2023-06-03 16:21:49'),
(193, 'sergemi-contratistas-s-a-c', 'SERGEMI CONTRATISTAS S.A.C.', '20523779193', '1685802216.jpg', 'Brindamos soluciones para el sector hidrocarburos, automotriz y arquitectónico.', '', '', '', 'www.sergemi.com.pe', 'cvelasquez@sergemi.com.pe', '', '', '', '', 'https://www.linkedin.com/company/sergemi-grupo/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51975132478', '5', 1, 0, '2023-06-03 16:23:36', '2023-09-20 23:19:39'),
(194, 'servicios-de-ingenieria-y-construccion-sas-sucursal-peru-servinc-sas-sucursal-peru', 'Servicios de Ingeniería y Construcción SAS Sucursal Perú - SERVINC SAS Sucursal Perú', '20603718951', '1685802394.JPG', 'Prestar servicios a entidades estatales y privadas en proyectos de consultoría, con continuo desarrollo de RRHH, equipos e infraestructura; garantizando satisfacción del cliente, desarrollo sostenible y S.I.S.O.', '', '', '', 'https://www.servinc.org/empresa/aspectosgenerales.html', 'tmafioly@servinc.org', '', '', '', '', '', '', NULL, NULL, NULL, '+51978360819', '13', 1, 1, '2023-06-03 16:26:34', '2023-06-03 16:26:34'),
(195, 'servicios-especializados-en-medicina-integral-s-a-c-alerta-medica', 'SERVICIOS ESPECIALIZADOS EN MEDICINA INTEGRAL S.A.C. (ALERTA MEDICA)', '20515292781', '1685802773.png', 'Empresa peruana líder en servicios pre-hospitalarios y brindamos atención en casos de emergencia.', 'Disfruta nuestro descuento especial todo junio', '', '', 'www.alertamedicaperu.com.pe', 'mcotoya@alertamedicaperu.com.pe', NULL, NULL, 'https://www.facebook.com/AlertaMedicaPE', 'https://www.instagram.com/alertamedicaperu/', 'https://www.linkedin.com/company/alertamedica/', NULL, '1688484775.jpg', '', '', '+51946421567', '13', 1, 1, '2023-06-03 16:32:53', '2023-07-04 17:32:55'),
(196, 'software-enterprise-services-sac', 'SOFTWARE ENTERPRISE SERVICES SAC', '20513613009', '1685803465.png', 'Entre nuestros servicios TI tenemos Fábrica de software y testing, outsourcing TI, Help desk, RPA, Migración tecnológica, entre otros', '', '', '', 'https://sesitdigital.com/', 'gerencia.peru@servimeters.com.pe', 'https://twitter.com/intent/tweet?text=Inicio%20-%20SES%20Digital%20https%3A%2F%2Fsesitdigital.com%2F&related=AddToAny,micropat', '', '', '', 'https://www.linkedin.com/company/software-enterprise-services/?originalSubdomain=pe', '', NULL, NULL, NULL, '+51944248675', '7', 1, 1, '2023-06-03 16:44:25', '2023-06-03 16:44:25'),
(197, 'servimeters-s-a-s', 'SERVIMETERS PERÚ S.A.C.', '830117370-5', '1694102653.png', 'Somos un organismo evaluador de la conformidad con más de 20 años de experiencia. Estamos acreditados para la Calibración de medidores, Inspección de ascensores y Certificación de Sistemas de Gestión. Adicionalmente, contamos con servicio de capacitación para mejorar las competencias de sus empleados.', '¿Necesita parametrizar eficientemente la selección de sus proveedores?\r\n\r\nNuestra línea de Homologación de Proveedores se especializa en analizar de manera integral \r\nlas condiciones, recursos y procedimientos de los proveedores actuales y potenciales de una Organización, \r\na fin de preparar o determinar que cada proveedor seleccionado por una Compañía cumpla a cabalidad con los \r\nrespectivos requisitos y procedimientos que necesitan las Organizaciones de alto impacto.\r\n\r\nventasperu@servimeters.com.pe', '08/01/2022', '02/21/2003', 'https://www.servimeters.com.pe/', 'gerencia.peru@servimeters.com.pe', NULL, 'https://www.youtube.com/@ServimetersPeru', NULL, NULL, 'https://www.linkedin.com/company/servimeters-peru', NULL, '1694197988.png', 'https://www.youtube.com/watch?v=yX8GiD11qac&t=2s', 'yX8GiD11qac', '+51944248675', '5', 1, 1, '2023-06-03 16:47:00', '2023-09-08 20:33:08'),
(198, 'supertex-del-peru-s-a-c', 'SUPERTEX DEL PERU S.A.C.', '20601274133', '1685803748.png', 'Representantes en Colombia de la marca ARENA, fabricante de productos desarrollados para la práctica de la Natación.  Actualmente con filiales de representación Perú y Ecuador', '', '', '', 'www.arenacolombia.com', 'jtorrado@supertexinc.com', '', 'https://www.youtube.com/channel/UCFygIybvJAt1TAiRDy4zcdg', 'https://www.facebook.com/consejoempresarialcolombiano', '', 'https://www.linkedin.com/in/consejoempresarialcolombiano/', '', NULL, NULL, NULL, '+51945204125', '13', 1, 1, '2023-06-03 16:49:08', '2023-06-03 16:49:08'),
(199, 'gricol-s-a-c-2', 'GRICOL S.A.C.', '20545799422', '1685804096.jpg', 'Fabricación, Comercialización de grifería para baños, cocinas. Venta de repuestos y venta institucional.', '', '', '', 'www.gricol.com', 'peru@gricol.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51995468225', '13', 1, 1, '2023-06-03 16:54:56', '2023-06-03 16:54:56'),
(200, 'grucaba-s-a-c-hotel-holiday-inn-miraflores', 'GRUCABA S.A.C. (HOTEL HOLIDAY INN MIRAFLORES)', '20601017157', '1685804234.JPG', 'El hotel, ubicado en la céntrica Av. Ricardo Palma, a pocos metros del Parque Kennedy, corazón del distrito de Miraflores, una zona residencial prospera al sur del centro de Lima conocida por sus exclusivos restaurantes y tiendas, construido con un diseño de vanguardia, lujo y comodidad con contará con 200 habitaciones, espacios para salas de reuniones y centro de negocios, un restaurante bar-cafetería, gimnasio y el último piso, una piscina acompañada de una piscina cubierta. Bar y salón.', 'un buen ambiente para sacar de la rutina a papá', '', '', 'https://www.ihg.com/holidayinn/hotels/us/es/lima/limmi/hoteldetail', 'ferney.garcia@ihg.com', NULL, NULL, NULL, NULL, NULL, NULL, '1688485099.jpg', '', '', '+51932392699', '6', 1, 1, '2023-06-03 16:57:14', '2023-07-04 17:38:19'),
(201, 'leo-andes-s-a-leonisa-2', 'LEO ANDES S.A. (LEONISA)', '20301409151', '1685804381.png', 'Fabricación y comercialización de ropa interior femenina, prendas modeladoras, trajes de baño y ropa interior masculina.', '', '', '', 'www.leonisa.com', 'rperez@leoandes-pe.com', '', '', 'https://www.facebook.com/PeruLeonisa?_rdc=2&_rdr', 'https://www.instagram.com/leonisaperu/', '', '', NULL, NULL, NULL, '+51993513672', '13', 1, 1, '2023-06-03 16:59:41', '2023-06-03 16:59:41'),
(202, 'peru-cargo-line-s-a-c-2', 'PERU CARGO LINE S.A.C.', '20600473531', '1685804490.jpg', 'Empresa de carga y logistica internacional', '', '', '', 'www.liverita.com', 'carolina.hurtado@liverita.com', '', '', '', '', '', '', NULL, NULL, NULL, '+51970383040', '7', 1, 1, '2023-06-03 17:01:30', '2023-06-03 17:01:30'),
(203, 'proyecta-t-ltda-2', 'PROYECTA-T LTDA', '901096692-7', NULL, '', '', '', '', 'www.proyectat.co', 'lrodriguez@proyectat.co', '', '', '', '', '', '', NULL, NULL, NULL, '+573183811658', '13', 1, 0, '2023-06-03 17:02:56', '2023-06-03 17:09:47'),
(204, 'servicios-medicos-de-diagnostico-s-a', 'SERVICIOS MEDICOS DE DIAGNOSTICO S.A.', '20504080197', NULL, 'Servicios de diágnóstico médicos como análisis clínicos, ecografías, tomografías y resonancias; entre otros.', '', '', '', 'www.unilabs.pe', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '10', 1, 1, '2023-06-05 16:29:20', '2023-06-05 16:29:20'),
(205, 'pertel-de-peru-s-a-c-2', 'PERTEL DE PERÚ S.A.C.', '20511687986', NULL, 'Soluciones integrales en protección eléctrica, respaldo energético y calidad de energía. equipos ups monofásicos, trifásicos y servicios.', '', '', '', 'www.pertel.pe', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '5', 1, 1, '2023-06-08 05:07:57', '2023-08-22 19:52:52'),
(206, 'jetsmart-airlines-peru-s-a-c', 'JETSMART AIRLINES PERU S.A.C.', '20607393649', '1688155988.png', 'Aerolínea. Presta el servicio de transporte aéreo de personas.', NULL, '', '', 'https://jetsmart.com/pe/es/', '', NULL, NULL, 'https://www.facebook.com/JetSMARTPeru', 'https://www.instagram.com/jetsmart_peru/', 'https://www.linkedin.com/company/jetsmart-airlines/', NULL, '1688156478.jpg', '', '', '01 311 0005', '11', 1, 1, '2023-06-30 22:13:08', '2023-06-30 22:21:18'),
(207, 'meyan-s-a-sucursal-del-peru', 'MEYAN S.A., SUCURSAL DEL PERU', '20601143021', NULL, 'Empresa Colombiana de ingeniería y construcción que cuenta con más de 20 años de experiencia, dedicada a la promoción, diseño, planeación, construcción, mantenimiento y conservación de obras civiles de ingeniería, y a la producción de agregados pétreos y mezclas asfálticas.', '', '', '', '', '', '', '', '', '', '', '', NULL, 'https://www.youtube.com/watch?v=45HCWTo1qec&list=PLtoKAiULAICVUbD3gwdj6gxPIYf7-Mr65', '45HCWTo1qec', '', '5', 1, 1, '2023-08-21 15:45:49', '2023-08-21 15:45:49'),
(208, 'seur-servicios-europeos-s-a-c', 'SEUR SERVICIOS EUROPEOS S.A.C.', '20604178453', NULL, 'Acompañan proyectos de infraestructura,  desde la necesidad del usuario hasta la entrega de la obra, atendiendo con soluciones en el manejo de fluidos, diseñados a medida para cada proyecto.', '', '', '', '', '', '', '', '', '', '', '', NULL, 'https://www.youtube.com/watch?v=45HCWTo1qec&list=PLtoKAiULAICVUbD3gwdj6gxPIYf7-Mr65', '45HCWTo1qec', '', '5', 1, 1, '2023-08-21 16:00:47', '2023-08-21 16:00:47'),
(209, 'serviefectivo-administracion-de-cartera-s-a-c', 'SERVIEFECTIVO ADMINISTRACION DE CARTERA S.A.C.', '20602378145', NULL, 'Compañía  especializada en administración, conciliación, depuración, cobranza y recaudo de cartera para grandes compañías en Perú y Colombia', '', '', '', '', '', '', '', '', '', '', '', NULL, 'https://www.youtube.com/watch?v=45HCWTo1qec&list=PLtoKAiULAICVUbD3gwdj6gxPIYf7-Mr65', '45HCWTo1qec', '', '5', 1, 1, '2023-08-21 16:05:12', '2023-08-21 16:05:12'),
(210, 'alonso-vasquez', 'alonso vasquez', '10439070116', NULL, NULL, NULL, '', '', 'https://www.itbcp.com/', 'analistaitbco1@gmail.com', 'bbbb', 'https://www.youtube.com/@99minutos27', 'cccc', 'vvvvv', 'aaaaa', 'rrrr', NULL, 'https://www.youtube.com/watch?v=UXxbEd8JxAk', 'UXxbEd8JxAk', '964949269', '5', 1, 0, '2023-08-21 17:39:53', '2023-09-14 17:12:36'),
(211, 'tamoin-peru-s-a-c', 'TAMOIN PERU S.A.C.', '20550144001', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-08-21 17:57:37', '2023-08-21 17:57:37'),
(212, 't-ven-s-a-c', 'T-VEN  S.A.C.', '20520834606', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-08-22 00:23:10', '2023-08-22 00:23:10'),
(213, 'lockton-peru-corredores-de-seguros-s-a-c', 'LOCKTON PERU CORREDORES DE SEGUROS S.A.C.', '20607678490', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 1, '2023-08-22 00:29:51', '2023-08-22 00:29:51'),
(214, 'lockton-peru-corredores-de-seguros-s-a-c-2', 'LOCKTON PERU CORREDORES DE SEGUROS S.A.C.', '20607678490', NULL, 'Corredores de Seguros', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 0, '2023-08-23 23:54:59', '2023-09-14 17:29:48'),
(215, 'inversiones-adm-marketing-s-a-s-arquitectura-de-marca', 'INVERSIONES ADM MARKETING S.A.S. - ARQUITECTURA DE MARCA', '00993509-1', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-08-31 21:44:27', '2023-08-31 21:44:27'),
(216, 'eclass-peru-s-a-c', 'ECLASS PERU S.A.C.', '20523128761', '1694111522.jpg', 'Somos una empresa EdTech con presencia en Chile, Colombia, Paraguay y Perú dedicados a diseñar e implementar programas de formación y capacitación corporativa. Dictamos cursos online (asincrónicos y sincrónico), semipresencial y presencial en diferentes temáticas con certificación académica de alta calidad como la Universidad de los Andes de Colombia o eClass Academy). Diseñamos cursos elearning y creamos contenido de acuerdo a las necesidades específicas de cada organización.', '', '06/01/2023', '09/01/2009', 'https://www.eclass.com/pe/empresas/programas-de-capacitacion/', 'empresasperu@eclass.edu.pe', NULL, 'https://www.youtube.com/channel/UChMdiBM0YHgpB-MvebVybcw/videos', 'https://www.facebook.com/eclasscomunidad?mibextid=2JQ9oc', 'https://instagram.com/eclasscomunidad?igshid=MzRlODBiNWFlZA==', 'https://www.linkedin.com/school/eclass/', 'https://www.tiktok.com/@eclasscomunidad', NULL, '', '', '+51 987 099 984', '10', 1, 1, '2023-09-01 17:57:50', '2023-09-14 22:29:43'),
(217, 'protecol-s-a-c', 'PROTECOL S.A.C.', '20607821896', '1694036880.jpg', 'Empresa operadora de residuos sólidos enfocada en proyectos personalizados de economía circular \r\nCompra de mermas industriales\r\nDestrucción de documentos, productos etc...\r\nCompra de maquinarias en desuso\r\nCompra de mermas industriales\r\nAsesorías derecho ambiental\r\nConsultorías Ambientales\r\nCapacitaciones ambientales, economía circular etc..\r\nCompra de Materiales reciclados', '', '07/01/2023', '04/21/2023', 'www.protecol.pe', 'informes@protecol.pe', NULL, NULL, NULL, NULL, 'https://www.linkedin.com/in/luisa-vargas-b22864265/', NULL, '1694036880.pdf', '', '', '998362459', '13', 1, 1, '2023-09-06 19:25:31', '2023-09-06 23:48:00'),
(218, 'manplag-s-a-c', 'MANPLAG S.A.C.', '20603675381', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-09-14 23:37:33', '2023-09-14 23:37:33'),
(219, 'equivalius', 'EQUIVALIUS', '10437679610', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '11', 1, 1, '2023-09-20 23:15:43', '2023-09-20 23:15:43'),
(220, 'formulacion-y-gestion-de-proyectos', 'FORMULACION Y GESTIÓN DE PROYECTOS', '123456', NULL, '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '5', 1, 1, '2023-09-21 21:56:50', '2023-09-21 21:56:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_solicitud`
--

CREATE TABLE `estado_solicitud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estado_solicitud`
--

INSERT INTO `estado_solicitud` (`id`, `nombre`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'Pendiente', 1, NULL, NULL),
(2, 'Revisado', 1, NULL, NULL),
(3, 'Procesando', 1, NULL, NULL),
(4, 'Finalizado', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial_solicitud`
--

CREATE TABLE `historial_solicitud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reviewed_by` bigint(20) UNSIGNED NOT NULL,
  `solicitud_id` bigint(20) UNSIGNED NOT NULL,
  `estado_solicitud_id` bigint(20) UNSIGNED NOT NULL,
  `observacion` text NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_10_07_012056_create_perfiles_table', 1),
(2, '2013_10_08_124150_create_roles_table', 1),
(3, '2013_10_09_124520_create_tipo_de_cargos_table', 1),
(4, '2014_09_06_015716_create_sectores_table', 1),
(5, '2014_09_07_012620_create_empresas_table', 1),
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_10_07_013310_create_campaigns_table', 1),
(11, '2022_10_07_013426_create_estado_solicitud_table', 1),
(12, '2022_10_07_013556_create_tags_table', 1),
(13, '2022_10_07_013759_create_solicitudes_table', 1),
(14, '2022_10_07_014204_create_historial_solicitud_table', 1),
(15, '2022_10_07_030611_create_usuario_sectores_table', 1),
(16, '2022_10_07_030837_create_campaing_empresas_table', 1),
(17, '2022_10_07_062918_create_usuarios_empresa_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('davidsrojasll@gmail.com', '$2y$10$4/7im61FeYDC5vYTSBxnl.lQ4A2hevPY.56Zd2.OyX1tR7toIctsO', '2023-05-06 17:34:51'),
('daniuxa.suarez2@hotmail.com', '$2y$10$Ws3qaJAvF4NMzSQ977zNXeufO48icYMShl0VVaqpNGi7CEsIrVA.i', '2023-05-09 03:13:18'),
('robert.huamani107@gmail.com', '$2y$10$HNlkFIoCzRmU8izxlALM0OxauAeyATakRnpVz6V1d17L7PagkOMY6', '2023-05-12 10:54:45'),
('robert.huamani108@gmail.com', '$2y$10$QZZx66IT7iM63YHtDsRcPuOEPXM4XD/WbXfRuGcU1w7bPSufJzc7G', '2023-05-12 10:56:11'),
('avasquezchugnas@gmail.com', '$2y$10$YDxRirrO4ZJKJVe2IQDO6ONGPuzdBDjR4pDc/ol826d5jMTECz2oC', '2023-05-12 21:35:05'),
('contacto@cec.com.pe', '$2y$10$OH8JY9Q6nTzPNKS.gP8CX.cOJBw4xiPMb6UoeqEmNMXLRXWoeiPCi', '2023-05-15 23:10:12'),
('admin@cec.com', '$2y$10$RT7k3Sa.uIoO7l3LrFm.U.AFyNYwNKN5zYMJmEO/5Lmh0K5FFNAJO', '2023-07-04 18:15:45'),
('marketing@cec.com.pe', '$2y$10$nzHMQ.cgivXPATdW7xMvdOKhlfMxk9NgphFV2N.2J/XZidZn/Vete', '2023-07-04 18:17:13'),
('carlos.rojas@cticservices.com', '$2y$10$LFfWQ0FJU6zqOF.tDmd7COSbmWMGpIoOlTae8Dx2i5sgU70lnK8Je', '2023-09-29 00:58:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE `perfiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `perfiles`
--

INSERT INTO `perfiles` (`id`, `nombre`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'Cec', 1, NULL, NULL),
(2, 'Empresa', 1, NULL, NULL),
(3, 'Contacto Comercial', 1, NULL, NULL),
(4, 'Contacto Empresa', 1, NULL, NULL),
(5, 'aaaa22', 0, '2022-12-21 18:27:36', '2022-12-21 18:27:43'),
(6, 'perfil10001', 0, '2022-12-21 20:05:27', '2022-12-21 20:05:37'),
(7, 'nuevo perfil', 0, '2023-02-02 19:42:51', '2023-02-02 19:42:54'),
(8, 'nuevo perfil', 0, '2023-02-02 20:30:45', '2023-02-02 20:30:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'Director de Sector', 1, '2022-12-20 20:45:47', '2023-02-14 18:08:40'),
(2, 'Miembro de Sector', 1, '2022-12-20 20:46:03', '2023-02-14 18:08:59'),
(3, 'rol 1', 0, '2022-12-21 18:28:27', '2022-12-21 18:28:30'),
(4, 'rol10001', 0, '2022-12-21 20:06:23', '2022-12-21 20:06:32'),
(5, 'Codirector de Sector', 1, '2023-02-14 18:09:23', '2023-02-14 18:09:23'),
(6, 'Responsable de Medios del Sector', 1, '2023-02-14 18:09:45', '2023-02-14 18:09:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sectores`
--

CREATE TABLE `sectores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sectores`
--

INSERT INTO `sectores` (`id`, `nombre`, `logo`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'Sector X', '1671132935.png', 0, '2022-12-15 22:29:51', '2023-02-14 17:23:31'),
(2, 'sector 1', '1671636479.jpg', 0, '2022-12-21 18:27:59', '2022-12-21 18:28:16'),
(3, 'sector10001111', '1671642359.jpg', 0, '2022-12-21 20:05:59', '2022-12-21 20:06:09'),
(4, 'educación', NULL, 0, '2023-02-02 19:27:30', '2023-02-02 19:27:36'),
(5, 'Infraestructura, Construcción y Energía', '1682716085.png', 1, '2023-02-02 19:27:49', '2023-04-28 23:08:05'),
(6, 'Hotelería, Turismo y Eventos', NULL, 1, '2023-02-02 20:23:39', '2023-02-14 17:23:45'),
(7, 'Tecnología de la información y Comunicaciones', NULL, 1, '2023-02-14 17:22:52', '2023-02-14 17:22:52'),
(8, 'Sostenibilidad, Medio Ambiente y RRSS', NULL, 1, '2023-02-14 17:23:04', '2023-02-14 17:23:04'),
(9, 'Transporte, Distribución y Logística', NULL, 1, '2023-02-14 17:23:12', '2023-02-14 17:23:12'),
(10, 'Gestión Humana y Salud', NULL, 1, '2023-02-14 17:23:17', '2023-02-14 17:23:17'),
(11, 'Servicios y consultoría', NULL, 1, '2023-02-14 17:23:27', '2023-02-14 17:23:27'),
(12, 'Región Sur', NULL, 1, '2023-02-14 17:23:53', '2023-02-14 17:23:53'),
(13, 'Otros', NULL, 1, '2023-04-06 05:07:50', '2023-04-06 05:08:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asunto` varchar(191) NOT NULL,
  `mensaje` text NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `estado_solicitud_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` varchar(191) NOT NULL,
  `observacion` text DEFAULT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `fecha_de_atencion` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `asunto`, `mensaje`, `usuario_id`, `estado_solicitud_id`, `empresa_id`, `observacion`, `flestado`, `created_at`, `fecha_de_atencion`, `updated_at`) VALUES
(30, 'solicitud de factura mes junio', 'Hola buenas tardes.', 5, 4, '2', 'hola se ha procedido a atender tu solicitud', 1, '2023-06-14 00:17:45', NULL, '2023-06-14 00:20:26'),
(31, 'Matriz de Eventos x Afiliados', 'La Gerencia de Servicios al Afiliado, me podrá compartir un Excel donde en las columnas estén los eventos que realiza el CEC y en las filas las empresas Afiliadas... en la celda cruce de cada Fila con Columna, podría haber un 1 en caso alguien de esa empresa haya asistido a ese evento.\r\n\r\nQuedo atento.\r\n\r\nGracias.', 14, 1, '9', NULL, 1, '2023-08-09 02:50:10', NULL, '2023-08-09 02:50:10'),
(32, 'Base de datos', 'Hola Requiero la base datos actualizada del CEC', 15, 1, '14', NULL, 1, '2023-08-09 17:24:54', NULL, '2023-08-09 17:24:54'),
(33, 'Requiero contacto con el director', 'REqueiro una cita con el director del CEC', 15, 1, '14', NULL, 1, '2023-08-18 16:37:49', NULL, '2023-08-18 16:37:49'),
(34, 'Requiero ayuda para pertenecer a la promoción del mes', 'Loremsdcsdcsd sdcsdcsd', 15, 1, '14', NULL, 1, '2023-09-14 16:30:01', NULL, '2023-09-14 16:30:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_cargos`
--

CREATE TABLE `tipo_de_cargos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(191) NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_de_cargos`
--

INSERT INTO `tipo_de_cargos` (`id`, `nombre`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'tipoooo', 0, '2022-12-21 18:28:47', '2022-12-21 18:35:23'),
(2, 'gerencial', 1, '2022-12-21 19:04:02', '2023-02-14 17:53:39'),
(3, 'cargo10002222', 0, '2022-12-21 20:06:46', '2022-12-21 20:07:37'),
(4, 'administrativo y financiero', 1, '2023-02-02 19:43:09', '2023-02-14 17:53:48'),
(5, 'comercial y ventas', 1, '2023-02-02 20:31:17', '2023-02-14 17:54:07'),
(6, 'marketing y comunicaciones', 1, '2023-02-14 17:39:14', '2023-02-14 17:54:23'),
(7, 'director país', 0, '2023-02-14 17:39:42', '2023-02-14 17:54:26'),
(8, 'representante legal', 0, '2023-02-14 17:40:40', '2023-02-14 17:54:30'),
(9, 'jefe desarrollo de negocios', 0, '2023-02-14 17:41:28', '2023-02-14 17:54:33'),
(10, 'adiministrador', 0, '2023-02-14 17:41:58', '2023-02-14 17:54:36'),
(11, 'Gestion Humana', 1, '2023-02-14 17:57:03', '2023-02-14 17:57:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `apellido_paterno` varchar(191) DEFAULT NULL,
  `apellido_materno` varchar(191) DEFAULT NULL,
  `cargo` varchar(191) DEFAULT NULL,
  `genero` int(11) DEFAULT NULL,
  `celular_contacto` varchar(191) DEFAULT NULL,
  `numero_fijo` varchar(191) DEFAULT NULL,
  `fecha_nac` varchar(191) DEFAULT NULL,
  `foto` varchar(191) DEFAULT NULL,
  `lugar_residencia` varchar(191) DEFAULT NULL,
  `tipo_de_cargo_id` int(11) DEFAULT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `perfil_id` bigint(20) UNSIGNED NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `apellido_paterno`, `apellido_materno`, `cargo`, `genero`, `celular_contacto`, `numero_fijo`, `fecha_nac`, `foto`, `lugar_residencia`, `tipo_de_cargo_id`, `empresa_id`, `email_verified_at`, `password`, `remember_token`, `perfil_id`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@cec.com', 'Rojas', 'Espinoza', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$mqpQ5CwRknDj7I4hf379KuaCzB2bz9ZbaALeO0Iz7.yCEhiQ3.2iy', NULL, 1, 1, NULL, NULL),
(2, 'David', 'robert.huamani108@gmail.com', 'Rojas', 'Espinoza', NULL, 1, '', '', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$weW8BFM3f50diB7Qgz1LD.86zyhpY53KQqgdV0AcdtIw4o1C5oqji', 'wjXKsZ2XJUD1dgGzLpqWOE8Y7Gj77IGL0oB19GFBfSYTdRrFRk2GDbU8uqTS', 1, 1, NULL, '2023-05-08 17:32:40'),
(3, '', 'matthew@gmail.com', '', '', '', 1, '', '', '', NULL, '', 1, 2, NULL, '$2y$10$BTIlD3jkVvjnncL6FzyRl.B79Th1EnL.j0ewmFYCQdp431h3N6xuu', NULL, 2, 0, '2022-12-21 18:35:07', '2022-12-21 18:59:11'),
(4, '', '', '', '', NULL, 1, '', '', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$G.m0jrcJqE8GBclFd1NZgeMXREXtW1ZAKbASJ1l/EIye8iO9GmYBK', NULL, 1, 0, '2022-12-21 18:50:49', '2022-12-21 19:03:46'),
(5, 'Ana María', 'administracion@arasesores.pl', 'Ccoicca', 'Damiano', 'asistente administrativo', 2, '+51989321340', '+51989321340', '0000000', '2023061316101636920529574.jpg', 'Lima Peru', 2, 2, NULL, '$2y$10$H1.hLXo/Ahxe4aiMGBlF1.1i8OAZkxEzDjkGMeawppFajzFE5dNwK', '5t1vz2z818iqQjVrfZVfknsuhEB5gF3mIGWMKaxM7CNEruyQ4dqfsWmVcOWS', 2, 1, '2022-12-21 19:05:04', '2023-09-14 19:58:41'),
(6, 'Davicho', 'cectestmail123@gmail.com', 'Rojas', 'Llaulli', NULL, 1, '', '', NULL, NULL, NULL, 2, 2, NULL, '$2y$10$WNCtpwPRvjcPZTHrru7Ge.XkCINtvVWZkyDycKr1C5AA14EuxNiVG', 'w91WPKqRUC7k1SEj7hPdM8jvJMwgHNPcd3jBViRngNXYaSzRvc1fYRykzxb6', 2, 0, '2022-12-21 19:05:25', '2023-02-14 18:34:13'),
(7, 'Camila', 'camila.chacon@cec.com.pe', 'Duque', NULL, 'desarrolladora', 2, '', '', NULL, NULL, NULL, 2, 4, NULL, '$2y$10$OfQjP5R.vDCCydAHnxTqaO0zH.wra8pM7JqmpPDOQhmNFZGClWLkm', NULL, 2, 0, '2022-12-21 20:12:03', '2023-02-14 18:34:18'),
(8, 'david', 'david@chocolate.com', 'rojas', 'llaullipoma', 'jefe', 1, '999888555', '455 6767', '04/09/1989', '202302021151usuario.jpg', 'Lima', 4, 7, NULL, '$2y$10$XxHM9F5X.VEz2YliI4pqP.BnZqb1VAt9NdOc.M0hyfPbc3qvMS3xy', NULL, 2, 0, '2023-02-02 19:51:06', '2023-02-14 18:34:21'),
(9, 'Erika', 'erikam.champa@hotelesestelar.com', 'Champa', 'Oropeza', 'Asistente de gerencia', 2, '987834025', '(01) 6307777', '', NULL, '', 5, 8, NULL, '$2y$10$XLSIbbuKIqcLPNNZqRcUAeLX6NyO4X/1SMWKMspf38Tz5z6bcjAMm', NULL, 4, 0, '2023-02-02 20:38:17', '2023-05-05 07:17:51'),
(10, 'Adriana', 'areyes@arasesores.pl', 'Reyes', 'Ramirez', 'gerente general', 2, '+51995357912', '+51995357912', NULL, '2023061316081516609588283.jpg', NULL, 2, 2, NULL, '$2y$10$pFSO08Vn6EW9bWm03sCHy.0k5JYR3WtDrF7daXzAHczpWbEDTvMr6', NULL, 4, 1, '2023-02-14 18:13:52', '2023-09-14 20:00:12'),
(11, 'Tamara', 'secretaria@aercaribe-peru.com', 'Rosado', '', 'Asistente Administrativo', 2, '', '(01) 4840800', '01/12/1980', NULL, '', 4, 10, NULL, '$2y$10$aI0G.TTTCIrd89tHKA2ga.p8WxtW3SSk6NHFls.UOZ2hrGx1mDPZm', NULL, 2, 1, '2023-02-14 18:35:01', '2023-02-14 18:35:01'),
(12, 'Martha', 'tesoreria@aercaribe-peru.com', 'Rivera', '', 'Jefe de tesorería', 2, '+51983285060', '', '12/08/1976', NULL, '', NULL, 10, NULL, '$2y$10$7XxBc.tmzuEEZAPr0fLBNOkw5Vpej1WjdG2WLXvYlPkURZLsL/YTG', NULL, 4, 1, '2023-02-14 18:48:39', '2023-02-14 18:48:39'),
(13, 'Hernán', 'gcomercial@aercaribe-peru.com', 'Vásquez', 'Granda', 'Gerente Comercial', 1, '+51934487563', '', '12/09/1976', NULL, '', NULL, 10, NULL, '$2a$10$e8iRR3D39an3yoYBJl.8YOagTtT2pJUFitT02K55dvGmYYIlYtd/G', NULL, 3, 1, '2023-02-14 18:49:51', '2023-02-14 18:49:51'),
(14, 'Juan Carlos', 'juancarlos.ramos@synapsis-rs.com', 'Ramos', 'Triana', 'Country Manager', 1, '+51993306477', '', '03/24/1973', '202302141107Perfil Synapsis.jpg', 'Lima', 2, 9, NULL, '$2y$10$8D.KgFJSAkuaZqqFPb4O4ueSRgEm3sD8vWc8AclzCOKjzsN.LPfMi', '7j4bVaWGtqIdVqqXxv5F4TFGzTMc83hozF9XFER0TbDRoY27sMIA8MCSIUQ9', 2, 1, '2023-02-14 19:02:46', '2023-08-09 02:29:12'),
(15, 'Zu', 'info@zucamargo.com', 'Camargo', NULL, 'gerente general', 2, '+51980563580', '', NULL, '2023040920031668873581728.jpg', 'Lima', 2, 14, NULL, '$2y$10$giM2Uks3lAjhN86HRUteJ.mtqnyEZzxS1jKIT0/XVmXVnElVLtIWG', NULL, 2, 1, '2023-04-06 02:39:58', '2023-08-18 15:50:52'),
(20, 'Daniuxa', 'daniuxa.suarez2@hotmail.com', 'Suarez', 'Rojas', 'coordinador de marketing y comunicaciones', 2, '966193153', '', '2/07/1988', NULL, 'LIMA', 6, 49, NULL, '$2y$10$qm2OKderkA39rA6fn8vVV..YzbFk6Z10bEBHWZdM6uhuLzWqmfehW', 'obVJCE1eJCbkQKkSW716Go3ZtKKNubE4ziY6CRDeQK54dSTQLhqNsA7UCbRu', 3, 0, '2023-05-05 00:34:21', '2023-05-08 21:32:40'),
(21, 'Hebert', 'hcampos@hcbrokers.com', 'Campos', '', 'Representante legal', 1, '+51992729554', '', '', NULL, 'Lima', 2, 51, NULL, '$2y$10$E3BMiYPy8yc3OOnRpIF2n.bovyx9oxHjiRQv6in/3XJLg7vUpLNLO', NULL, 2, 1, '2023-05-05 07:14:13', '2023-05-05 07:14:13'),
(22, 'Carolyn Alexandra', 'carolyn.franco@carvajal.com', 'Franco', 'Gutierrez', 'Directora y Jefe de Gestión Humana', 2, '965886844', '', '', NULL, 'Lima', 11, 52, NULL, '$2y$10$QB./bWFXPCNeeoNjX8LpCO0aBJ7bn6ROcmWKXQ52ju6M4xHjBX3Se', NULL, 2, 1, '2023-05-05 07:16:34', '2023-05-05 07:16:34'),
(23, 'alonso', 'avasquezchugnas@gmail.com', 'vasquez', 'chugnas', NULL, 1, '', '964949269', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$zfUpxq7OwJWdjBCk/g1juO7p6jIgDEC/E0yjtD2Q9Mt4q5RIHTPYK', '56zR2PMlm6YViuejaw6DYVZUXItt4YZoxcvbxAYTcMYC8AAQNtMHGfyN7ZtW', 1, 1, '2023-05-06 17:18:10', '2023-05-08 19:14:43'),
(42, '', 'prueba123@gmail.com', '', '', '', 1, '', '', '', NULL, '', 2, 2, NULL, '$2y$10$DEUyhzGZyGmZC6.5ra7oLu6ruvjDNlKWfBwr2Lk8aXqkLgj3swBCa', NULL, 2, 0, '2023-05-08 15:23:55', '2023-06-05 16:33:13'),
(45, 'Prueba alonso', 'analistaitbcp1@gmail.com', 'vasqyez', 'perez', '', 1, '', '', '', NULL, '', 2, 2, NULL, '$2y$10$lKQa4awWy2mmt9IeHUhSU.h6ejpef2f1GKYzN90gKFv74bajpDDJy', NULL, 2, 0, '2023-05-08 17:04:11', '2023-06-05 16:34:55'),
(46, 'Fernando', 'fernando.delosrios@99minutos.com', 'De los Ríos', '', 'gerente país', 1, '', '+51956276527', '', NULL, '', 2, 15, NULL, '$2y$10$EbfLJYDvvRjxDZNjCCGIWuhhBgRrArh17cS08MKtlEjPqisUEmFaa', NULL, 2, 1, '2023-05-08 21:24:29', '2023-05-08 21:24:29'),
(47, 'PATRICIA DANIUXA', 'admins@cec.com.co', 'SUAREZ', NULL, NULL, 1, '', '', NULL, NULL, NULL, 2, 2, NULL, '$2y$10$iQab7OA4l7SOYKTNR9JnLONWdNefR86uljlY7Y4dyksfezT3g/51q', NULL, 2, 0, '2023-05-15 23:09:41', '2023-06-13 23:10:44'),
(48, 'Diego', 'diegoduarte@aciproyectos.com', 'duarte', '', 'Director comercial y mercadeo', 2, '+51974943818', '', '', NULL, '', 2, 18, NULL, '$2y$10$XiBDin7Nn2t/yupicAy/R.qF4IQCUEs7FcNVo8Xd7uLRkrJ484ReW', NULL, 2, 1, '2023-06-05 16:38:32', '2023-06-05 16:38:32'),
(49, 'Carlos', 'carloscardenas@aciproyectos.com', 'Cardenas', 'Pinzon', 'Representante legal', 1, '+51947465880', '', '', NULL, '', 4, 18, NULL, '$2y$10$M9Wr2C/Gv0kUK1dVCirBMOkWPpv53MMlF0IcBAgyYkfAgDTjGKxXO', NULL, 2, 1, '2023-06-05 16:40:29', '2023-06-05 16:40:29'),
(50, 'Vilma', 'vilmaramos@aciproyectos.com', 'Ramos', NULL, 'Gerente administración y finanzas', 2, '+51980693873', '', NULL, NULL, NULL, 2, 18, NULL, '$2y$10$.nGVmlQMUHqrYWgWGbJIxeTStFEUuepBPeTQJspLur2bObRt2pWk2', NULL, 4, 1, '2023-06-05 16:51:42', '2023-06-10 20:42:00'),
(51, 'Manuel Ademar', 'mceli@a-coach.pe', 'Celi', 'Vidal', 'Gerente general', 1, '+51993534199', '', '', NULL, '', 2, 2, NULL, '$2y$10$tUNrUDaJjSTPkMNA2wtQKOkyKyoFhcu1UVjHv47o5ly8Ash38sHvS', NULL, 2, 0, '2023-06-05 16:53:00', '2023-06-10 20:52:02'),
(52, 'Gladys', 'gladys.pineda@swissotel.com', 'Pineda', '', 'Contralora Regional', 2, '', '', '', NULL, '', 4, 128, NULL, '$2y$10$F6UycvxPYMBdUxBE3CvA7e4oO/cBAzG/qM66ngVfTtGm2NNV2oSs.', NULL, 4, 1, '2023-06-05 16:58:58', '2023-06-05 16:58:58'),
(53, 'Frank', 'carla.gamboni@swisslim.com.pe', 'Spielvogel', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$JqOTAwNGHf1RS0zQCEB91e/EvBqLLNgySUivhv8Ix2N91pbuLBUbO', NULL, 4, 1, '2023-06-05 17:01:57', '2023-06-05 17:01:57'),
(54, 'Willy', 'willy.angulo@swisslim.com.pe', 'Angulo', '', 'Director de relaciones públicas', 1, '', '+51997959990', '', NULL, '', 4, 128, NULL, '$2y$10$qSle0sTMPwD.kTDaqUejpOh4H2RHUMuUQnigL/V/onKQ1hoGPipwq', NULL, 2, 1, '2023-06-05 17:04:51', '2023-06-05 17:04:51'),
(55, 'Sabrina', 'sabrina.diaz@swisslim.com.pe', 'Diaz', '', 'Ejecutiva de ventas', 2, '+51998308041', '', '', NULL, '', 5, 128, NULL, '$2y$10$EnKVDk.SuusDS4lZl4AnZOHIU6tXkPNJ404xeK3gKRG.1CvOY0O/W', NULL, 4, 1, '2023-06-05 17:07:47', '2023-06-05 17:07:47'),
(56, 'Dalia', 'nuevolocalperu@gmail.com', 'Abad', NULL, 'Gerente', 2, '+51961544638', '', NULL, NULL, NULL, 2, 20, NULL, '$2y$10$zdJLcoIpM6FdY8mjNxeQw.x.bU64Js3fQPEPfsWLrt8WbVf3XR7V6', NULL, 2, 1, '2023-06-05 17:08:32', '2023-06-05 17:09:13'),
(57, 'Andrés', 'andres.carhuancota@swisslim.com.pe', 'Carhuancota', '', 'Asistente contable', 1, '', '', '', NULL, '', 4, 128, NULL, '$2y$10$FcO3S/VXvKXIOji0yTEUxuQxGiifBe.x03KnV9wYw.Hk/kX881h/S', NULL, 4, 1, '2023-06-05 17:09:24', '2023-06-05 17:09:24'),
(58, 'Sasha', 'sasha.garcia-zapatero@swissotel.com', 'García', 'Zapatero', 'Gerente de Hotel', 2, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$EKj1AdgThgDhgkqt3a3w/ugoPJuwaOu7I6D1gmc49mIL0IkxfhiT.', NULL, 4, 1, '2023-06-05 17:12:55', '2023-06-05 17:12:55'),
(59, 'Maria', 'maria.villacis@swissotel.com', 'Villacis', '', 'Directora Regional de Revenue', 1, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$zmOYk5RIQ0zBfNHfl/OnI.2RR/zdYIalazb6.7X/tjsWh7weIdEB6', NULL, 4, 1, '2023-06-05 17:14:57', '2023-06-05 17:14:57'),
(60, 'Nelly', 'nelly.castro@swisslim.com.pe', 'Castro', NULL, 'Gerente Regional de Compras', 2, '', '', NULL, NULL, NULL, 2, 128, NULL, '$2y$10$yo5.TaF7L7afiNaX9BHzLuDA5bvgKuaMlGBg5I2ZBloe7csBFmG8G', NULL, 4, 1, '2023-06-05 17:15:48', '2023-06-05 17:16:36'),
(61, 'Alejandra', 'alejandra.trujillo@swissotel.com', 'Trujillo', '', 'Gerente de Grupos Corporativos', 1, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$3SdLBqjM/rtWsr9QvVdZDOIPWyRMBXvpM4UhkxS3npb91JtyGrk0m', NULL, 4, 1, '2023-06-05 17:18:21', '2023-06-05 17:18:21'),
(62, 'Mariela', 'mariela.vasquez@swissotel.com', 'Vásquez', '', 'Gerente de Ventas Corporativas', 2, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$ez8GWTBr67FPf3gekbreI.En1MW/3ocaKzK4FC96RgelShNXf8PsO', NULL, 4, 1, '2023-06-05 17:20:21', '2023-06-05 17:20:21'),
(63, 'Paola', 'paola.roman@swisslim.com.pe', 'Roman', '', 'Gerente de Alimentos y Bebidas', 2, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$Xjeq2nWPfKKvi94JrNf29OMm.SpMK6hSPklPzntWX9PmPdXg0QNqS', NULL, 2, 1, '2023-06-05 17:22:31', '2023-06-05 17:22:31'),
(64, 'Erika', 'ericka.alavena@swissotel.com', 'Alavena', '', 'Gerente de convenciones y eventos', 2, '', '', '', NULL, '', 2, 128, NULL, '$2y$10$XaEPbEUTPP2G.GopGALpBOwzB3NoNMCmq3LVoKbA7RoEFZzhXk4Oe', NULL, 4, 1, '2023-06-05 17:24:33', '2023-06-05 17:24:33'),
(65, 'Maximo', 'maximol.siu@hotelesestelar.com', '', 'Siu', 'Gerente de eventos', 1, '+51956251130', '', '', NULL, '', 2, 129, NULL, '$2y$10$Iu/kUozN9UxyjtrqY2x.N.oCX5UFZ6ZGBnT4cAFaQQm0B2t3mYT/6', NULL, 2, 1, '2023-06-05 17:26:46', '2023-06-05 17:26:46'),
(66, 'Lizet', 'lizet.huaman@hotelesestelar.com', 'Huaman', 'Zapata', 'Jefe corporativo del canal empresarial', 2, '+51987807711', '', '', NULL, '', 2, 129, NULL, '$2y$10$4qtZdjVpf7me/TYn4rwL8.PqLUiOZzfXe8NFsK3vVVWcYN8yoeVr6', NULL, 4, 1, '2023-06-05 17:29:29', '2023-06-05 17:29:29'),
(67, 'José', 'joseh.chuna@hotelesestelar.com', 'Chuna', NULL, 'Coordinador corporativo de compras', 1, '+51962383382', '', NULL, NULL, NULL, 2, 129, NULL, '$2y$10$TaOYvGfzZUH/ITImB3loBulqzbLlgMjvhzNCZjbisbZMpyPyjMoGm', NULL, 4, 1, '2023-06-05 17:31:39', '2023-06-05 17:32:08'),
(68, 'Cecilia', 'cecilia.minano@itbcp.com ', 'Miñano', 'Quispe', 'Asistente de gerencia', 2, '', '+51924900259', NULL, '2023060510321621106298973.jpg', 'Lima', 2, 147, NULL, '$2y$10$XUrTuEOkRxQ.KrKtQWu8zO56AOUJ7Ipr89erzJLCQBBSL6HmMDQD6', NULL, 2, 1, '2023-06-05 17:32:07', '2023-09-14 16:51:29'),
(69, 'Johan', 'johanc.villegas@hotelesestelar.com', 'Camilo', 'Villegas', 'Dirección de mercadeo y ventas perú', 1, '+51955593313', '', NULL, NULL, NULL, 2, 129, NULL, '$2y$10$5ZddN5f2NDE5rzSWpCK/peEYc7YTwioLogDU39wbGtp088qjD217e', NULL, 4, 1, '2023-06-05 17:33:25', '2023-07-05 01:08:27'),
(70, 'Jennifer', 'jenniferc.mere@hotelesestelar.com', 'Mere', 'Guerrero', 'Gerente de ventas', 2, '+51962383566', '', '', NULL, '', 2, 129, NULL, '$2y$10$1fL/rVP0hkvFsIAeDa.x4eVqfHGLAi5ZFcic0kfEMfI5pkxkRl.2m', NULL, 4, 1, '2023-06-05 17:35:00', '2023-06-05 17:35:00'),
(71, 'Hugo', 'hugoh.avila@hotelesestelar.com', 'Avila', 'García', 'Gerente de Operaciones', 1, '+51958023016', '', NULL, NULL, NULL, 2, 129, NULL, '$2y$10$PYQFUmP/tC.exFqVPcBke.Sfbh2gEY8Yly8MYMPfGEL/8vBNyQkby', NULL, 4, 1, '2023-06-05 17:51:01', '2023-06-05 17:52:46'),
(72, 'Diana', 'dianah.salas@hotelesestelar.com', 'Salas', '', 'Gerente de administración y finanzas', 2, '', '', '', NULL, '', 2, 129, NULL, '$2y$10$0Kir3mc9.TlgOmvTOhvQxOgCqmgc11ButW34MeMQ5OYvbuuhBKAhy', NULL, 4, 1, '2023-06-05 17:58:39', '2023-06-05 17:58:39'),
(73, 'Carlos', 'carlos.monsef@hotelesestelar.com', 'Monsef', '', 'Gerente país', 1, '+51966336348', '', '', NULL, '', 2, 129, NULL, '$2y$10$Z0hmaKakuYaM9XoADtd3IO8bQ7ZPLkyL0PjurGPG2uLV9X9w2i1uS', NULL, 2, 1, '2023-06-05 18:02:05', '2023-06-05 18:02:05'),
(74, 'Damaris', 'damariss.mamani@hotelesestelar.com', 'Mamani', '', 'Asistente de administracion y finanzas', 2, '', '', '', NULL, '', 4, 129, NULL, '$2y$10$cVtLBsdJ3Z4/oh5VxeytIO2CE68.RfcGwd3Q0hdc8G0ofyabRVqQC', NULL, 4, 1, '2023-06-05 18:03:02', '2023-06-05 18:03:02'),
(75, 'Jorge', 'jorged.thompson@hotelesestelar.com', 'Thompson', 'Echeverria', 'Gerente de gestion humana', 1, '', '', '', NULL, '', 2, 129, NULL, '$2y$10$opldBVYg8.z9upaqbgYN7Oz/ANB3m8DS0iReGn1cX8d6zTMxwbpY2', NULL, 4, 1, '2023-06-05 18:04:39', '2023-06-05 18:04:39'),
(76, 'Wendy', 'wendyj.patino@hotelesestelar.com', 'Patiño', '', 'Coordinadora de eventos', 2, '', '', '', NULL, '', 4, 129, NULL, '$2y$10$B05/r73nis//3h.ZY6Ic9uQV8BhOwtM7jvCfuBWGgl8oun/097WR6', NULL, 4, 1, '2023-06-05 18:18:23', '2023-06-05 18:18:23'),
(77, 'Ricardo', 'mhpc@hpadvisory.net', 'Huertas del Pino', 'Cavero', 'Gerente general adjunto', 1, '+51982469600', '', NULL, NULL, NULL, 4, 130, NULL, '$2y$10$1NtRCcXqDGEhPSQAx/hN2OfASdaUCC6OsuBGH0H73qehm48vtAjb2', NULL, 2, 1, '2023-06-05 18:22:31', '2023-06-05 18:23:45'),
(78, 'Mariana', 'mjl@hpadvisory.net', 'Justo', 'Linares', 'Asistente legal', 2, '+51915998101', '', '', NULL, '', 2, 130, NULL, '$2y$10$vvzwUjPLv8PNCl1tM3L0neTO9dEX/YXrCGAUph.JGGSQmIsm3l2rW', NULL, 4, 1, '2023-06-05 18:25:19', '2023-06-05 18:25:19'),
(79, 'Diego', 'dhpc@hpadvisory.net', 'Huertas del Pino', '', 'Gerente general', 1, '+51989236955', '', '', NULL, '', 2, 130, NULL, '$2y$10$y7aUjvd73MHRM4s5uuTfF.C61lmvTywmHJa6Gz/NfF4LIuGPtvOFy', NULL, 2, 1, '2023-06-05 18:27:47', '2023-06-05 18:27:47'),
(80, 'Olga', 'omoya@hrp.com.pe', 'Moya', 'Flores', 'Asistente administrativo', 2, '+51981076465', '', '', NULL, '', 4, 131, NULL, '$2y$10$rwHnlitYIUMaoEpuYkwGMu2Br5KZnS48M96S6EhelRUPAsFcX3upi', NULL, 2, 1, '2023-06-05 18:29:20', '2023-06-05 18:29:20'),
(81, 'Judith', 'jlimaco@hrp.com.pe', 'Límaco', '', 'Asistente de recursos humanos', 2, '', '', '', NULL, '', 4, 131, NULL, '$2y$10$/oNgVmb74PHH3k1PAZLinehtsXW0G1TtEG1kAZUManIYofYCe/LJW', NULL, 4, 1, '2023-06-05 18:45:24', '2023-06-05 18:45:24'),
(82, 'José', 'josetafur@hrp.com.pe', 'Gabriel', 'Tafur', 'Gerente general', 1, '+51996329900', '', '', NULL, '', 2, 131, NULL, '$2y$10$gI3kOUjNtN8.d6cYBsnhJusMyQgEdNA9RACIqIBar/JSVVssSfAAG', NULL, 2, 1, '2023-06-05 18:51:41', '2023-06-05 18:51:41'),
(83, 'Carmen', 'carmen.caceres@hrp.com.pe', 'Cáceres', 'Tupayachi', 'Contador', 2, '+51995274990', '', '', NULL, '', 4, 131, NULL, '$2y$10$5uu7k9zIzhU9vHtcmVJcJuIeOHg0q7flI94SJa5sM39w23/4DqNBO', NULL, 4, 1, '2023-06-05 18:52:46', '2023-06-05 18:52:46'),
(84, 'Christian', 'ctocre@skylineperu.com', 'Tocre', NULL, 'Gerente general', 1, '+51942304412', '', NULL, NULL, NULL, 2, 21, NULL, '$2y$10$R9pNaF/sxiJj9yCYh7omFehQUOAbo86f7MfOh.NOyS/l6YdkpWC4i', NULL, 2, 1, '2023-06-05 19:29:18', '2023-06-05 19:29:46'),
(85, 'Fernando', 'fbarron@hydrex.pe', 'Barron', NULL, 'Gerente General', 1, '+51943156263', '', NULL, NULL, NULL, 2, 132, NULL, '$2y$10$x.AYjetF2M3TCmF2A1ctOutGqjpBgYITroGEfCf2MF.bzbCbIb786', NULL, 2, 1, '2023-06-05 19:37:42', '2023-06-05 19:39:29'),
(86, 'Miguel', 'mhonores@hydrex.pe', 'Honores', '', 'Director General', 1, '+51998108849', '', '', NULL, '', 2, 132, NULL, '$2y$10$Gb2jkdTvWFV.doM6IDi3Ouverc2iT/AzAGQo2LfB6egeOXbq.r7Ae', NULL, 2, 1, '2023-06-05 19:39:18', '2023-06-05 19:39:18'),
(87, 'Victor', 'vchaparro@hydrexaperu.com.pe', 'Manuel', 'Chaparro', 'Gerente de operaciones', 1, '+51942966283', '', '', NULL, '', 2, 133, NULL, '$2y$10$tZx6mddxzhx50stUBlP/0ubI9XR7B2X/BdWdIXKUPSp7DeO06W0xa', NULL, 2, 1, '2023-06-05 19:45:15', '2023-06-05 19:45:15'),
(88, 'Julio', 'acastroroca@gmail.com', 'Castro', 'Roca', 'Gerente general', 1, '+51995038307', '', '', NULL, '', 2, 133, NULL, '$2y$10$/p348xZtFWrMqPyz8Cy16eDIRQ7Cmp96WNvbtKt2uPZAeZDMjeBZO', NULL, 2, 1, '2023-06-05 19:47:32', '2023-06-05 19:47:32'),
(89, 'Sandra', 'srisco@la.icontec.org', 'Risco', 'Catter', 'Ejecutivo comercial', 2, '', '', '', NULL, '', 5, 134, NULL, '$2y$10$tETUtQCD.LgZTLL/NhIHPO/PpP7ojTdRiNuuX3eN.KXZjRoHipPg6', NULL, 4, 1, '2023-06-05 19:50:28', '2023-06-05 19:50:28'),
(90, 'Febe', 'febe@skylineperu.com', 'Epifania', '', 'Jefa de Proyectos', 2, '+51997500659', '', '', NULL, '', 2, 21, NULL, '$2y$10$xeRoA/aYPL.IGkcInxWGP.UwnKzSQ2ZruO3hVsyKiwczzoflYn7N2', NULL, 2, 1, '2023-06-05 19:58:36', '2023-06-05 19:58:36'),
(91, 'Dayanna', 'asistadm@aercaribe-peru.com', 'Jaime', NULL, 'Asistente tesorería', 2, '', '', NULL, NULL, NULL, 2, 22, NULL, '$2y$10$rlh7VHiqqYjT67WsXq.j3uLo4eWN.gN2A6aF7D1OkJOz5qY0Y72pu', NULL, 4, 1, '2023-06-05 20:01:07', '2023-06-10 20:47:04'),
(92, 'David', 'gerenciageneralperu@aercaribe-peru.com', 'Cajahuanca', 'Murgia', 'Gerente general', 1, '+51940482927', '', '', NULL, '', 2, 22, NULL, '$2y$10$KsaQs0WG0/nWCaWhiMLR/.0aODSvhTA7eoiaw6lwLI0Y1kx.1ZzK6', NULL, 2, 1, '2023-06-05 20:05:40', '2023-06-05 20:05:40'),
(93, 'Jorge Luis', 'presidencia@aercaribe.com', 'Almeira', '', 'CEO', 1, '', '', '', NULL, '', 2, 22, NULL, '$2y$10$xJUQJ3Or66ztvZXHQw5JzeSi3saRg7WwIy9Uu3I63S2HHKCZHiFYW', NULL, 4, 1, '2023-06-05 20:15:58', '2023-06-05 20:15:58'),
(94, 'Ricardo', 'rjimenez@icontec.org', 'Jiménez', 'Valbuena', 'Gerente comercial', 1, '+573102164647', '', '', NULL, '', 2, 134, NULL, '$2y$10$2lHrONvpu49vEN3/toCuLum5ZN9sSrQTqfU3jmUZt.BlZWrHEAExW', NULL, 2, 1, '2023-06-05 20:53:16', '2023-06-05 20:53:16'),
(95, 'Maria', 'asigerenciaper@la.icontec.org', 'Carrillo', 'Mendoza', 'Asistente de gerencia', 2, '+51976059801', '', '', NULL, '', 4, 134, NULL, '$2y$10$Ku2lBMzFXuDSlBZsF2VqKe93C9VR6K7k/K/Jbmiicawodkz.G.Xmy', NULL, 4, 1, '2023-06-05 20:54:53', '2023-06-05 20:54:53'),
(96, 'Juan Pablo', 'jpcalderon@la.icontec.org', 'Calderon', 'Remolina', 'Líder  inspección', 1, '+51985673984', '', '', NULL, '', 4, 134, NULL, '$2y$10$H5kh8UdlLheXDgC60BKjt.HHFjJj7pVAOORghKGtvVdlzxWOSsW7i', NULL, 4, 1, '2023-06-05 21:21:32', '2023-06-05 21:21:32'),
(97, 'Fernando', 'ffsalas@la.icontec.org', 'Salas', '', 'Gerente general Perú', 1, '+51985675168', '', '', NULL, '', 2, 134, NULL, '$2y$10$4cKXCRNAP7Nz5mR1SmFGWuNTitdq7nnsVZMa5w4pZDhMSr2Dg/iLS', NULL, 2, 1, '2023-06-05 21:25:02', '2023-06-05 21:25:02'),
(98, 'Mayra', 'dircapacitacion@aes.org.co', 'Ortiz', '', 'Director de capacitaciones', 2, '+573146202286', '', '', NULL, '', 2, 23, NULL, '$2y$10$TobP9Hewx12T.2f/fiZ4ROsi78GS8G1nkBm9MtnJeh39KiBKiGdjK', NULL, 4, 1, '2023-06-05 21:25:57', '2023-06-05 21:25:57'),
(99, 'Eveling', 'enunez@la.icontec.org', 'Nuñez', '', 'Contador', 2, '', '', '', NULL, '', 4, 134, NULL, '$2y$10$7euLupjd044bFOem/dcHuOHzx8Lwl5FQXeekt42.fhu4ZyGF95U/a', NULL, 4, 1, '2023-06-05 21:28:42', '2023-06-05 21:28:42'),
(100, 'Raul', 'rduarte@idtperu.com', 'Duarte', 'Urrichi', 'Gerente general', 1, '+51987968662', '', '', NULL, '', 2, 135, NULL, '$2y$10$BSEgRIS1uzrsykEpoltEUeaN.rJEAnqjHscVjAfPiZ5KGDVsatu9K', NULL, 2, 1, '2023-06-05 21:31:30', '2023-06-05 21:31:30'),
(101, 'Graciela', 'gmeza@metro-op.com', 'Meza', '', 'Gerente de cuentas', 1, '+51915155580', '', '', NULL, '', 2, 136, NULL, '$2y$10$/POiBxygZ.25q/Vk9KE3Je1/PX7MgXELRnQC9x1tLy2aN3oZyfeTK', NULL, 2, 1, '2023-06-05 21:43:22', '2023-06-05 21:43:22'),
(102, 'Kateryne', 'dirtecnica@aes.org.co', 'Monzón', 'Aguirre', 'Director técnico', 2, '', '', '', NULL, '', 4, 23, NULL, '$2y$10$ewUySr3JwVo/K..mp5QwLOYRAwPW2IBpmI9YqIwEkWgUaOWiL3Ezi', NULL, 4, 1, '2023-06-05 21:48:13', '2023-06-05 21:48:13'),
(103, 'César', 'cdiaz@metro-op.com', 'Diaz', '', 'Gerente general | Hapton by Hilton Arequipa', 1, '+51993469506', '', '', NULL, '', 2, 136, NULL, '$2y$10$DKX5HGkwoMBjPF.kyMUTAux8TUZSbyXPLHHofTV3QaQy7WYtUKrr6', NULL, 2, 1, '2023-06-05 21:49:16', '2023-06-05 21:49:16'),
(104, 'Harold', 'diracademico@aes.org.co', 'Antonio', 'Angulo', 'Director academico', 1, '', '', '', NULL, '', 4, 23, NULL, '$2y$10$CqIUPxoCozA9BQdJoV4YPutLkb9sUKF.hENgaw1KZVWeQGpSnLGu2', NULL, 4, 1, '2023-06-05 21:57:08', '2023-06-05 21:57:08'),
(105, 'Carola', 'churtado@metro-op.com', 'Hurtado', '', 'Gerente de ventas', 2, '+51993365999', '', '', NULL, '', 2, 136, NULL, '$2y$10$XVutp2UiTV3hueh4i0j43OS6puwed8nL6ad8QwvCXgYkG0nauU.TC', NULL, 2, 1, '2023-06-05 22:00:36', '2023-06-05 22:00:36'),
(106, 'Brezys', 'bzavala@metro-op.com', 'Zavala', NULL, 'Gerente general | Hapton by Hilton San Isidro', 1, '+51949133833', '', NULL, NULL, NULL, 2, 136, NULL, '$2y$10$Y.tjTXMolVOxjeZZxSB3ge2G4.d7UhzsqlxFiVBa6azPnaz359kGK', NULL, 4, 1, '2023-06-05 22:58:29', '2023-06-10 20:46:41'),
(107, 'Andres', 'aatuesta.amhoteles@gmail.com', 'Atuesta', '', 'Gerente general', 1, '+51997155323', '', '', NULL, '', 2, 136, NULL, '$2y$10$O6u.FfA5zf9a86o7SiinyerP/S0P7i.3G4hTTzs9Aqol8OKFBdgQ6', NULL, 2, 1, '2023-06-05 23:04:22', '2023-06-05 23:04:22'),
(108, 'Juan', 'rickgallo@gmail.com', 'Gallo', 'Pizarro', 'Gerente general', 1, '', '', '', NULL, '', 2, 137, NULL, '$2y$10$/EUjrH4PpfVUFhZxAsBxI.BYFrllA1kNrUvUGQTdXeJjCAiEa2OXu', NULL, 2, 1, '2023-06-05 23:07:16', '2023-06-05 23:07:16'),
(109, 'Gladys', 'jparra@inandes.com', 'Parra', '', 'Gerente comercial', 2, '+51979781204', '', '', NULL, '', 2, 137, NULL, '$2y$10$dIOMeXaVtrTdwuMwxEIbou7trZQwqJebBJEfqyYMFf88GTDGSv5bK', NULL, 2, 1, '2023-06-05 23:10:36', '2023-06-05 23:10:36'),
(110, 'Verónica', 'veronica.goicochea@albertini-abogados.com', 'goicochea', '', 'Administrador', 2, '', '', '', NULL, '', 2, 138, NULL, '$2y$10$ClEp3TX8/70pINtoFx.uVuBBz9PZOw3dU8cKWBkjER.4VznoncTUS', NULL, 2, 1, '2023-06-06 00:06:13', '2023-06-06 00:06:13'),
(111, 'Michelle', 'michelle.lares@albertini-abogados.com', 'Lares', '', 'Asistente de gerencia', 2, '+51922627999', '', '', NULL, '', 4, 138, NULL, '$2y$10$5Iq.I/El37JrXMkB2U/APOHsXegLw2tazZGnmnUBbbrMGTuAettE2', NULL, 4, 1, '2023-06-06 00:07:45', '2023-06-06 00:07:45'),
(112, 'Martín', 'martinc@humcar.com', 'Camcho', '', 'CEO', 1, '+573102492035', '', '', NULL, '', 2, 138, NULL, '$2y$10$wo4F1vasVGgkIGemyeSnsOOzZC7B30uAE4g0S.g5olZnLjULdmYtO', NULL, 4, 1, '2023-06-06 00:08:58', '2023-06-06 00:08:58'),
(113, 'Edwin', 'ventas@humcar.com.pe', 'Gamba', '', 'Analista comercial', 1, '+51954777402', '', '', NULL, '', 2, 138, NULL, '$2y$10$kad07gt85OnKfAjO1a0BnOd2WYC4BQ3maK24HXgnGcriHijluv7eK', NULL, 4, 1, '2023-06-06 00:16:15', '2023-06-06 00:16:15'),
(114, 'Diego', 'dguarin@humcar.com', 'Diego', '', 'Gerente comercial', 1, '+573214469450', '', '', NULL, '', 2, 138, NULL, '$2y$10$x3/LLQTjB02Vl02N9JJUqeheupIfGD566bvbv49m8n.EAdkQJhpKS', NULL, 2, 1, '2023-06-06 00:18:09', '2023-06-06 00:18:09'),
(115, 'Jenny', 'jrodriguez@humcar.com', 'Rodriguez', 'López', 'Analista de contabilidad', 2, '+576017562300', '', '', NULL, '', 2, 138, NULL, '$2y$10$tQKnbBn3w4FFPaCwK7pidegBvFM6eC8x/6j9oZOlNFkEPNHjuzXGy', NULL, 4, 1, '2023-06-06 00:19:22', '2023-06-06 00:19:22'),
(116, 'Jenny', 'contabilidad@humcar.com', 'Sánchez', '', 'Contabilidad', 2, '', '', '', NULL, '', 4, 138, NULL, '$2y$10$2aN0J7MlcpRME7aFUwvsT./kzMjAvPKKonOvWYV5stobNARrIkcn.', NULL, 2, 1, '2023-06-06 00:20:22', '2023-06-06 00:20:22'),
(117, 'Fabio', 'ffajardo@humcar.com', 'Fajardo', '', 'Gerente de planeación y control financiero', 1, '+573232457432', '', '', NULL, '', 2, 138, NULL, '$2y$10$ytRDbCKSS2ihyiHu/pzZwedsHcrBubSjFjmXgHarQwIP6zYUyOYhq', NULL, 4, 1, '2023-06-06 00:22:10', '2023-06-06 00:22:10'),
(118, 'Miguel', 'm.mauricio@itmauri.com', 'Gaspar', '', 'Gerente general', 1, '+51957669118', '', '', NULL, '', 2, 139, NULL, '$2y$10$VC9FThxSxc9jLlzvzT2tAejtRHN8lKDaeCMiYLZe4EMQphLn5WM/u', NULL, 2, 1, '2023-06-06 00:23:15', '2023-06-06 00:23:15'),
(119, 'Fresia', 'contabilidad@mauri.com', 'Galvan', 'Rios', 'Contabilidad', 1, '+51999967801', '', '', NULL, '', 2, 139, NULL, '$2y$10$2KdmS/h9sAhBfRSkmiWmX.s8Sr.XEBoqz1WOjT3Q5svWtIlxlk3Ia', NULL, 4, 1, '2023-06-06 00:25:14', '2023-06-06 00:25:14'),
(120, 'Abigail', 'asistente1@mauri.com', 'Tambrac', 'Gaspar', 'RR.HH', 2, '+51990267983', '', '', NULL, '', 4, 139, NULL, '$2y$10$qZn/Ku/IciwhzkOt3OFBKuB3pGE/2FIJNJB8TxqVexlv048AqztxK', NULL, 4, 1, '2023-06-06 00:27:52', '2023-06-06 00:27:52'),
(121, 'María', 'mauri.030289@gmail.com', 'Gaspar', '', 'Ejecutiva comercial', 2, '+51947999709', '', '', NULL, '', 5, 139, NULL, '$2y$10$Sg3wPRpNtyD28smfhDXwguhQ3B02rP2mYFmGzhj8PJ3Dzm11Bkqde', NULL, 4, 1, '2023-06-06 00:30:03', '2023-06-06 00:30:03'),
(122, 'Carlos', 'operaciones@itmauri.com', 'Ancalle', 'Mauricio', 'Jefe de logística', 1, '+51991679092', '', '', NULL, '', 2, 139, NULL, '$2y$10$LW1PXpuA6iVeheHYI406/O/aIPdoVKTtD2HnB9uQViNLUjcJ7HzmS', NULL, 4, 1, '2023-06-06 00:31:24', '2023-06-06 00:31:24'),
(123, 'Paula', 'dirfinancieroperu@issa.com.co', 'Arias', '', 'Apoderado //Directora financiera', 2, '+51989390847', '', '', NULL, '', 2, 140, NULL, '$2y$10$ni4VHlRgKMn7apgYxaSx5OmuMffnMOzIrKRtQUR5apdo5oEfPlMoa', NULL, 4, 1, '2023-06-06 00:40:58', '2023-06-06 00:40:58'),
(124, 'Francisco', 'dirproyectolima@issa.com.pe', 'Melgarejo', '', 'Director de proyectos', 1, '+51922199205', '', '', NULL, '', 2, 140, NULL, '$2y$10$CSLOacRvG9tIex.YFxPk1.xbHNhW8POZe3/EKeYh5n8GQVozAZSU.', NULL, 2, 1, '2023-06-06 00:58:16', '2023-06-06 00:58:16'),
(125, 'Ana', 'dgestionestrategica.issaperu@gmail.com', 'Marin', 'Correa', 'Director de gestión estratégica', 2, '+573113723931', '', '', NULL, '', 2, 140, NULL, '$2y$10$XPIsPmSSgUmTvMtQa1Lst.xcuKfFAQH.IzMj/cOxScqR8K7HYE2Ua', NULL, 2, 1, '2023-06-06 01:02:16', '2023-06-06 01:02:16'),
(126, 'Alejandro', 'dtecnicoperu@issa.com.co', 'Zuluaga', '', 'Gerente general y Director técnico', 1, '+51958980331', '', '', NULL, '', 2, 140, NULL, '$2y$10$SoEKpBc.1f73vuGvVCMBBePVQ1V86yn/ie0HUY9LHc.NuWn6zq9MS', NULL, 4, 1, '2023-06-06 02:57:06', '2023-06-06 02:57:06'),
(127, 'Alejandro', 'gerenciaperu@issa.com.co', 'Zuluaga', NULL, 'Gerente general', 1, '+51989407937', '', NULL, NULL, NULL, 2, 140, NULL, '$2y$10$oEX8w1G8MENxAlj0LMmhfOK5w7V7O89SekcQtZbHc9029FSSd2rri', NULL, 2, 1, '2023-06-06 03:00:58', '2023-06-10 20:43:55'),
(128, 'Juan Pablo', 'dproyectoica@issa.com.pe', 'Olaya', '', 'Director de proyectos Ica', 1, '+51987978437', '', '', NULL, '', 2, 140, NULL, '$2y$10$DIUl360CorJJwLDep9XRduts2QYunJE4eVcDG5ByQTzB9hcKPM1/S', NULL, 4, 1, '2023-06-06 03:30:29', '2023-06-06 03:30:29'),
(129, 'Juan Manuel', 'dirinternasarequipa@issa.com.pe', 'Bocanegra', 'Baez', 'Direcctor de proyectos arequipa', 1, '+51989407965', '', '', NULL, '', 2, 140, NULL, '$2y$10$3gF.jT8k2K1s/uHvyJr.Ye68IcpAPAHORrFzw6tgitNUIqLf3YILy', NULL, 4, 1, '2023-06-06 03:36:07', '2023-06-06 03:36:07'),
(130, 'Javier', 'coordcomercialproyectos@issa.com.pe', 'Bustamante', 'Sánchez', 'Coordinador comercial de proyectos especiales', 1, '+51991548738', '', '', NULL, '', 4, 140, NULL, '$2y$10$CpWi6nlXUd.AXOFuH0X7Ju4c3/G7bZxmdvC6ijg0UyCsmvCPps85u', NULL, 4, 1, '2023-06-06 03:41:09', '2023-06-06 03:41:09'),
(131, 'Susam', 'susam.medina@ghlhoteles.com', 'Susam', NULL, 'Coordinadora de eventos', 2, '', '', NULL, NULL, NULL, 2, 141, NULL, '$2y$10$FTTrIVK5hfPSXLLlC1fROuOFePbZh/xj3ZD0l/58SyU8GCbss88t2', NULL, 4, 1, '2023-06-06 03:43:49', '2023-06-06 03:56:17'),
(132, 'Patricia', 'patricia.vasquez@ghlhoteles.com', 'Vasquez', NULL, 'Gerente de talento humano y Sostenibilidad', 2, '', '', NULL, NULL, NULL, 2, 141, NULL, '$2y$10$TeStIYnXK93jb9C0nyZKyOgSTpKTFTr4fZ4JTjLRpTUk96O1XDdBW', NULL, 4, 1, '2023-06-06 03:45:43', '2023-06-06 03:56:37'),
(133, 'Mirian', 'miriam.carrera@ghlhoteles.com', 'Carrera', NULL, 'Asistente de gerencia', 2, '+51975141789', '', NULL, NULL, NULL, 4, 141, NULL, '$2y$10$MjNl/U01LKJTt7bvGdDDpu7jEHCpuJksPzn5Edw.VqevHAg.MvIAS', NULL, 2, 1, '2023-06-06 03:48:18', '2023-06-06 03:57:06'),
(134, 'Maria Isabel', 'maria.tavara@ghlhoteles.com', 'Tavara', NULL, 'Jefe de Alimentos y Bebidas', 2, '', '', NULL, NULL, NULL, 4, 141, NULL, '$2y$10$OjDp/IK76lQrFtSCBjc6AO4W3wxz569fh/fgWdJESbZOnx9hTInSK', NULL, 4, 1, '2023-06-06 03:50:49', '2023-06-06 03:57:18'),
(135, 'Ivan', 'ivan.perez@ghlhoteles.com', 'Perez', '', 'Gerente general | Hotel Sonesta Sede Arequipa', 1, '+51945241265', '', '', NULL, '', 2, 141, NULL, '$2y$10$pJK41EgivU/JIj1BoNkNN.g1HB8MyDBg5H6X0Ro4pirBQMfeNEbzK', NULL, 4, 1, '2023-06-06 03:55:56', '2023-06-06 03:55:56'),
(136, 'Carlos', 'carlos.reyes@ghlhoteles.com', 'Reyes', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 141, NULL, '$2y$10$4C479mqEBRJO7RRiVuwoyOUKIv.gjylYsB53pOaTvef.N3NWEccyW', NULL, 2, 1, '2023-06-06 03:58:12', '2023-06-06 03:58:12'),
(137, 'Angela', 'angela.gomezc@ghlhoteles.com', 'Gómez', '', 'Gerente de ventas', 2, '+51952679746', '', '', NULL, '', 2, 141, NULL, '$2y$10$2w0rwbd3PPIhsNJLwc.OO.xhqdyaVTg5pBYMO2pZ/Of2CE2fpu5R2', NULL, 2, 1, '2023-06-06 03:59:16', '2023-06-06 03:59:16'),
(138, 'Leitsa', 'lcastillo@internexa.com', 'Castillo', 'González', 'Director de mercadeo', 2, '+51985129161', '', '', NULL, '', 2, 142, NULL, '$2y$10$B8yrCBoW2vFR3Gqbg693Qu5IEnIICGyAaZ9DGDJhN2KWY6STNmcUy', NULL, 4, 1, '2023-06-06 04:12:36', '2023-06-06 04:12:36'),
(139, 'Luis', 'lvillacorta@internexa.com', 'Villacorta', '', 'Director negocios digitales', 1, '+51998454243', '', '', NULL, '', 2, 142, NULL, '$2y$10$GjkMBpUx7vU/AOLz8yDnbuKgupKLF6t5MJWr5FRQJZ3f8tJnbdjGW', NULL, 4, 1, '2023-06-06 04:14:49', '2023-06-06 04:14:49'),
(140, 'Katherine', 'facturacionproveedoresitxp@internexa.com', 'Lozano', 'Caceres', 'Analista cuentas por pagar', 2, '+51998999177', '', '', NULL, '', 4, 142, NULL, '$2y$10$9bdFDvhQItAES4ego.NMjOlOu7xDtbagBKbHQzqvJqOjAIZWHsB96', NULL, 4, 1, '2023-06-06 04:20:42', '2023-06-06 04:20:42'),
(141, 'Katherine', 'kguevara@internexa.com', 'Guevara', '', 'Analista Administrativa', 2, '+51964108644', '', '', NULL, '', 4, 142, NULL, '$2y$10$/iihygSFAEfw6ozUg0jVq.lW6dH.vcv/DaAySSvRFQUagV2TfaFsO', NULL, 4, 1, '2023-06-06 04:22:55', '2023-06-06 04:22:55'),
(142, 'Guillermo', 'gbustamantem@internexa.com', 'Bustamante', '', 'Director Consultoría y Diseño', 1, '+51947672431', '', '', NULL, '', 2, 142, NULL, '$2y$10$/4.d4MwuX0AHo9ctB9cjgetqyReQ0HYWtmc34GjLvp3Z7zRQboYb.', NULL, 2, 1, '2023-06-06 04:24:20', '2023-06-06 04:24:20'),
(143, 'Erika', 'secretariaitxperu@internexa.com', 'Gamarra', '', 'Asistente de gerencia', 2, '+51985797309', '', '', NULL, '', 4, 142, NULL, '$2y$10$2xjmK10SxTKCvOdTzcEmNeYg5598pEsw5pjRcQvuKFwxqqUsANcR6', NULL, 4, 1, '2023-06-06 04:32:28', '2023-06-06 04:32:28'),
(144, 'Mario', 'mpiana@internexa.com', 'Piana', 'Arenas', 'Director operación y mantenimiento', 1, '+51914998010', '', '', NULL, '', 2, 142, NULL, '$2y$10$D2AnWKuE04S3WJCpI/LH2OeXkjKolpbTiX6H3lPGRTBUy3XCbT2Gm', NULL, 4, 1, '2023-06-06 04:33:30', '2023-06-06 04:33:30'),
(145, 'Ana Beatriz', 'amonge@internexa.com', 'Monge', 'Valverde', 'Gerente general', 2, '', '', '', NULL, '', 2, 142, NULL, '$2y$10$wK3dSf3TMwMIoCA2B./xreHIM5S9OeTSwFn0boxpYJ26aYWu3R9qy', NULL, 2, 1, '2023-06-06 04:40:18', '2023-06-06 04:40:18'),
(146, 'Aldo', 'achavez@internexa.com', 'Chavez', '', 'Gerente de cuentas', 1, '+51987947549', '', '', NULL, '', 2, 142, NULL, '$2y$10$veHKagSpTNwVcUXmre0/cunCHdk1PACMSHpJB7f7NbjffyIEEtuo2', NULL, 4, 1, '2023-06-06 04:41:20', '2023-06-06 04:41:20'),
(147, 'Manuel', 'mmiranda@internexa.com', 'Miranda', '', 'Gerente de mercado', 1, '', '+51948149306', '', NULL, '', 2, 142, NULL, '$2y$10$ia9fzcR4lofMhH.u99.JteZnHnINbgAtepFnL2s4E.mUjgYd.hDNe', NULL, 4, 1, '2023-06-06 04:51:00', '2023-06-06 04:51:00'),
(148, 'Paola', 'pmarzo@internexa.com', 'Marzo', '', 'Gerente de cuentas', 2, '+51948034972', '', '', NULL, '', 2, 142, NULL, '$2y$10$EsV35zjJmQScu0INDOyV1e3UXCxXYEYglTMmHIkfl5fzqhzK.zfb.', NULL, 4, 1, '2023-06-06 04:52:33', '2023-06-06 04:52:33'),
(149, 'Daniela', 'darojas@internexa.com', 'Rojas', '', 'Gerente de marketing', 2, '+51914998711', '', '', NULL, '', 2, 142, NULL, '$2y$10$lo/BdvJdH0tcFNN53IAJxe5utfI/COBUvh.V4tiL656vDG4hgBHpW', NULL, 4, 1, '2023-06-06 04:53:54', '2023-06-06 04:53:54'),
(150, 'Yohana', 'yohana.somocurcio@bodytechcorp.com', 'Somocurcio', '', 'Coordinador de gestión humana', 2, '+51987650616', '', '', NULL, '', 2, 143, NULL, '$2y$10$E8pOvTlwCGewHLvjZTGIt.ZreRio8qJ6sRXS3KZ5yPXfMf/4D6s4.', NULL, 4, 1, '2023-06-06 04:56:41', '2023-06-06 04:56:41'),
(151, 'Sara', 'sara.alcocer@bodytechcorp.com', 'Alcocer', 'Tapia', 'Gerente de marketing', 2, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$6HVUOy.09sL5DqW9a2d5C.c24kjLxLbv7fQ/jewaQbpRI31JW4OKy', NULL, 4, 1, '2023-06-06 04:57:34', '2023-06-06 04:57:34'),
(152, 'Ricardo', 'ricardo.leon@bodytechcorp.com', 'León', 'Bartra', 'Gerente corporativo', 1, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$5bC4Y6fvlSSZrubupsFD8.o3IaYmzC07Ug0Zuq8WbkyGr9mtEMY9i', NULL, 4, 1, '2023-06-06 05:03:54', '2023-06-06 05:03:54'),
(153, 'Piedad', 'piedad.vanegas@bodytechcorp.com', 'Vanegas', '', 'Director financiero', 2, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$KiJ.a.31ESlEG6QdnYJ5De9ttwpiDPcwYFzo5Kmnl9Zo6zFrRhn5a', NULL, 2, 1, '2023-06-06 17:43:59', '2023-06-06 17:43:59'),
(154, 'Álvaro', 'alvaro.garcia@bodytechcorp.com', 'García', '', 'Gerente Perú', 1, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$rnAAD0K7eMf6NeOnhUdIX.EsBK6VWOJd0t9ALCHwNBPDi76CNpz2.', NULL, 2, 1, '2023-06-06 18:09:17', '2023-06-06 18:09:17'),
(155, 'Diego', 'diego.alvarez@bodytechcorp.com', 'Alvarez', '', 'Ejecutivo comercial', 1, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$5FAfoBONQD3F0li7VlNofORLzInvpt0E44K.T1M5qhvz5TymllrZe', NULL, 4, 1, '2023-06-06 18:12:59', '2023-06-06 18:12:59'),
(156, 'Betty', 'fiorella.meneses@bodytechcorp.com', 'Fiorella', 'Meneses', 'Analista de tesorería', 2, '', '', '', NULL, '', 2, 143, NULL, '$2y$10$g5oNHw2aMWit8lzBqBKKse.bA3UiAqZ3IDI1172FZXwmIqCstgjz2', NULL, 4, 1, '2023-06-06 21:48:03', '2023-06-06 21:48:03'),
(157, 'Adriana', 'adriana.giraldo@bodytechcorp.com', 'Giraldo', NULL, 'Gerente de Operaciones', 2, '', '', NULL, NULL, NULL, 2, 143, NULL, '$2y$10$ukQJmOVt6sT8dUqPlnW2heol29vyFk1ZsgzIYvM7egMVvOkRBuEjy', NULL, 4, 1, '2023-06-06 23:06:25', '2023-06-06 23:06:37'),
(158, 'Angela', 'asanchez@cuerosvelez.com', 'Sanchez', NULL, 'Director país', 2, '+51980525873', '', NULL, NULL, NULL, 2, 144, NULL, '$2y$10$AK06BbBFCaeH5l1dd9lHxOcn.SX14ZJIpdI6OUXXPzt4GmOKorqKm', NULL, 2, 1, '2023-06-06 23:07:54', '2023-06-06 23:09:53'),
(159, 'Enrique', 'ecardenas@sempiterno-group.com', 'Cardenas', '', '', 1, '+51987714518', '', '', NULL, '', 2, 145, NULL, '$2y$10$xGapzIXW/Jt/zX263haBOOlQw0Gq2tqVMrMsrj9QMxhXBNyzpsj8i', NULL, 2, 1, '2023-06-06 23:09:20', '2023-06-06 23:09:20'),
(160, 'Ximena', 'ximena@iprostore.com.pe', 'Pontón', 'Sánchez', 'Gerente Administrativo', 2, '+51986034381', '', '', NULL, '', 2, 146, NULL, '$2y$10$x/iZZrdqX/.i3Gdq2jEIhOFlMUFjJUqH35dWh1HJh6exdHRZ34rb6', NULL, 2, 1, '2023-06-06 23:11:41', '2023-06-06 23:11:41'),
(161, ' Lucas', 'lucas@iprostore.com.pe ', 'Riccio', '', ' Gerente Ventas', 1, '+51987519015 ', '', '', NULL, '', 2, 146, NULL, '$2y$10$ctp3owPzsOKiiiDd57OppeJao6caZpnIgKUdwjByljiNuRHTED.7S', NULL, 4, 1, '2023-06-06 23:14:24', '2023-06-06 23:14:24'),
(162, 'Muriel', 'muriel@iprostore.com.pe ', 'Altuna ', '', 'Coordinadora de Servicios ', 1, ' +51936402125', '', '', NULL, '', 4, 146, NULL, '$2y$10$TVEv2To.F.Vy3osfBtSri.Gt4QWjMTDLDR6Z5IqmpeMSuoN7/08TC', NULL, 2, 1, '2023-06-06 23:18:37', '2023-06-06 23:18:37'),
(163, 'Cecilia', ' cecilia.minano@itbcp.com ', 'Miñano', 'Quispe', 'Asistente de gerencia', 2, '+51924900259', '', NULL, NULL, NULL, 4, 147, NULL, '$2y$10$4kdt0HKDv.A63xqKwTGxQeHtwvCFlOzH5834ez5wb0VR5yYXGjSBK', NULL, 2, 1, '2023-06-07 00:23:21', '2023-06-07 00:28:14'),
(164, 'Grober', 'grober.puchuc@itbcp.com', 'Puchuc', 'Aranda', 'Gerente general', 1, '+51999477143 ', '', '', NULL, '', 2, 147, NULL, '$2y$10$DmSs.iapBzhKkXB5l1.iNO4LCiEL.JPCmxSp/BjBjxaNDXl1qtQPS', NULL, 2, 1, '2023-06-07 00:28:00', '2023-06-07 00:28:00'),
(165, 'Ricardo', 'ricardo.sanabria@jsconsulting.com.pe', 'Sanabria', 'Crispin', 'Gerente general', 1, '+51980128990', '', '', NULL, '', 2, 148, NULL, '$2y$10$5qKMQ3XPcIGJdpTFLVIQxeabdF1rISCIOpFqOaBjd1l5uhdyYwZA6', NULL, 2, 1, '2023-06-07 00:30:36', '2023-06-07 00:30:36'),
(166, 'Carlos', 'carlos.monje@joyco.com.co', 'Monje', 'Lombo', 'Director país', 1, '+51943723958', '', '', NULL, '', 2, 149, NULL, '$2y$10$Q7V.Nl/Otj/PgoVE2LWqQuOjDzxP3Jt/adS5t1tk4cMGo0GkWEgnm', NULL, 2, 1, '2023-06-07 00:31:51', '2023-06-07 00:31:51'),
(167, 'Cynthia', 'cynthia.lewis@joyco.com.co', 'Lewis', 'Torres', 'Directora de Comunicaciones y Mercadeo', 2, '+573152336002', '', '', NULL, '', 2, 149, NULL, '$2y$10$dT9i/yWiU20FmOZF77omn.lIPmWKEluWRovT1NK4d5Yh3a2Fm2t5u', NULL, 2, 1, '2023-06-07 02:16:40', '2023-06-07 02:16:40'),
(168, 'Erika', 'erika.triana@joyco.com.co ', 'Triana ', '', 'Director financiero ', 2, '+573182695612', '', '', NULL, '', 2, 149, NULL, '$2y$10$FoI.pvU52IYgGFD3IHH9veQgM2Vo/Hp33Awjh4ojXVmne9kIVP.Wa', NULL, 2, 1, '2023-06-07 02:30:38', '2023-06-07 02:30:38'),
(169, 'Pilar', 'pilar.segura@joyco.com.co', 'Segura', '', 'Director administrativo y gestion humana', 2, '+573212547709', '', '', NULL, '', 2, 149, NULL, '$2y$10$rmvl.M9kwt0HGt/AyqGs..5rqLJRwzX0fkliZXEtgsfRglhDYUrWG', NULL, 4, 1, '2023-06-07 02:34:54', '2023-06-07 02:34:54'),
(170, 'Paola', 'paola.vanegas@joyco.com.co ', 'Vanegas ', '', 'Director de Desarrollo de Negocios ', 2, '+573102407454', '', '', NULL, '', 2, 149, NULL, '$2y$10$gvmK45OnGoAiIpu.cZSasuRXhutAVZIwfe.EznUti.df35/BPzIp6', NULL, 4, 1, '2023-06-07 02:37:30', '2023-06-07 02:37:30'),
(171, 'Jairo', 'jairo.gonzalez@joyco.com.co', 'González', '', 'Director de Licitaciones', 1, '+573202322792', '', '', NULL, '', 2, 149, NULL, '$2y$10$/EzmPpNn1sEpXzeVWOOt/..pQm7Hx4UzW7Iv0l0JIcbkzdMIHYskS', NULL, 4, 1, '2023-06-07 03:26:07', '2023-06-07 03:26:07'),
(172, 'Héctor', 'hector.diaz@joyco.com.co ', 'Díaz ', '', ' Director operativo y logística', 1, '+573124479273', '', '', NULL, '', 2, 149, NULL, '$2y$10$FV3Ikks8EuDWEy2Lw10su.rf9zGHcTy8TGUakaL5OFISTLrMXVkca', NULL, 4, 1, '2023-06-07 03:35:54', '2023-06-07 03:35:54'),
(173, 'Annie', 'juridica@joyco.com.co ', 'Parra ', '', 'Directora Jurídica', 1, '+573235848260', '', '', NULL, '', 2, 149, NULL, '$2y$10$YJFT.gtAsjM7CPCFyaw83ukOsNAkdMgoZqUUPPWHwL05V.qnLoCwS', NULL, 2, 1, '2023-06-07 03:40:57', '2023-06-07 03:40:57'),
(174, 'Víctor', 'victor.rodriguez@joyco.com.co', 'Rodríguez', '', 'Director de Gestión Integrada e Innovación', 1, '+573103433141', '', '', NULL, '', 2, 149, NULL, '$2y$10$uH/BvlN1k57K4PuYGOSiOOA3JZ1BqVfqLzgTQp1P956wdkR6PT9DS', NULL, 4, 1, '2023-06-07 03:41:53', '2023-06-07 03:41:53'),
(175, 'Cristina', 'cristina.medrano@joyco.com.co', 'Medrano', '', 'Jefe de Desarrollo Estratégico', 2, '+573015882040', '', '', NULL, '', 2, 149, NULL, '$2y$10$HVZ6vhL9zzCTed0Dz9kXI..ETTDqqzEUlA/ITvMDCyn6WiYfU.kiS', NULL, 4, 1, '2023-06-07 03:42:43', '2023-06-07 03:42:43'),
(176, 'Diana', 'diana.rodriguez@joyco.com.co', 'Rodríguez', 'Rodríguez', 'Jefe SST y Ambiente', 2, '+573004771008', '', '', NULL, '', 2, 149, NULL, '$2y$10$GOUn4OZSqg.c5XTSWlIma.yhICcBvdTyCdv8R3/YuESceTKqHq3PK', NULL, 4, 1, '2023-06-07 03:43:38', '2023-06-07 03:43:38'),
(177, 'María Vanessa', 'vbarbie@estudiojpalominoyasociados.com', 'Barbie', 'Arroyo', 'Socio', 2, '+51988681923', '', '', NULL, '', 2, 150, NULL, '$2y$10$Fq1PSOGVJHyL.O5aQyRdgu17NDcPmb0AEJxjnkiuivETNSIL.QqfC', NULL, 2, 1, '2023-06-07 03:44:36', '2023-06-07 03:44:36'),
(178, 'julio', 'jpalomino@estudiojpalominoyasociados.com', 'Palomino', '', 'Socio', 1, '+51997936073', '', '', NULL, '', 2, 150, NULL, '$2y$10$Jteo1y8rgs57YIu49r0WiOzU96kYgxi5mGezax3zaS5imfXb5CoPe', NULL, 2, 1, '2023-06-07 03:45:28', '2023-06-07 03:45:28'),
(179, 'Roselina', 'kit@kresaljaip.com', 'Liza', '', 'Abogado', 2, '', '', '', NULL, '', 2, 151, NULL, '$2y$10$INhwqnyivHmcv1lLW2j88uMFylkt3OXS.hS46aglMpJbz9uC1Yqf6', NULL, 4, 1, '2023-06-07 03:47:59', '2023-06-07 03:47:59'),
(180, 'Rosa', 'ruzika@kresaljaip.com', 'María', 'Kresalja', 'Socio', 2, '+51989266000', '', '', NULL, '', 2, 151, NULL, '$2y$10$s10XzvHo58eYSsJjN.ji/uHLm8Vxw13gt0NTj8wR/IwOQtlGllUhC', NULL, 2, 1, '2023-06-07 03:49:29', '2023-06-07 03:49:29'),
(181, 'Nathalia', 'k@kresaljaip.com', 'Bustos', '', 'Asistente administrativo', 2, '', '', '', NULL, '', 2, 151, NULL, '$2y$10$xe07E8o.7Np61mUu/cqRe.YaF6znr4UHMkYmTTZ/IPHfxetToqwyO', NULL, 4, 1, '2023-06-07 04:00:32', '2023-06-07 04:00:32'),
(182, 'Marcela', 'mrobles@kresaljaip.com', 'Robles', '', 'Socio', 2, '+51993451193', '', '', NULL, '', 2, 151, NULL, '$2y$10$RrBUyRG6uolqAxCv2Nb3i.1vJd04jz/wjLWLZeWoluhhUb0YBROh2', NULL, 2, 1, '2023-06-07 04:01:28', '2023-06-07 04:01:28'),
(183, 'Jorge', 'ktm@kresaljaip.com', 'Costilla', '', 'Asistente administrativo', 1, '', '', '', NULL, '', 2, 151, NULL, '$2y$10$iOyHiYkE3S6tPGesZFinZ.v2bJmn9fuvKnEUCeIPCtHpEu71Ynqp.', NULL, 2, 1, '2023-06-07 19:27:56', '2023-06-07 19:27:56'),
(184, 'Enrique', 'dkcorporativo@dk.com.pe', 'Cornejo', '', 'Abogado', 1, '', '', '', NULL, '', 2, 151, NULL, '$2y$10$vWc8L8Eb/JmzzWZPZGBW4OribnXtwezWv/wyXWy.FsGY6IyBtELny', NULL, 4, 1, '2023-06-07 19:31:38', '2023-06-07 19:31:38'),
(185, 'Beatriz', 'bmelgar@kresaljaip.com', 'Melgar', '', 'Asistente administrativo', 2, '', '', '', NULL, '', 2, 151, NULL, '$2y$10$GwwqeTLUokNeR.PFFbpUkOGVxSqpzPNR4HkBbukpOa6XXpIgWZdOe', NULL, 4, 1, '2023-06-07 20:59:43', '2023-06-07 20:59:43'),
(186, 'LUIS', 'administracion@oyssac.com', 'SANDON', 'QUICHIS', 'Gerente general', 1, '+51992785494', '', '', NULL, '', 2, 152, NULL, '$2y$10$Q7o83nTJaChkCH/w3KLEI.C3F1.nqxdXOweFKdP61AB0HYRVbSEG6', NULL, 2, 1, '2023-06-07 21:37:00', '2023-06-07 21:37:00'),
(187, 'Luz', 'l.pariona@larbis.net', 'Pariona', '', 'Asistente administrativo', 2, '+51924117614', '', '', NULL, '', 2, 153, NULL, '$2y$10$abYXeC55IJmWQxjLt4A8uOMzUXUzQrs8bs8PhK5Uwy3xnTZusORDW', NULL, 2, 1, '2023-06-07 21:39:36', '2023-06-07 21:39:36'),
(188, 'Cesar', 'c.larrea@larbis.net', 'Larrea', 'Becerra', 'Gerente general', 1, '+51997520437', '', '', NULL, '', 2, 153, NULL, '$2y$10$K1n0IXgPyam.aJtHJ4DaC.1EIlfYtAmml/82PhydQm6vYOTA0bcwS', NULL, 2, 1, '2023-06-07 22:03:23', '2023-06-07 22:03:23'),
(189, 'Bruno', 'bruno.vega@legalpartners.pe', 'Vega', 'Nuñez', 'Gerente general', 1, '+51996996009', '', '', NULL, '', 2, 154, NULL, '$2y$10$uOGLmPhWYD/Kw35mY5isW.Lwb2E/O0/1ciXlfxO0E585UySMwrK2e', NULL, 2, 1, '2023-06-07 22:06:04', '2023-06-07 22:06:04'),
(190, 'Rafael', 'rperez@leoandes-pe.com', 'Pérez', '', 'Gerente de administración y finanzas', 1, '+51993513672', '', '', NULL, '', 2, 155, NULL, '$2y$10$2fAxvDsaBt2X1.qswLOKP.efnjjOaBZmE3RMMZFIV9VySKPXNPRi.', NULL, 2, 1, '2023-06-07 22:09:32', '2023-06-07 22:09:32'),
(191, 'Martha', 'mchoquecac@leoandes-pe.com', 'Choquecahua', '', 'Jefe de tesorería', 1, '', '', '', NULL, '', 2, 155, NULL, '$2y$10$gat82NhOklSiSNScsBqd6u8.Q2CyapN7iyE/Jhg9cQRhD36K3CXdO', NULL, 4, 1, '2023-06-07 22:11:36', '2023-06-07 22:11:36'),
(192, 'Lucia', 'lsaponara@leoandes-pe.com', 'Saponara', '', 'Director de mercadeo', 2, '+51993573970', '', '', NULL, '', 2, 155, NULL, '$2y$10$yVyuQX84SRyy7SS198TUQewatA4YDgHmk33pODj0HRt5HxbOgQHrG', NULL, 4, 1, '2023-06-07 22:12:28', '2023-06-07 22:12:28'),
(193, 'Karin', 'kcaballero@leoandes-pe.com', 'Caballero', '', 'Contador', 2, '+51993513670', '', '', NULL, '', 2, 155, NULL, '$2y$10$yl.v2O24sGQZrBAa3OOpSO19/DHg98e7DEnF5jGMH/KuaoRYy73am', NULL, 4, 1, '2023-06-07 22:13:24', '2023-06-07 22:13:24'),
(194, 'Julián', 'jlazaro@leoandes-pe.com', 'Lázaro', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 155, NULL, '$2y$10$E5zWxb188uBgMM5muGRhtubbvmfSvWfDAwuvszVmXlnj7ZrM8Nap.', NULL, 2, 1, '2023-06-07 22:17:46', '2023-06-07 22:17:46'),
(195, 'Juan', 'jchapilliq@leoandes-pe.com', 'Carlos', 'Chapilliquen', 'Gerente de logística', 1, '+51993513673', '', '', NULL, '', 2, 155, NULL, '$2y$10$Bn2Syerzan.VR1.QZm9HbeUitaibK0MbgfVpvGWJpKPi2twxdli4q', NULL, 2, 1, '2023-06-07 22:18:34', '2023-06-07 22:18:34'),
(196, 'Jorge', 'jjimenezc@leoandes-pe.com', 'Jimenez', '', 'Coordinador de marketing', 1, '', '', '', NULL, '', 2, 155, NULL, '$2y$10$aM2GVscq0gXxlOHJUwS2YOLqhjtlgkQ6MhRTgNZSCHc1s/nr0s4DC', NULL, 4, 1, '2023-06-07 22:19:16', '2023-06-07 22:19:16'),
(197, 'Carlos', 'cmujica@leoandes-pe.com', 'Mujica', '', 'Gerente de T.I', 1, '+51993573446', '', '', NULL, '', 2, 155, NULL, '$2y$10$ziP2ZpPrDeGhb8E07opmlOGuXvlQOy4gVFFleiqwGLSuGP.efBQ36', NULL, 2, 1, '2023-06-07 22:20:00', '2023-06-07 22:20:00'),
(198, 'Elizabeth', 'evera@leoandes-pe.com', 'Vera', '+51989119389', 'Gerente de gestión Humana', 1, '', '', '', NULL, '', 2, 155, NULL, '$2y$10$Ql2jRBtmwIVjqHp5oNhuPOkZqEhaOKkb3Zrc2CGfQSJQIROvUnHe6', NULL, 4, 1, '2023-06-07 22:24:39', '2023-06-07 22:24:39'),
(199, 'Otto', 'osarmiento@lvesa.pe', 'Sarmiento', '', 'Gerente General', 1, '', '', '', NULL, '', 2, 156, NULL, '$2y$10$ujtugycL6XkDIytCTyxpBe2OAs17UkROZkYuHUbJ9dhZ9UIy2NgzW', NULL, 2, 1, '2023-06-07 22:26:48', '2023-06-07 22:26:48'),
(200, 'Hector', 'hrugeles@lvesa.pe', 'Rugeles', '', 'Gerente de produccion / apoderado', 1, '+51966360952', '', '', NULL, '', 2, 156, NULL, '$2y$10$DoZwv289cQsIPb2bP4Du3O98jRRmKj556s6rwRj3XSe7d6T2JBILe', NULL, 2, 1, '2023-06-07 22:31:32', '2023-06-07 22:31:32'),
(201, 'Luis', 'lmolina@mymsecurityaudit.com', 'Molina', 'Marquina', 'Gerente general', 1, '+51974769918', '', '', NULL, '', 2, 157, NULL, '$2y$10$23czq1JSTNlB45UCZPTMPecH5ZF21UFUwsY8r7odg.lIc/aZGZDSS', NULL, 2, 1, '2023-06-07 22:32:57', '2023-06-07 22:32:57'),
(202, 'Fernando', 'fdussan@mab.com.co', 'Dussán', '', 'Gerente de sucursal', 1, '+51925227661', '', '', NULL, '', 2, 158, NULL, '$2y$10$UkWwPbP/7PgJv8TjnHYEw.ieT9YMjiKaXNAyq5B5/SZWySrZTsbW.', NULL, 2, 1, '2023-06-07 23:16:52', '2023-06-07 23:16:52'),
(203, 'Estefanía', 'lrodriguezr@mab.com.co', 'Rodríguez', 'Rubio', 'Coordinador comercial', 2, '+573012337501', '', '', NULL, '', 2, 158, NULL, '$2y$10$jlvzsPGU2zJKd5LjRzWsmunWZaAABAzVVuAqz5mTqA4lSg5tG6P82', NULL, 2, 1, '2023-06-07 23:17:58', '2023-06-07 23:17:58'),
(204, 'Monica', 'mmaccunn@mactransport.com.pe', 'Mac', 'Cunn', 'Gerente general', 2, '+51998111210', '', '', NULL, '', 2, 159, NULL, '$2y$10$xwRUa358li7xZ7h7sStTpOL9qrJfGOCT8eW4PSHuM2qyf6MeGYZjW', NULL, 2, 1, '2023-06-07 23:19:05', '2023-06-07 23:19:05'),
(205, 'Dora', 'sofia.drosos@hilton.com', 'Sofía', 'Drosos', 'Gerente General', 2, '+51960333692 ', '', '', NULL, '', 2, 160, NULL, '$2y$10$RJXzEVrvoVKOhC9/Wb0Uvu6mF.sciG6hmRcz.0MUq513IZpwk2xoe', NULL, 2, 1, '2023-06-07 23:26:21', '2023-06-07 23:26:21'),
(206, 'Heidy', 'heidy.sanchez@hilton.com ', 'Sanchez ', '', 'Gerente de finanzas', 2, '+51934052500', '', '', NULL, '', 2, 160, NULL, '$2y$10$Cuxd2ngF.FNp9yVXPoMcAOJpsndLH9WHRu1nmEa0smq15vNub.DAy', NULL, 4, 1, '2023-06-07 23:27:11', '2023-06-07 23:27:11'),
(207, 'Valeria', 'valeria.uribe@hilton.com ', 'Uribe', '', 'Gerente de RRHH ', 2, '+51934052660', '', '', NULL, '', 2, 160, NULL, '$2y$10$bXTk3Jf6qmqPSbYOWgqDnuOMDx2GtdI8zs3cwTghThU8b.FDp8PfC', NULL, 4, 1, '2023-06-07 23:31:51', '2023-06-07 23:31:51'),
(208, 'Sharon', 'sharon.delrosario@hilton.com', 'del', 'Rosario ', ' Directora de Ventas', 2, '+51934052560', '', '', NULL, '', 2, 160, NULL, '$2y$10$wJXgrqL09Ij4wNcW6L4DfeYn96mNCl72S6ZpG12xKD2fmCnCNR71e', NULL, 2, 1, '2023-06-07 23:32:40', '2023-06-07 23:32:40'),
(209, ' Angelica', 'amgelica.ramirez@hilton.com ', 'Ramirez', '', 'Coordinadora de compras ', 2, '+51972005763', '', '', NULL, '', 2, 160, NULL, '$2y$10$h9j0NBF8uENBFF5ype64l.O65ZrI8It6f7mQf5PymWplJZ60ztSQO', NULL, 4, 1, '2023-06-07 23:33:42', '2023-06-07 23:33:42'),
(210, 'Nicolas', 'nicolasi@marcomkt.com', 'Irreño', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 161, NULL, '$2y$10$xJ4NCa9VVUlqg40GhQnuFe2nxw4oa82HgTOamy47iK.MDTUj.qUgi', NULL, 2, 1, '2023-06-07 23:38:37', '2023-06-07 23:38:37'),
(211, 'Eduardo', 'eduardo.neuhaus@mavev.com', 'Neuhaus', '', 'Gerente General', 1, '+51971269093', '', '', NULL, '', 2, 162, NULL, '$2y$10$BsFi/ryjVPqS9QLuXVi5GuDlsHmt5YB8DhgE7G28PL/YuA6C9Xp2e', NULL, 2, 1, '2023-06-07 23:39:19', '2023-06-07 23:39:19'),
(212, 'Patricio', 'patricio.velasco@mavev.com', 'Velasco', '', 'Gerente de atencion al cliente', 1, '+51960353450', '', '', NULL, '', 2, 163, NULL, '$2y$10$4e6DN/LWr6/FwZuRzHcb3eLq/CEYotX9bBfVBjAeB1SXmYAXRkCBu', NULL, 2, 1, '2023-06-07 23:42:05', '2023-06-07 23:42:05'),
(213, 'Karen', 'karen.ojeda@mcperu.pe', 'Ojeda', '', 'Ejecutivo de Cuentas', 2, '+51936125347', '', '', NULL, '', 2, 163, NULL, '$2y$10$jIZjrgZ2.hJ6bUzAUi7S4.Y5bV3kl0WE1mLfdz7Nk7yeqgVL4qnpC', NULL, 4, 1, '2023-06-07 23:43:16', '2023-06-07 23:43:16'),
(214, 'William', 'william.calderon@mcperu.pe', 'Calderón', 'Trujillo', 'Gerente general', 1, '+51923816392', '', '', NULL, '', 2, 163, NULL, '$2y$10$I.hTq.6ifejaJDc6EERmS.yedzZRkJ7LMYBBtX6qO2zytIcpGSJoC', NULL, 2, 1, '2023-06-07 23:47:39', '2023-06-07 23:47:39'),
(215, 'Denis', 'denis.huerta@mcperu.pe', 'Ken', 'Huerta', 'Director operativo', 1, '+51943324780', '', '', NULL, '', 2, 163, NULL, '$2y$10$loosH1SaNifbLDZULQH/T.Cm.i/YlkGaHCbQVQJVFDgMX6jQ/WDj2', NULL, 2, 1, '2023-06-07 23:48:32', '2023-06-07 23:48:32'),
(216, 'Andrea', 'andrea.lopez@mediacommerce.ec', 'López', 'Loza', 'Coordinador de marketing Ecuador-Perú', 2, '+593984236547', '', '', NULL, '', 2, 163, NULL, '$2y$10$gYFnxfqMQ/sx7NA64JGI0OsHwy.WLc3Zm.QBzYQhidfuRV.pYpZaK', NULL, 4, 1, '2023-06-07 23:54:06', '2023-06-07 23:54:06');
INSERT INTO `users` (`id`, `name`, `email`, `apellido_paterno`, `apellido_materno`, `cargo`, `genero`, `celular_contacto`, `numero_fijo`, `fecha_nac`, `foto`, `lugar_residencia`, `tipo_de_cargo_id`, `empresa_id`, `email_verified_at`, `password`, `remember_token`, `perfil_id`, `flestado`, `created_at`, `updated_at`) VALUES
(217, 'Ambar', 'ambar.alvarez@mcperu.pe', 'Alvarez', 'Calderón', 'Contador', 2, '+51974132550', '', '', NULL, '', 2, 163, NULL, '$2y$10$xfcZk3tjmIuGHTFAwqkVDet6JdvDA1YzDHT7BYdVs.czZimNBIiEq', NULL, 4, 1, '2023-06-08 00:00:00', '2023-06-08 00:00:00'),
(218, 'Natanael', 'natanael.vargas@mcperu.com', 'Vargas', 'Cardoso', 'Coordinador de Proyectos', 2, '+51943680128', '', '', NULL, '', 2, 163, NULL, '$2y$10$VFs2Kbpl4TreEQSsXRwrk.tjN2quNL1aduynG1RGYwHb2TKzfcsMG', NULL, 4, 1, '2023-06-08 00:00:58', '2023-06-08 00:00:58'),
(219, 'Daniel', 'gerencia.peru@metacol.com', 'Pinzón', '', 'Gerente general', 1, '+51986689371', '', '', NULL, '', 2, 164, NULL, '$2y$10$1hfe2NLJm/iBTN0lCZGokeCac1iN9xpvzCuaAXtC3tzUps4eAHR0W', NULL, 2, 1, '2023-06-08 00:02:43', '2023-06-08 00:02:43'),
(220, 'Juan', 'j.guerra@michigancorp.pe', 'Guerra', 'Borrero', 'Director regional', 1, '+51959289048', '', '', NULL, '', 2, 165, NULL, '$2y$10$SWuFsuPB90jOn2SCSPvNcO5vHzD59pTYCiYcw8voZ4pgSkkMTfnUa', NULL, 2, 1, '2023-06-08 00:16:59', '2023-06-08 00:16:59'),
(221, 'Sila', 'contabilidad@notariaespinosa.com', 'Degracia', 'Ortiz', 'Contador', 2, '', '', '', NULL, '', 2, 166, NULL, '$2y$10$cLMTxPvcyOOgfkFZnZy35eqFRx2a/D8C.HRZk/I75RE0xp5Ml7ttC', NULL, 4, 1, '2023-06-08 00:18:07', '2023-06-08 00:18:07'),
(222, 'Miladys', 'mferrua@notariaespinosa.com', 'Ferrua', '', 'Coordinador de créditos y cobranza', 2, '', '', '', NULL, '', 2, 166, NULL, '$2y$10$.ggi7gWg/lEn3/bplDGbdu9yqTGJh6f7c6SFzJUqyYBAox4U6f55.', NULL, 4, 1, '2023-06-08 00:20:22', '2023-06-08 00:20:22'),
(223, 'Jhóselyn', 'jcardenas@notariaespinosa.com', 'Cárdenas', 'Zúñiga', 'Asistente despacho notarial', 2, '+51955322140', '', '', NULL, '', 2, 166, NULL, '$2y$10$91nfQzGOBQdXIaWaY5jVMuo4QkN5xyGxSU7FYZFu3hVCMz03RvHPu', NULL, 2, 1, '2023-06-08 00:21:09', '2023-06-08 00:21:09'),
(224, 'Iraida', 'ijimenez@notariaespinosa.com', 'Jimenez', 'Huamani', 'Asistente contable', 2, '', '', '', NULL, '', 2, 166, NULL, '$2y$10$BVbx14SQvKtAazVUBE7Myu2fP0.4Y5MFQySB1tTgI1kr2wGYuwP.m', NULL, 4, 1, '2023-06-08 00:26:31', '2023-06-08 00:26:31'),
(225, 'Claudia', 'cchavez@notariaespinosa.com', 'Chavez', 'Caceres', 'Gerente legal', 2, '+51955322248', '', '', NULL, '', 2, 166, NULL, '$2y$10$NKEomUWYAVtF9Q0AgCiOC.C8p/kySeydbGS4xIUWeLrNLMZ4LYcPS', NULL, 2, 1, '2023-06-08 00:28:02', '2023-06-08 00:28:02'),
(226, 'Aldo', 'aldo@notariaespinosa.com', 'Espinosa', 'Oré', 'Notario de Lima', 1, '+51981467585', '', '', NULL, '', 2, 166, NULL, '$2y$10$fmk3aSl2JPQNdTA41huJMuZPgdvGzKQmONV72CFHsU7qwCq0abTS2', NULL, 4, 1, '2023-06-08 00:29:27', '2023-06-08 00:29:27'),
(227, 'Omar', 'ocardenas@omarcardenasycia.com', 'Cardenas', '', 'Gerente general', 1, '+51986634439', '', '', NULL, '', 2, 167, NULL, '$2y$10$sFN62dnuyH1TXkrXcGjJJudAMMEZ5YXWnkPOrOebTKZnArf9h/zfm', NULL, 2, 1, '2023-06-08 00:32:36', '2023-06-08 00:32:36'),
(228, 'Romy', 'rvaldez@omarcardenasycia.com', 'Valdez', 'Quintana', 'ADMINISTRADOR', 2, '+51900921327', '', '', NULL, '', 2, 167, NULL, '$2y$10$QAsIMI.IsNXQO9SutCmKj.BMq5.r3HuIVF9TtHKOA6l2aYMuYH8Ga', NULL, 2, 1, '2023-06-08 01:01:25', '2023-06-08 01:01:25'),
(229, 'Marco', 'marcosfdz@omarcardenasycia.com', 'Fernandez', '', 'Asistente de gerencia general', 1, '+51944153232', '', '', NULL, '', 2, 167, NULL, '$2y$10$e3rt.pgiGJSn1CVIDPEp0uxvEi1A2qna7fSqhw.90F1.l7eV2Yjnm', NULL, 4, 1, '2023-06-08 01:07:22', '2023-06-08 01:07:22'),
(230, 'Alejandra', 'alejandra.gallegos@openpay.pe', 'Gallegos', '', 'Head de alianzas', 2, '+51966641404', '', '', NULL, '', 2, 168, NULL, '$2y$10$90H4PzHqZGzPAVeDlNlf9.Yb7pYkgXoBmqyFQlYxdKyWnAEifhpci', NULL, 2, 1, '2023-06-08 02:57:52', '2023-06-08 02:57:52'),
(231, 'Juan', 'juan.giraldo@osctopsolutionsgroup.com', 'Giraldo', 'Cano', 'Gerente general', 1, '', '', '', NULL, '', 2, 169, NULL, '$2y$10$HFcHn3rEVzWVxo5c9QqACuaA8givO5.R9pEgTlaunwWSawJWu1rLm', NULL, 2, 1, '2023-06-08 02:59:42', '2023-06-08 02:59:42'),
(232, 'Richard', 'richard.barrera@osctopsolutionsgroup.com', 'Barrera', '', 'Ejecutivo de Cuentas', 1, '+51996416207', '', '', NULL, '', 2, 169, NULL, '$2y$10$Sa/vlOr27dwtoRgHJZ/Z0OFqVhtmJX5fDc8nqbewHguEMQI4tqHoG', NULL, 2, 1, '2023-06-08 03:02:03', '2023-06-08 03:02:03'),
(233, 'Roberto', 'rcastillo@oviedodanessi.com', 'Castillo', '', 'Asociado', 1, '+51988617146', '', '', NULL, '', 2, 170, NULL, '$2y$10$aHE4eoQJstFlR3rAvk88.ek0fNtvtw9wkI6lOP59/pEmi7G/ziwta', NULL, 2, 1, '2023-06-08 03:08:29', '2023-06-08 03:08:29'),
(234, 'Lilia', 'gerencia@pytgestionesempresariales.pe', 'Plazas', '', 'Gerente general', 2, '+51954747396', '', '', NULL, '', 2, 171, NULL, '$2y$10$0xvYEQ47ZvSaFie7IhCFKut/YVtDnnIpy9RETr7Q.9LUlMFONbw/i', NULL, 2, 1, '2023-06-08 03:09:59', '2023-06-08 03:09:59'),
(235, 'Wilmer', 'wilmer.mejia@profesionalesasociados.pe', 'Canales', '', 'Gerente de administración y finanzas', 1, '+51955205651 ', '', '', NULL, '', 2, 172, NULL, '$2y$10$vL8ebqm.rw1kp1tpcByP2up91IKviZ91A0xKoHwTsrtr5Lw7K0Aam', NULL, 2, 1, '2023-06-08 03:12:00', '2023-06-08 03:12:00'),
(236, 'Justo', 'justo.segovia@profesionalesasociados.pe', 'Segovia', 'Berveño', 'Asistente contable', 1, '+51941504074', '', '', NULL, '', 2, 172, NULL, '$2y$10$Kg6.zVSsL1Lo35pznet5UOy.FVQy.4mmaHhsiVVLjHlf6dsnuXJHO', NULL, 2, 1, '2023-06-08 03:13:51', '2023-06-08 03:13:51'),
(237, 'Hernan', 'hernan.moreno@profesionalesasociados.pe', 'Moreno', '', 'Gerente de T.I', 1, '+51977610821', '', '', NULL, '', 2, 172, NULL, '$2y$10$VWIJeJCWBOg6WvSuYanJ..tq/eVCwS5atkf3wuHnAY4vHbTer/Cr2', NULL, 2, 1, '2023-06-08 03:15:55', '2023-06-08 03:15:55'),
(238, 'Fiorella', 'fiorella.azanero@aghaso.com', 'Azañero', 'Alcala', 'Coordinador de marketing', 2, '+51949093767', '', '', NULL, '', 2, 172, NULL, '$2y$10$AnuAEJg8lvkvw8YZY8U39ufEMlulaEhz429T0X636.Rb2vi7gxa3O', NULL, 2, 1, '2023-06-08 03:16:58', '2023-06-08 03:16:58'),
(239, 'Fabian', 'segundo.tafur@profesionalesasociados.pe', 'Tafur', 'Tacilla', 'Coordinador comercial', 1, '+51936934478', '', '', NULL, '', 2, 172, NULL, '$2y$10$j34OU/fAcPSdtnpTfzZdwurRkDgBYcvbLiLAH3aJgeqNAgP1SqgCm', NULL, 4, 1, '2023-06-08 03:18:02', '2023-06-08 03:18:02'),
(240, 'Carmen', 'carmen.estacio@profesionalesasociados.pe', 'Estacio', '', 'Gerente de talento humano', 2, '+51934897367', '', '', NULL, '', 2, 172, NULL, '$2y$10$8UUj37ozmD2xakYvw2XIZORiL.3f3iG626FfN0NphXypRx8hhOxam', NULL, 2, 1, '2023-06-08 03:19:02', '2023-06-08 03:19:02'),
(241, 'Angela', 'angela.perdomo@profesionalesasociados.pe', 'María', 'Perdomo', 'Gerente general', 2, '+51977610994', '', '', NULL, '', 2, 172, NULL, '$2y$10$Tb4XU.MuE3iIBM4nXSfGuuPIGv.Uddecr2jFIyGHgnqVOMRoAUoc.', NULL, 2, 1, '2023-06-08 03:20:13', '2023-06-08 03:20:13'),
(242, 'Jorge', 'jorge_dibos@hotmail.com', 'Dibos', 'Seligmann', 'Gerente comercial', 1, '+51968746565', '', '', NULL, '', 2, 172, NULL, '$2y$10$BxJWfll2axQCei/Lg.Nshuuxd18bQYQ5lACyg2IY8mhbxxO8QKVfy', NULL, 4, 1, '2023-06-08 03:20:59', '2023-06-08 03:20:59'),
(243, 'Mayra', 'mayra.bareno@profesionalesasociados.pe', 'Bareño', '', 'Coordinadora de compras', 1, '', '', '', NULL, '', 2, 172, NULL, '$2y$10$o7/uBbnuP.0q5CUpgz8mneZHUUCzqYEsvtqI4nIiF.S8m8LP4tCj.', NULL, 2, 1, '2023-06-08 03:21:50', '2023-06-08 03:21:50'),
(244, 'Flavia', 'flavia.abusada@profesionalesasociados.pe', 'Abusada', 'Chehade', 'Gerente legal', 2, '+51955889400', '', '', NULL, '', 2, 172, NULL, '$2y$10$2GOgkHyce2VenNW8evyY4OqBQFPvwhBCBSIc3BYpVON4Opp3w9yfu', NULL, 2, 1, '2023-06-08 03:23:28', '2023-06-08 03:23:28'),
(245, 'Gonzalo', 'gonzalo.aspillaga@parservicios.com', 'Aspillaga', 'Baracco', 'Gerente país', 1, '+51972228038', '', '', NULL, '', 2, 173, NULL, '$2y$10$gKuTNewv25O/9JbwoH1FAuWeoPX7i0TPMowLqB3N4BsFPVxttqm0O', NULL, 2, 1, '2023-06-08 03:32:37', '2023-06-08 03:32:37'),
(246, 'Rafael', 'rafael.bautista@parservicios.com', 'Bautista', 'Santos', 'Líder de operación Colombia', 1, '', '', '', NULL, '', 2, 173, NULL, '$2y$10$lypsdDbvSoasgSe8FyY/p./X5XmbwzQKoBoMU8BMymxC8ZempPipy', NULL, 4, 1, '2023-06-08 03:33:39', '2023-06-08 03:33:39'),
(247, 'Mayra', 'm.manrique@valps.com', 'Manrique', '', 'Contador', 2, '+51974789124', '', '', NULL, '', 2, 173, NULL, '$2y$10$h7kLjbvtbe3EmPi5DIy/1uVMiqwBRzZzjb6ZyDJs2J.1nlzZMyLt2', NULL, 4, 1, '2023-06-08 03:42:06', '2023-06-08 03:42:06'),
(248, 'Manuel', 'enrique@valps.com', 'Perez', 'Suarez', 'Representante legal', 1, '', '', '', NULL, '', 2, 173, NULL, '$2y$10$J0wXj.okCfM0qUx9xqbL.e/VdhpRNeBlUslVlqgE1nDGf9opq./x2', NULL, 4, 1, '2023-06-08 03:44:31', '2023-06-08 03:44:31'),
(249, 'Giovanna', 'g.huaman@valps.com', 'Huaman', '', 'Asistente administrativo', 2, '+51987678454', '', '', NULL, '', 2, 173, NULL, '$2y$10$gWbkXhT/1T.cnJHIBDd.1ejstaY/iyr4uHY8Pbb0UbE5.YR.TQEd6', NULL, 4, 1, '2023-06-08 03:45:29', '2023-06-08 03:45:29'),
(250, 'Alonso', 'alonso.araujo@parservicios.com', 'Araujo', 'Alvarez', 'Gerente comercial', 1, '+51986864419', '', '', NULL, '', 2, 173, NULL, '$2y$10$n5JfGnm6PAW3Esb/KjZALOmwKyPg/pldy6iSTTIDaqVQKCUnrDEh.', NULL, 2, 1, '2023-06-08 03:47:26', '2023-06-08 03:47:26'),
(251, 'Alejandro', 'alejandro.mejia@parservicios.com', 'Mejía', '', 'Gerente general Colombia', 1, '', '', '', NULL, '', 2, 173, NULL, '$2y$10$9M3UF6isDdO4UHnUpIKAeeK9LkAYgSGAPulNUKu3nd6Fl5iZaIAky', NULL, 4, 1, '2023-06-08 03:48:17', '2023-06-08 03:48:17'),
(252, 'Juan', 'juan.cano@paredescano.com', 'Cano', '', 'Socio director', 1, 'Cano', '', '', NULL, '', 2, 174, NULL, '$2y$10$tyo1aYUzgFs/nJ7hhesxc.D8AFacr9oVNIh0szJSUCeFgktcdGVVm', NULL, 2, 1, '2023-06-08 03:49:45', '2023-06-08 03:49:45'),
(253, 'Renzo', 'renzo.cano@paredescano.com', 'Cano', 'Miyahira', 'Socio director / Gerente general', 1, '+51949289751', '', '', NULL, '', 2, 174, NULL, '$2y$10$7Z3VMF8ZcQQUyZYUhHbI0egmgbpDzoiXZrUJCBW9fz1FqNzIEi34i', NULL, 2, 1, '2023-06-08 04:40:02', '2023-06-08 04:40:02'),
(254, 'Gelbert', 'gelbert.serrano@paredescano.com', 'Serrano', '+51997531442', 'Controller Administracion y finanzas', 1, '', '', '', NULL, '', 2, 174, NULL, '$2y$10$m17gfESZXI6OuUMZwK5xmutBZavBv03BnSq263zy6LomwxAT42Yim', NULL, 4, 1, '2023-06-08 04:40:42', '2023-06-08 04:40:42'),
(255, 'Roberto', 'roberto.vargas@paredescano.com', 'Vargas', '', 'Gerente de recursos humanos', 1, '+51993512846', '', '', NULL, '', 2, 174, NULL, '$2y$10$.Whdp3YyO0LLZh6at1mTGu8vI9rLEyf5b3OABP.FM0dZNtKP9GNR6', NULL, 4, 1, '2023-06-08 04:41:42', '2023-06-08 04:41:42'),
(256, 'Brenda', 'brenda.cano@paredescano.com', 'Cano', '', 'Directora de marketing', 2, '+51993512838', '', '', NULL, '', 2, 174, NULL, '$2y$10$NLksiE4GOXeiGOH9Y4rKUO3Ry0bNR5vlRkeCakiuLR2ujqdxe5iYa', NULL, 4, 1, '2023-06-08 04:42:43', '2023-06-08 04:42:43'),
(257, 'David', 'david.suasnabar@paredescano.com', 'Suasnabar', '', 'Gerente de auditoria y operaciones', 1, '+51954777006', '', '', NULL, '', 2, 174, NULL, '$2y$10$d1JzLj6CqQsei.eIGOEhlubhCcy0oEgY6rMqdHhL6S1GG8CB29AhS', NULL, 4, 1, '2023-06-08 04:44:14', '2023-06-08 04:44:14'),
(258, 'María', 'malena.mejia@paredescano.com', 'Mejia', '', 'Gerente de Contabilidad', 1, '+51998244905', '', '', NULL, '', 2, 174, NULL, '$2y$10$VZz4EyMrfuZ0d2MabddPJ.tL2fyNNKWYrxSSZqg7dZ6NHAosDfRgS', NULL, 4, 1, '2023-06-08 04:45:13', '2023-06-08 04:45:13'),
(259, 'Melanie', 'melanie.lopez@paredescano.com', 'López', '', 'Asistente de gerencia', 2, '+51991323142', '', '', NULL, '', 2, 174, NULL, '$2y$10$Ai9WSf70qvMz0iGx6mFoz.6vjg0kfVu2wxJYQD8g0cAhXWV4GZxIm', NULL, 4, 1, '2023-06-08 04:49:13', '2023-06-08 04:49:13'),
(260, 'Guillermo', 'gnieto@pasperusac.com', 'Nieto', '', 'Gerente general', 1, '+51997891041', '', '', NULL, '', 2, 175, NULL, '$2y$10$dx1kd8uMbJbI9UguB/H5W.OZNuClEIRD5tuZx9VX2c1Fx0/qc.Gx2', NULL, 2, 1, '2023-06-08 04:50:55', '2023-06-08 04:50:55'),
(261, 'Mónica', 'mrc@prcp.com.pe', 'Romaní', 'Chocce', 'Gerente general', 2, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$TTU8g177WohMnt713yb5WeMVvx2QZgE1VThtCkmIBEH/saMFauCSK', NULL, 4, 1, '2023-06-08 04:52:47', '2023-06-08 04:52:47'),
(262, 'Karen', 'kal@prcp.com.pe', 'Angeles', 'Llerena', 'Counsel', 2, '+51997501886', '', '', NULL, '', 2, 176, NULL, '$2y$10$uM/vb1WfB8ikNVegddnH/.fCWbAhzEfRZiCPTV4HLsNk9R0LeuMy2', NULL, 2, 1, '2023-06-08 04:53:56', '2023-06-08 04:53:56'),
(263, 'Gerardo', 'gsc@prcp.com.pe', 'Soto', 'Carrillo', 'Socio', 1, '+51997501886', '', '', NULL, '', 2, 176, NULL, '$2y$10$nwpYd0NG9kVPnZiiX3jqxORSEw2DGVa1p3HNjzOwTTg4jDPshf3.2', NULL, 2, 1, '2023-06-08 04:54:46', '2023-06-08 04:54:46'),
(264, 'Palmira', 'pmg@prcp.com.pe', 'Montoya', '', 'Secretaria', 2, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$ldzrBqjk6p0Dh45Rp.XLUuhmm2SENirBdxfLK.iCmZJ/H0T6C2Q/2', NULL, 4, 1, '2023-06-08 04:56:04', '2023-06-08 04:56:04'),
(265, 'Gustavo', 'gra@prcp.com.pe', 'Rojas', '', 'Jefe de Administracion y Finanzas', 1, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$3pu/tcgltkKLW6cQ92ujoOc.xUXnCkHianJ79Yi9qzPCZS91OPe.S', NULL, 4, 1, '2023-06-08 04:56:59', '2023-06-08 04:56:59'),
(266, 'Sandra', 'scd@prcp.com.pe', 'Chacón', '', 'Jefe de RRHH', 2, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$XnWDroR0LdvcGO1MQeH88OVfrUnR0jcILZTK/PIuP/wxngOqXXkX2', NULL, 4, 1, '2023-06-08 04:57:42', '2023-06-08 04:57:42'),
(267, 'Paul', 'pmb@prcp.com.pe', 'Manrique', '', 'Jefe comercial', 1, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$Y5n5Rh/cUbPXNgEiDu54.OFuN4bYSUO2GxivnKwB3jN996NNAKWXG', NULL, 4, 1, '2023-06-08 04:58:34', '2023-06-08 04:58:34'),
(268, 'Mónica', 'facturacion@prcp.com.pe', 'Romaní', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 176, NULL, '$2y$10$HwO8vk6w01znok3vMOoq5e9YyWDrz7dgF7V3OqNZ4a6ahoSu1.1gq', NULL, 4, 1, '2023-06-08 04:59:23', '2023-06-08 04:59:23'),
(269, 'Jhojan', 'jcastano@pedelta.com.pe', 'Castaño', '', 'Jefe de Proyectos', 1, '+51977501235', '', '', NULL, '', 2, 177, NULL, '$2y$10$n3suhdE3On.SaMOKv9lPneyHV053nB8S2zIZUpNEE8sAJB63LrUY2', NULL, 2, 1, '2023-06-08 05:02:58', '2023-06-08 05:02:58'),
(270, 'Kevin', 'kcoral@pedelta.com.pe', 'Coral', '', 'Gerente General', 1, '+51972607300', '', '', NULL, '', 2, 177, NULL, '$2y$10$LyI4emGpPiUXuC9BvMZ81uSzimJRsub58RA6m.h7L7N0bjd9lOPYm', NULL, 2, 1, '2023-06-08 05:03:49', '2023-06-08 05:03:49'),
(271, 'Liset', 'contabilidad@pertel.pe', 'Carhuancho', '', 'Asistente contable', 2, '', '', '', NULL, '', 2, 205, NULL, '$2y$10$wvuYw514IPyCWX2HDSrpe.uDRxRjI/ixML3l.2Ax0DNI.sSSCHQ8i', NULL, 4, 1, '2023-06-08 05:09:29', '2023-06-08 05:09:29'),
(272, 'José', 'jleon@pertel.pe', 'León', '', 'Gerente general', 1, '+51997937931', '', '', NULL, '', 2, 205, NULL, '$2y$10$6j4ydnt2zgrekdaDRYI9u.PvVaPPpucDmVq4BCM/QpiHNPTgdkEei', NULL, 4, 1, '2023-06-08 05:10:35', '2023-06-08 05:10:35'),
(273, 'Eduardo', 'edpertuz@pertel.pe', 'Pertuz', '', 'Gerente comercial', 1, '+51980525957', '', '', NULL, '', 2, 205, NULL, '$2y$10$iHdUHh0nQt8SSol6FA82nuT2iYc5CR.dcnWNTpdNkJuugKHGTQaie', NULL, 2, 1, '2023-06-08 05:12:19', '2023-06-08 05:12:19'),
(274, 'Bibiana', 'bgamboa@pertel.pe', 'Gamboa', 'Gomez', 'Director - Gerente de marketing', 2, '+51966451969', '', '', NULL, '', 2, 205, NULL, '$2y$10$iXLYqV5xWz2O61781zrG9eQ4yJ6AHeQa2F0okbr9R8p8suDy3YmFe', NULL, 2, 1, '2023-06-08 05:13:01', '2023-06-08 05:13:01'),
(275, 'Karina', 'karina.aguero@liverita.com', 'Agüero', 'Ramirez ', 'Recursos humanos y Asistente de gerencia', 2, '+51940863603 ', '', '', NULL, '', 2, 178, NULL, '$2y$10$cfM19X2sSnqQqxZtBiYN.ecNEt842z2iPHCpgfTsVcFqRcwtAH1MG', NULL, 4, 1, '2023-06-08 05:14:35', '2023-06-08 05:14:35'),
(276, 'Carolina', 'carolina.hurtado@liverita.com', 'Hurtado', '', 'Gerente General', 2, '+51970383040', '', '', NULL, '', 2, 178, NULL, '$2y$10$fP2NNbRufBxenxmoHlUIPumT2C7yS/6MA4455GL34htTvaEM3U2CC', NULL, 2, 1, '2023-06-08 05:15:22', '2023-06-08 05:15:22'),
(277, 'Angello', 'angello.marquina@liverita.com ', 'Marquina', 'Callirgos ', 'Gerente Ejecutivo ', 1, '+51970383033', '', '', NULL, '', 2, 178, NULL, '$2y$10$OTheVtfulWRhm0xynUV2E.LFo9CiGLQXx6Mtl8jdQlmiSW.AAo8iS', NULL, 4, 1, '2023-06-08 05:19:16', '2023-06-08 05:19:16'),
(278, 'Wendy', 'finanzas@liverita.com', 'Yamunaque ', '', 'Gerenta de Finanzas', 1, '', '', '', NULL, '', 2, 178, NULL, '$2y$10$sgjnqo0EI2DQXWXE3ikPAuPVoQTO83bQAQvvJX47oSzHWsnHZjkaS', NULL, 4, 1, '2023-06-08 05:20:00', '2023-06-08 05:20:00'),
(279, ' Ricardo', 'ricardo.calderon@liverita.com ', 'Calderon', '', 'Jefe Comercial ', 1, '', '', '', NULL, '', 2, 178, NULL, '$2y$10$duwrL0YvCO5q.zKuatERyOf9zK1T9MztF.tsMpxWhyk7npJdZxfea', NULL, 4, 1, '2023-06-08 05:20:58', '2023-06-08 05:20:58'),
(280, 'Mayra', 'marketing1.pe@liverita.com ', 'Taboada ', '', 'Marketing', 1, '', '', '', NULL, '', 2, 178, NULL, '$2y$10$Kb3mUQfEVHZFlxGp36iNaORsK0aiftkOd6qN0RZK83xTKR3lLMNoS', NULL, 4, 1, '2023-06-08 05:22:16', '2023-06-08 05:22:16'),
(281, 'Heber', 'operaciones1@liverita.com ', 'Melendez ', '', 'Jefe de Operaciones', 1, '', '', '', NULL, '', 2, 178, NULL, '$2y$10$ukz8MhYWNmsbGL8B28kr/OisboFcp5rJg3v4Oi.1Ugsfca9i47WSC', NULL, 4, 1, '2023-06-08 05:23:40', '2023-06-08 05:23:40'),
(282, 'Yonny', 'yonnyrl@perumasivo.com', 'Rojas', '', 'Gerente de mantenimiento  ', 1, '+51987988257 ', '', '', NULL, '', 2, 179, NULL, '$2y$10$qNviNpcTZTQcMuYXTYUkV.nyKDK5synKZ1Gdo82ylFqP/Edj9NET2', NULL, 4, 1, '2023-06-08 05:26:51', '2023-06-08 05:26:51'),
(283, 'Rolando', 'rolandorg@perumasivo.com', 'Ramirez', '', 'Gerente de T.I', 1, '+51940493471', '', '', NULL, '', 2, 179, NULL, '$2y$10$9tNQBeuiKuEBBhgzjcMvluNv1HTuL7tXr.eCceNGq8omAlUnsOUvW', NULL, 4, 1, '2023-06-08 05:32:02', '2023-06-08 05:32:02'),
(284, 'Oscar', 'oscarvg@perumasivo.com', 'Vanegas', 'Guzmán', 'Gerente general', 1, '', '', NULL, NULL, NULL, 2, 179, NULL, '$2y$10$l4HoeIBmVnnqxYCgIODjxeRc/ik2T.y6v.YdztRruKh9mdkmy8DE6', NULL, 2, 1, '2023-06-08 05:32:59', '2023-06-10 20:39:33'),
(285, 'Liz', 'lizss@perumasivo.com', 'Silverio', '', 'Asistente tesorería', 1, '', '', '', NULL, '', 2, 179, NULL, '$2y$10$bVTmWvrP6z88Mc.7STYImu6/G0kvLOXLDuC5avyvRNz7aEihaytYa', NULL, 4, 1, '2023-06-08 05:34:05', '2023-06-08 05:34:05'),
(286, 'Jorge', 'jorgepo@perumasivo.com', 'Portugal', '', 'Gerente de operaciones', 1, '+51982854241', '', '', NULL, '', 2, 179, NULL, '$2y$10$ZrAW6lsKgQKaicYQSolTlejJyTQ/7URTobHAgazsMLKmw88Z/27ee', NULL, 4, 1, '2023-06-08 05:37:33', '2023-06-08 05:37:33'),
(287, 'Geraldine', 'gespinoza@perumasivo.com', 'Espinoza', '', 'Jefe de tesorería', 2, '+51965403068', '', '', NULL, '', 2, 179, NULL, '$2y$10$XwwiE8o6GN310UqgxjGSseiZXTBzXztGBtSrxjh3DjFT5dbfaXxLu', NULL, 4, 1, '2023-06-08 05:39:03', '2023-06-08 05:39:03'),
(288, 'Fiorella', 'mishellerr@perumasivo.com', 'Ruiz', 'Ríos', 'Analista de T.I', 2, '+51990187112', '', '', NULL, '', 2, 179, NULL, '$2y$10$zIzKkBtTf2q7DrFniQp1h.JUUAeyjBOd78R5S5anDukUmwT84XAiO', NULL, 4, 1, '2023-06-08 05:42:15', '2023-06-08 05:42:15'),
(289, 'Federico', 'federicoma@perumasivo.com', 'Mendoza', 'Alarcon', 'Gerente de talento humano', 1, '+51983321935', '', '', NULL, '', 2, 179, NULL, '$2y$10$nGhCJ5tszo/RgQhbza4wxuJpRmLmVzQHNy1KrGCr0nyefHw34K5vi', NULL, 4, 1, '2023-06-08 05:45:24', '2023-06-08 05:45:24'),
(290, 'Estefanía', 'estefaniabh@perumasivo.com', 'Berastaín', '', 'Abogado', 2, '+51987571461', '', '', NULL, '', 2, 179, NULL, '$2y$10$XLLg1as9tBqhn/nMmZv4Z.N0uCsq7pT7jsRIPyyRdJXgkit1LEx16', NULL, 4, 1, '2023-06-08 05:47:55', '2023-06-08 05:47:55'),
(291, 'Beth', 'bethbs@perumasivo.com', 'Blass', '', 'Gerente de administración y finanzas', 1, '+51999407058', '', '', NULL, '', 2, 179, NULL, '$2y$10$VG6WV/Ndjzyda9pEgXv2U.valkdWIIofrb7HYSdS2/Je1UHhadOAi', NULL, 4, 1, '2023-06-08 05:48:49', '2023-06-08 05:48:49'),
(292, 'Luisa', 'luisa.osorio@plataforma.com.co', 'Osorio', '', 'Gerente General', 2, '+51999068298', '', '', NULL, '', 2, 180, NULL, '$2y$10$U3dWzktKZ7V81ZC0lBN0Lu0iLHkYe/itXkEZ9VW9KcjdUv6posKu.', NULL, 2, 1, '2023-06-08 05:51:36', '2023-06-08 05:51:36'),
(293, 'Sandra', 'sandra.gutierrez@globalcircuit.co', 'Gutierrez', '', 'Director de responsabilidad social empresarial', 2, '+51920078635', '', '', NULL, '', 2, 181, NULL, '$2y$10$W6hWPCLPof5bAkAG6P83F.5QCuGASHnfaYR.0lJI6kMWsvIBgAAZ2', NULL, 4, 1, '2023-06-08 05:58:02', '2023-06-08 05:58:02'),
(294, 'Diego', 'diego.velasco@prisontec.com', 'Velasco', 'Cabrera', 'Gerente de T.I', 1, '+51920078615', '', '', NULL, '', 2, 181, NULL, '$2y$10$5pKhSNSqL0dY74QQD.RRMuhHoWlKw.2w0YyZP47Gl6nMdigwbWqVi', NULL, 2, 1, '2023-06-08 05:59:20', '2023-06-08 05:59:20'),
(295, 'Augusto', 'augusto.fernandez@prisontec.com', 'Fernandez', '', 'Gerente general', 1, '+51988626803', '', '', NULL, '', 2, 181, NULL, '$2y$10$4QbKkmFsytKsrLeE8p3U0.sosLamsxLZwg7THr8S4RMmuSgZBcWGm', NULL, 4, 1, '2023-06-08 06:00:38', '2023-06-08 06:00:38'),
(296, 'Carmelys', 'carmelys.lugo@libertadenmiprision.org', 'Lugo', '', 'Coordinadora de marketing', 2, '+51966193153', '', '', NULL, '', 2, 181, NULL, '$2y$10$IXgw0jVCY2W8JBtUPp7Sb.ZJrp0bSUNwOKAev2huBG/.YBTYEwxP2', NULL, 4, 1, '2023-06-08 06:05:34', '2023-06-08 06:05:34'),
(297, 'Miguel', 'miguel.maal@promigas.pe', 'Maal', 'Pacini', 'Gerente general', 1, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$KQSxvpRJ9cOu70tkuHJxxeCPlfO9kNvP0eYEAkTrRNVn9q48Bg/XG', NULL, 2, 1, '2023-06-08 16:41:01', '2023-06-08 16:41:01'),
(298, 'Maria', 'maria.hinojosa@promigas.pe', 'Hinojosa', 'Morales', 'Asistente administrativo de gerencia', 2, '+51943884143', '', '', NULL, '', 2, 182, NULL, '$2y$10$qnDIOZssIcdJ4MSOJ0c1FejWWsdKx..FjLof7UPXUeZ2FcM2CkFfy', NULL, 4, 1, '2023-06-08 16:41:45', '2023-06-08 16:41:45'),
(299, 'Luis', 'luis.mannucci@promigas.pe', 'Mannucci', 'Rebaza', 'Coordinador de logística', 1, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$qE1t3a/yNOrEHGN5C4vMguTNfvzXNbQfG9Vs0/CHeLcgOLzO4rvzW', NULL, 4, 1, '2023-06-08 16:42:24', '2023-06-08 16:42:24'),
(300, 'Jaime', 'jaime.diazgranados@promigas.com', 'Granados', 'Stapel', 'Gerente de administración y finanzas', 1, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$noBW0aQwkFC7NMj.8RYnWOwg8tS8xp0OfsEox9w9gmzNpEiWjuWK.', NULL, 4, 1, '2023-06-08 16:43:04', '2023-06-08 16:43:04'),
(301, 'Ever', 'ever.diaz@promigas.pe', 'Diaz', 'Acosta', 'Gerente de Operaciones', 1, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$4WfCRaUS.U0NeVw3N/qOL.DIeEKs5WRGWPowbAlPX2rQF7J6yTF0i', NULL, 4, 1, '2023-06-08 16:43:43', '2023-06-08 16:43:43'),
(302, 'Darlyn', 'darlyn.bayona@gascop.com.pe', 'Bayona', 'Vilchez', 'Analista de obras', 2, '+51940190753', '', '', NULL, '', 2, 182, NULL, '$2y$10$xQulZvWm0H0QV7q7ykX6luejYJeXC4LA4a08SEeDWxwiV6AaeOGPa', NULL, 4, 1, '2023-06-08 16:44:29', '2023-06-08 16:44:29'),
(303, 'Carina', 'carina.ortega@promigas.pe', 'Ortega', 'Uribe', 'Gerente de talento humano', 2, '+51987939093', '', '', NULL, '', 2, 182, NULL, '$2y$10$P.mTT6c59uPduvt4dZME.eq/u0BmNhz0rKk938EKWd.FfiojGt9bm', NULL, 2, 1, '2023-06-08 16:45:15', '2023-06-08 16:45:15'),
(304, 'Alexandra', 'alexandra.boero@promigas.pe', 'Boero', 'Razetto', 'Gerente corporativa', 2, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$RO1Jh5U75VSUwxkJamZmm.hKAsnduMlhvE.W0QNqghwzfeswXAApS', NULL, 4, 1, '2023-06-08 16:45:56', '2023-06-08 16:45:56'),
(305, 'Gabriela', 'gabriela.pinillos@promigas.pe', 'Pinillos', '', 'Asistente administrativo', 2, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$X.mIhyiGuT6NmV/RlDTPweT/2VBMpvDqxm7Pqs6WOqVDhZTu4c9g2', NULL, 4, 1, '2023-06-08 16:46:35', '2023-06-08 16:46:35'),
(306, 'Rafael', 'rafael.bustamante@promigas.pe', 'Bustamante', 'Mendoza', 'Jefe de proyectos y mantenimiento', 1, '', '', '', NULL, '', 2, 182, NULL, '$2y$10$fZ2rOeNjChoSDPzldGuOcOXF3/BHFELg9rTn.6WOpu6llDLrWEJ1a', NULL, 4, 1, '2023-06-08 16:47:59', '2023-06-08 16:47:59'),
(307, 'Nikolai', 'nikolai.alvarez@promigas.pe', 'Alvarez', 'Cartagena', 'Comunicaciones y mercadeo', 2, '+51940232294', '', '', NULL, '', 2, 182, NULL, '$2y$10$62j93pwK1J2eo/tT7QOJ1uYmfl98RVJdxIXgbgozJsUMO878BM0A.', NULL, 4, 1, '2023-06-08 16:48:48', '2023-06-08 16:48:48'),
(308, 'Leydi', 'lrodriguez@proyectat.co', 'Rodríguez', 'Serna', 'Gerente Davida Gerencial Ltda', 2, '+573183811658', '', '', NULL, '', 2, 183, NULL, '$2y$10$yautS7r1HnNP377.QhaczucZLOH8yiDysJ3HtbVYTN0RS8AvxIDiu', NULL, 2, 1, '2023-06-08 16:49:35', '2023-06-08 16:49:35'),
(309, 'Sheyla', 'vanessa.carpio@ppspiping.com', 'Carpio', 'Cuadros', 'Representante legal', 2, '', '', '', NULL, '', 2, 184, NULL, '$2y$10$vAee.OxtGphGBALKyZQotubAZIlONfSWVJOARe9Zo.9P.e.mQxpeu', NULL, 2, 1, '2023-06-08 16:50:36', '2023-06-08 16:50:36'),
(310, 'Eduardo', 'eduardo.vera@ppspiping.com', 'Vera', 'Huaco', 'Gerente de ventas', 1, '+51993757006', '', '', NULL, '', 2, 184, NULL, '$2y$10$pS9J02SVXWW3PMQ9xeWW6.7cuB7rUIRz8sPHSLkOZ7jK98ZJybeSu', NULL, 2, 1, '2023-06-08 16:51:35', '2023-06-08 16:51:35'),
(311, 'Patricia', 'patty-rodriguezp@hotmail.com', 'Rodríguez', 'Piedra', 'Gerente general', 2, '+51941351684', '', '', NULL, '', 2, 185, NULL, '$2y$10$JivGo3aQD4WU8fwE7Sd4GOMvjwU4Z1Uq/QpH/HbyAWiu20Vwswcha', NULL, 2, 1, '2023-06-08 16:52:35', '2023-06-08 16:52:35'),
(312, 'Nicolle', 'nicollemongilardir95@gmail.com', 'Mongilardi', 'Rodríguez', 'Coordinadora de marketing / RRHH / Comercial', 2, '+51991656706', '', '', NULL, '', 2, 185, NULL, '$2y$10$TGSy.rP.2k4eL9UrFbwYy.bVsqodyMBYaAUIvxea0a4cqZptsn3Q2', NULL, 2, 1, '2023-06-08 16:53:25', '2023-06-08 16:53:25'),
(313, 'María', 'finanzas.publi.plus@gmail.com', 'Espinoza', 'Ibañez', 'Administración y finanzas / Logística', 2, '+51945692555', '', '', NULL, '', 2, 185, NULL, '$2y$10$fzdzZqV8DnwW1ITa2ipurucGziXNECGyiTR2PfJJLTEfWLlee0vBW', NULL, 4, 1, '2023-06-08 16:54:10', '2023-06-08 16:54:10'),
(314, 'Sandra', 'sandra.ocampo@gerfor.com', 'Ocampo', 'Carrasquilla', 'Asistente de Soporte Administrativo', 2, '', '', '', NULL, '', 2, 186, NULL, '$2y$10$uy.HRb0S0SOOPwBNjvC5uuNguaLeaWshHW05qJ9xubPnW.o/ooqKK', NULL, 4, 1, '2023-06-08 16:55:29', '2023-06-08 16:55:29'),
(315, 'Evelyn', 'evelyn.baque@gerfor.com', 'Baque', 'Guevara', 'Coordinadora de Compras y Comercio Exterior', 2, '', '', '', NULL, '', 2, 186, NULL, '$2y$10$9iVMOKL1Ya.Q8r5OQRr/7eFWmbjtiNpHFSl6ZWcoaSgTnQPzWWVtC', NULL, 2, 1, '2023-06-08 16:58:18', '2023-06-08 16:58:18'),
(316, 'Andrés', 'andres.osorio@gerfor.com', 'González', '', 'Representante Legal/Gerente País', 1, '', '', '', NULL, '', 2, 186, NULL, '$2y$10$zLWuf.LqtsXwS5PpA9MPQO2tjoGpqlqIMHG7n4eaE554CdQHM/Gza', NULL, 2, 1, '2023-06-08 16:59:04', '2023-06-08 16:59:04'),
(317, 'Susana', 'susana.juarez@gerfor.com', 'Juárez', 'Chujutalli', 'Coordinadora de Gestión Humana', 2, '+51922667203', '', '', NULL, '', 2, 186, NULL, '$2y$10$eveQRhmH6.w2AKiaQUWgbe6g1uj1QcFNZ4yXna2reHBZTHp4sF49S', NULL, 4, 1, '2023-06-08 17:02:27', '2023-06-08 17:02:27'),
(318, 'Sheyla', 'sheyla.castro@gerfor.com', 'Castro', 'Carrillo', 'Administradora de Ventas', 2, '+51949070262', '', '', NULL, '', 2, 186, NULL, '$2y$10$vkMpLTBdWcM6ugyianH2kOsjb3y2SsjkqihoF9GLvcBHbjgske0eu', NULL, 4, 1, '2023-06-08 17:03:55', '2023-06-08 17:03:55'),
(319, 'Bruce', 'bruce.ycanaque@gerfor.com', 'Ycanaque', 'Vargas', 'Jefe de Distribución', 1, '+51981303064', '', '', NULL, '', 2, 186, NULL, '$2y$10$OaUrbdOvhAzU64sFfKLVjuWAEoJQj.iIlcXUEmTSl/2wiZxJZ8/5i', NULL, 4, 1, '2023-06-08 17:04:40', '2023-06-08 17:04:40'),
(320, 'Marco', 'marco.pineda@gerfor.com', 'Pineda', 'Velasque', 'Director de Administración y Finanzas', 1, '+5151997377146', '', '', NULL, '', 2, 186, NULL, '$2y$10$wgNmvcELjs9xA.cvb4Q9EORjEbjmFc9uZ8ybU6BSt9KbrmyOuxurW', NULL, 4, 1, '2023-06-08 17:07:39', '2023-06-08 17:07:39'),
(321, 'David', 'david.hernandez@gerfor.com', 'Hernández', 'Cuevas', 'Gerente General', 1, '', '', '', NULL, '', 2, 186, NULL, '$2y$10$YKKkqKjcPjIk4KpEqZVzBOgyCWwq9XH7T67OauzpJa9iarQ7PVonS', NULL, 2, 0, '2023-06-08 17:09:04', '2023-09-19 18:53:06'),
(322, 'María', 'mbecerra@quala.com.pe', 'Becerra', 'Ramirez', 'Gerente de talento humano', 2, '+51945058929', '', NULL, NULL, NULL, 2, 187, NULL, '$2y$10$Iuniy6KQ5NZiBsSB7iHu0eL3wp19TZSMXNIcoc.fN/hTtdTxiNZVS', NULL, 2, 1, '2023-06-08 17:52:47', '2023-06-10 20:45:52'),
(323, 'Felipe', 'fbernal@quala.com.pe', 'Bernal', '', 'Gerente General', 1, '', '', '', NULL, '', 2, 187, NULL, '$2y$10$0UVeX7wV/GEvKyp6gIorg.wFk7p6rkCDJMtDCQ.6OVMuz/v7uouyG', NULL, 2, 1, '2023-06-08 17:55:11', '2023-06-08 17:55:11'),
(324, 'Ernesto', 'erebosio@quala.com.pe', 'Rebosio', 'Garay', 'Ingeniero de soluciones y tecnología', 1, '+51943725917', '', '', NULL, '', 2, 187, NULL, '$2y$10$BC6nRHUK0agnkH2c0.WVGuHoc/Y3xB6.RCLvcjlaKWAcsHQ2XFAyS', NULL, 4, 1, '2023-06-08 17:55:55', '2023-06-08 17:55:55'),
(325, 'Carla', 'cacostac@quala.com.pe', 'Acosta', 'Camino', 'Analista de marca', 2, '+51987980067', '', '', NULL, '', 2, 187, NULL, '$2y$10$wxK9lGy17.cF4QMtSusbWeeN4nLAoFqkWCDhQwS/9nQaNnCcX3k96', NULL, 4, 1, '2023-06-08 17:56:42', '2023-06-08 17:56:42'),
(326, 'Yazmin', 'yazmin.acevedo@spira.pe', 'Acevedo', '', 'Gerente de Operaciones', 2, '', '', '', NULL, '', 2, 188, NULL, '$2y$10$6Be1krzpJG9YyTjw.Esu7Oi5fEsnlhnPmNj/boj6NqqxdbiIQV48.', NULL, 4, 1, '2023-06-08 17:57:28', '2023-06-08 17:57:28'),
(327, 'Nicolas', 'nicolas.solorzano@spira.pe', 'Solorzano', 'Isaacs', 'Director general', 1, '+51989192333', '', '', NULL, '', 2, 188, NULL, '$2y$10$9j98tx5rwCk6g89PaIb.oOB11Wwnn047LyrKSFENUkhzDY.ytRJ0e', NULL, 2, 1, '2023-06-08 18:00:11', '2023-06-08 18:00:11'),
(328, 'Nataly', 'administracion@spira.pe', 'Ortiz', 'Benavides', 'Asistente de gerencia', 2, '+51964310874', '', '', NULL, '', 2, 188, NULL, '$2y$10$qBzHc7mwAkkH3/alJW2rFOEVMvylGA7pzbpg5IEv7Je1iWFvUSCEG', NULL, 4, 1, '2023-06-08 18:00:55', '2023-06-08 18:00:55'),
(329, 'Sara', 'suribe@rep.com.pe', 'Uribe', '', 'Gerente de talento humano', 2, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$onBXrJ3zhEc.M.TGGNSEOOPatzSQbBd1QdcLWiIFcyyIjIS4p4QDK', NULL, 4, 1, '2023-06-08 18:02:11', '2023-06-08 18:02:11'),
(330, 'Gonzalo', 'gmaya@rep.com.pe', 'Maya', 'Agudelo', 'Gerente de finanzas', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$Tu9JaY694UFmMf9Uv7zqMO/bbLLvwGt6g1pHMB0luMnHFdRf2y13O', NULL, 4, 1, '2023-06-08 18:04:09', '2023-06-08 18:04:09'),
(331, 'Milagros', 'mcoronel@rep.com.pe', 'Coronel', '', 'Especialista de bienestar y salud ocupacional', 2, '+51989307595', '', '', NULL, '', 2, 189, NULL, '$2y$10$kp1B2L4AUEoBWcvGQLFzEuJ4O6ht0j5/JakdZyGTc5tTJTB2kxfPm', NULL, 4, 1, '2023-06-08 18:06:04', '2023-06-08 18:06:04'),
(332, 'Maria', 'mcieza@rep.com.pe', 'Jose', 'Cieza', 'Especialista de desarrollo del talento', 2, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$f98OuGGloYR3j2WswADTyOsTEaNUAWrfrthob0odwOkz9m1u18O.6', NULL, 4, 1, '2023-06-08 18:07:13', '2023-06-08 18:07:13'),
(333, 'Jose', 'jjaramillo@rep.com.pe', 'Jaramillo', 'Vallejo', 'Gerente de administración y finanzas', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$tBOhDx5EZTqGjbVLxEX9NeVspdGXkEG5DKdeSz84dst3BCG.Hz4be', NULL, 4, 1, '2023-06-08 18:09:00', '2023-06-08 18:09:00'),
(334, 'Jorge', 'j.jirao@rep.com.pe', 'Jirao', '', 'Especialista soluciones de software', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$BsPX72UGNFQycUwK9CSgxOSGVdKNRF5/oAOFkzvWUN/jHLaosiT4W', NULL, 2, 1, '2023-06-08 18:11:17', '2023-06-08 18:11:17'),
(335, 'Joel', 'jvidalon@rep.com.pe', 'Vidalón', 'Cueva', 'Contador', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$QOpG/F.UjAjezJbDRbIHxO2vBdRLTDb0mDG1JXsRV33RSVSzkE5wC', NULL, 4, 1, '2023-06-08 18:20:56', '2023-06-08 18:20:56'),
(336, 'Edwin', 'ebazan@rep.com.pe', 'Bazán', '', 'Representante Arequipa', 1, '+51940372876', '', '', NULL, '', 2, 189, NULL, '$2y$10$HG1pMDL7uhfaD34aAKnqzeJNYEmuKamtBM5BPnEHmw0eo9ZKi4PZG', NULL, 4, 1, '2023-06-08 18:51:38', '2023-06-08 18:51:38'),
(337, 'Cecilia', 'ctagata@rep.com.pe', 'Tagata', '', 'Gerente de sostenibilidad, comunicaciones e imagen', 1, '+51989307574', '', '', NULL, '', 2, 189, NULL, '$2y$10$gdoQW.M8m9kFspvu9Er3EOT0NRASmKSR6J4/50bU5IPz9bar1XA/W', NULL, 4, 1, '2023-06-08 18:52:35', '2023-06-08 18:52:35'),
(338, 'Adriana', 'aportella@rep.com.pe', 'Portella', 'del Carpio', 'Asistente de gerencia', 2, '+51976235527', '', '', NULL, '', 2, 189, NULL, '$2y$10$2AyEasxjBIJoEhCrIEQXt..r9O4mlokvE9WbPHq227PbbEACCuHH2', NULL, 4, 1, '2023-06-08 18:57:16', '2023-06-08 18:57:16'),
(339, 'Jorge', 'jlafitte@rep.com.pe', 'Lafitte', '', 'Sub Gerente de Operaciones', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$t0WncUWRnuE9IDG1BhOtYu7EY21LqrNg4kx59bx5rqVaZYEtUuJeC', NULL, 4, 1, '2023-06-08 19:01:11', '2023-06-08 19:01:11'),
(340, 'Kernick', 'kruiz@rep.com.pe', 'Ruiz', '', 'Sub Gerente de Gestión de Mantenimiento', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$l28a2ODLFIoYA4hYxSaDOe0SzO5UzktrMIOLwsHIDGlPLCuWUmB5u', NULL, 4, 1, '2023-06-08 19:03:22', '2023-06-08 19:03:22'),
(341, 'Cristian', 'caremolina@rep.com.pe', 'Remolina', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 189, NULL, '$2y$10$CFwPDGm4hyQ6v5f0WVM7p.5qlCqU1vSkjutAA/iMwQfSHkmZJFDfm', NULL, 2, 1, '2023-06-08 19:04:04', '2023-06-08 19:04:04'),
(342, 'Raul', 'raul.sulca@servientrega.com', 'Sulca', 'Yñonan', 'Lider de modelo S - Sostenibilidad', 1, '+51924129347', '', '', NULL, '', 2, 190, NULL, '$2y$10$6kZKduT7A6vxrq9Pt8oOOe/9rPZ1A8ihloNNKY3a5eZS1KW9a6b/.', NULL, 4, 1, '2023-06-08 19:05:07', '2023-06-08 19:05:07'),
(343, 'Grisel', 'relacioneslaborales@servientrega.com', 'Sanchez', 'Quezada', 'Lider de relaciones laborales', 2, '+51992734141', '', '', NULL, '', 2, 190, NULL, '$2y$10$7kAVbBpJZBANzd3vAD.uueedsR/d/mbtEVExcL5CqhbgIMvvQsM/C', NULL, 4, 1, '2023-06-08 19:06:11', '2023-06-08 19:06:11'),
(344, 'Gertrudis', 'gertrudis.valenzuela@servientrega.com', 'Damisela', 'Valenzuela', 'Contador', 2, '+51914690712', '', '', NULL, '', 2, 190, NULL, '$2y$10$/ILAtc6bpI7d/kzBFDKpi.CzIoGdmLG15tyfdo.s09IzQSFxtU2B2', NULL, 2, 1, '2023-06-08 19:07:04', '2023-06-08 19:07:04'),
(345, 'David', 'david.fuertes@servientrega.com', 'Fuertes', 'Benites', 'Gerente de gestion humana', 1, '+51948536712', '', '', NULL, '', 2, 190, NULL, '$2y$10$SdZiUfmeqSMN9wCWMn5m8Oz9eJ8xmuBfJRJh4FGpfrB54sisHQaiu', NULL, 4, 1, '2023-06-08 19:08:46', '2023-06-08 19:08:46'),
(346, 'Belisa', 'belisa.herrera@servientrega.com', 'Herrera', '', 'Gerente general', 2, '+51949936047', '', '', NULL, '', 2, 190, NULL, '$2y$10$qdtuB01zRaYFeFkDgYabH.M.hQv02RldKsud8kTtIxFfBN8Hjua/q', NULL, 2, 1, '2023-06-08 19:10:36', '2023-06-08 19:10:36'),
(347, 'Karolyn', 'karolyne.canta@servientrega.com', 'Canta', '', 'Facilitador comercial de soluciones logísticas', 2, '+51990437860', '', '', NULL, '', 2, 190, NULL, '$2y$10$U0otrdUdjbAEVRCK6AmSW.4OW3HLa6AsyV4VCVemNXra4yb7xQi1S', NULL, 4, 1, '2023-06-08 19:11:22', '2023-06-08 19:11:22'),
(348, 'Judith', 'jloa@ruizrodriguezcia.com', 'Loa', '', 'Asistente de Gerencia', 2, '+51994726104 ', '', '', NULL, '', 2, 191, NULL, '$2y$10$cU.fkAgO4Bn2QYTY5UsSFeu9.V1zR1YHsuUAPeVBbv0hMn0avTbD6', NULL, 4, 1, '2023-06-08 19:20:09', '2023-06-08 19:20:09'),
(349, 'Helga', 'hparedes@ruizrodriguezcia.com', 'Paredes', '', 'Administrador', 1, '+51987400467', '', '', NULL, '', 2, 191, NULL, '$2y$10$r7h9ItxGY34EFP.g5o8DQuh1bjlCTSw3G4rMZDv583COrn5BO.huy', NULL, 4, 1, '2023-06-08 19:21:09', '2023-06-08 19:21:09'),
(350, 'Alvaro', 'aruiz@ruizrodriguezcia.com', 'Ruiz', 'Rodríguez', 'Gerente general', 1, '+51994398329', '', '', NULL, '', 2, 191, NULL, '$2y$10$YuWulggBxrZUe794T5UXoeZjwr0Vl5./cxSFVuB5GN52r6ZWAYHEO', NULL, 2, 1, '2023-06-08 19:21:50', '2023-06-08 19:21:50'),
(351, 'Veronica', 'vlsilver@sanitasperu.com', 'Silvera', '', 'Coordinador de salud ocupacional', 2, '', '', '', NULL, '', 2, 192, NULL, '$2y$10$TnZ4z5Q6E3o.iQT2t2fPee8AZFEn.JuybASK6iy.vPy2mYhOk5g7K', NULL, 2, 1, '2023-06-08 19:25:05', '2023-06-08 19:25:05'),
(352, 'Roxana', 'rbasadre@sanitasperu.com', 'Basadre', 'Malaga', 'Subgerente de gestión humana', 2, '+51955973445', '', '', NULL, '', 2, 192, NULL, '$2y$10$xp.puNBH10Y1pAcra.EOvu3I2DzV1g.tlrHmn8sj8fgLALE75b36.', NULL, 2, 1, '2023-06-08 19:25:59', '2023-06-08 19:25:59'),
(353, 'Norberto', 'nonovoa@sanitasperu.com', 'Novoa', 'Cotrino', 'Gerente de Operaciones', 1, '+51943004365', '', '', NULL, '', 2, 192, NULL, '$2y$10$Ez821aE/LbRsvTPx3TQ0kOHxnW96adKOotUTxZ0QcPYXA2jCc85wO', NULL, 4, 1, '2023-06-08 19:26:48', '2023-06-08 19:26:48'),
(354, 'Marco', 'mespinoza@sanitasperu.com', 'Antonio', 'Espinoza', 'Contador', 1, '', '', '', NULL, '', 2, 192, NULL, '$2y$10$nbkIRAWwAq4aLWiwNqSQ1OyeluhkXJqhHe4MuxAPhgCEbx5v5WuRm', NULL, 4, 1, '2023-06-08 19:35:16', '2023-06-08 19:35:16'),
(355, 'Marcela', 'marllortiz@sanitasperu.com', 'Ortíz', '+51954607370', 'Gerente de T.I', 1, '', '', '', NULL, '', 2, 192, NULL, '$2y$10$exntuSXUy0cFbZiywiesT.0z2BfZ3QGHCSpKs0LSY8NePW4NteKZS', NULL, 4, 1, '2023-06-08 19:35:56', '2023-06-08 19:35:56'),
(356, 'Luis', 'luismorales@sanitasperu.com', 'Morales', 'Silva', 'Subgerente de servicio al cliente', 1, '+51956652033', '', '', NULL, '', 2, 192, NULL, '$2y$10$F6nVT7teJEOqdPvMURdPi.43XLOQ5hB5CaaSxSnJ0yNvD2YIlIy2K', NULL, 4, 1, '2023-06-08 19:37:49', '2023-06-08 19:37:49'),
(357, 'Julissa', 'jechecopar@sanitasperu.com', 'Echecopar', '', 'Gerente de administración y finanzas', 2, '+51943216582', '', '', NULL, '', 2, 192, NULL, '$2y$10$DFmTRd1saZAjEjqj17FKJutzbQFGS1PGtKGO600Z85HdfvVI52cZS', NULL, 4, 1, '2023-06-08 19:40:02', '2023-06-08 19:40:02'),
(358, 'Francisco', 'franciscolevi@sanitasperu.com', 'Levi', 'Velazquez', 'Analista de marketing', 1, '+51981892179', '', '', NULL, '', 2, 192, NULL, '$2y$10$jfAV.nKzRE8RUCYoC8jK.uup0HKXsOicGV6xEvCYEux1aKVhDYYmy', NULL, 4, 1, '2023-06-08 19:40:52', '2023-06-08 19:40:52'),
(359, 'Dayana', 'daisilva@sanitasperu.com', 'Silva', NULL, 'Asistente administrativo', 2, '+51981892179', '', NULL, NULL, NULL, 2, 192, NULL, '$2y$10$IpfGf7sIHp3K2DqX/V96e.Mtj/i47Vr82K8rIvOWRr9FJdEJiFTCG', NULL, 4, 1, '2023-06-08 19:48:06', '2023-06-10 20:42:31'),
(360, 'Celeste', 'cejperez@sanitasperu.com', 'Perez', '', 'Analista comercial', 1, '', '', '', NULL, '', 2, 192, NULL, '$2y$10$OLM2VuOub.BDSv.I6wJNyu/opb6F3snSiaGweH2H2MOayGzYY4rMa', NULL, 2, 1, '2023-06-08 20:24:00', '2023-06-08 20:24:00'),
(361, 'Ana', 'avizcarra@sanitasperu.com', 'Lucía', 'Vizcarra', 'Representante Sanitas Perú en Arequipa', 2, '+51940780428', '', '', NULL, '', 2, 192, NULL, '$2y$10$oE6VInx4gW4zqoNaItxvDOIjBb/4gM.dFv4koVCN8WAKl0gGSQU2W', NULL, 2, 1, '2023-06-08 20:25:38', '2023-06-08 20:25:38'),
(362, '', 'cgmarquez@sanitasperu.com', '', '', 'Analista de compras', 1, '+51994368660', '', '', NULL, '', 2, 192, NULL, '$2y$10$Cr8UBM4KUad8bc9KfRJv8uFzgqiqyp3jmuIrU4lsM8XirUiqzwebW', NULL, 4, 1, '2023-06-08 20:44:11', '2023-06-08 20:44:11'),
(363, 'Catherine', 'cguillen@sanitasperu.com', 'Guillen', '', 'Ejecutiva comercial', 2, '+51998102028', '', '', NULL, '', 2, 192, NULL, '$2y$10$ttOJIquVId0kAMATJbK9JOZGZldhyeXrjz0ZcU0KLJiM.O/rWnCAq', NULL, 4, 1, '2023-06-08 20:46:22', '2023-06-08 20:46:22'),
(364, 'Carlos', 'cchavarr@keralty.com', 'Chavarriaga', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 192, NULL, '$2y$10$8CUIwjHWe.D71.ytf6E.peAqOp4nrCuq9APgM4z5WnNRQwA21LWIa', NULL, 2, 1, '2023-06-08 20:48:04', '2023-06-08 20:48:04'),
(365, 'Christian', 'cvelasquez@sergemi.com.pe', 'Velasquez', '', 'Gerente general', 1, '+51975132478', '', '', NULL, '', 2, 193, NULL, '$2y$10$P.ws8grwrsnB1PLkKlr1puD5o/jtSYTZGZO2uijjBXqz0jtQYwdHm', NULL, 2, 1, '2023-06-08 20:49:46', '2023-06-08 20:49:46'),
(366, 'Tatiana', 'tmafioly@servinc.org', 'Mafioly', '', 'Representante Legal', 2, '+51978360819', '', '', NULL, '', 2, 194, NULL, '$2y$10$ElzObBrTtIrUI85rVPqahOg4s/7.0dKGuRIK0m.Fw5hIzNg0a285O', NULL, 2, 1, '2023-06-08 20:56:43', '2023-06-08 20:56:43'),
(367, 'Miguelangel', 'mbettin@servinc.org', 'Bettin', 'Jaraba', 'Gerente Comercial', 1, '+573135738360', '', '', NULL, '', 2, 194, NULL, '$2y$10$mpbwX06FCq4kDqgocZ0J9OvP9VKZKhZwntLdhmsFa4MVoXmRErTea', NULL, 2, 1, '2023-06-08 20:57:28', '2023-06-08 20:57:28'),
(368, 'Elizabeth', 'eborda@servinc.org', 'Borda', 'Carreño', 'Asistente de gerencia', 2, '+573187357693', '', '', NULL, '', 2, 194, NULL, '$2y$10$N0jnM2aQ8N6H5RYKwGC9le9zy9EXtLW5BQSDJVAH6fKcH8wTgN2zi', NULL, 4, 1, '2023-06-08 21:01:56', '2023-06-08 21:01:56'),
(369, 'Maria', 'mcotoya@alertamedicaperu.com.pe', 'Cecilia', 'Otoya', 'Gerente general', 2, '+51946421567', '', '', NULL, '', 2, 195, NULL, '$2y$10$RoGbjCwXGZxJagPa.GAUCepmETT6HeRe.BDIA/HI6m91OMvbfUYay', NULL, 2, 1, '2023-06-08 21:07:18', '2023-06-08 21:07:18'),
(370, 'Paola', 'paola.gonzales@unilabs.com', 'Gonzales', 'Farro', 'Gerente de cuentas por pagar', 2, '+51998177934', '', '', NULL, '', 2, 204, NULL, '$2y$10$QD531UgAx6eqaM4eA5NNj.533agJH3cNtiaMNPcZ4Y0nChUE5KDN6', NULL, 4, 1, '2023-06-08 21:10:32', '2023-06-08 21:10:32'),
(371, 'Claudia', 'claudia.parra@unilabs.com', 'Parra', '', 'Gerente de Ventas', 2, '', '', '', NULL, '', 2, 204, NULL, '$2y$10$e7Hq2SZGB/.ljf4FU3u4Q.LeLzLiojdJuBS5r6sGaH./whUnSPRaS', NULL, 4, 1, '2023-06-08 21:12:35', '2023-06-08 21:12:35'),
(372, 'Mónica', 'monica.rodriguez@servimeters.com', 'Rodriguez', 'Roa', 'Asistente de gerencia', 2, '', '', NULL, NULL, NULL, 2, 197, NULL, '$2y$10$m8H2A2IS.2opJkzMh0MDyOmmJFr7QdDqQ9MnIqzLxYEXoK6xMflD6', NULL, 4, 0, '2023-06-08 21:14:42', '2023-09-07 20:51:10'),
(373, 'Omar', 'gerencia.peru@servimeters.com.pe', 'Calderon', NULL, 'Gerente Perú', 1, '+51944248675', '', NULL, NULL, NULL, 2, 197, NULL, '$2y$10$HY6OeeenJ4pQQ3otsujoiugxDapNRIDw0DXkTQBp.iv6rb7xV985G', NULL, 2, 1, '2023-06-08 21:15:40', '2023-09-07 20:37:44'),
(374, 'Victor', 'victor.gutierrez@servimeters.com', 'Gutierrez', '', 'Gerente técnico', 1, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$G.XALZp2E9bs.lwL.cBqbur9DjThARRU6ImXV2UFCbpob9fVUF6ZK', NULL, 4, 0, '2023-06-08 21:18:54', '2023-09-07 20:51:15'),
(375, 'Maria', 'consuelo.jimenez@servimeters.com', 'Jimenez', 'Avila', 'Gerente de administración y finanzas', 1, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$valE6u6V.dHSLV2Pwm6fJu9l/nXczTipDJjlOJtOdIHaAH.N.PRca', NULL, 2, 0, '2023-06-08 21:20:34', '2023-09-07 20:51:19'),
(376, 'Luisa', 'luisa.toro@servimeters.com', 'Toro', 'Rios', 'Gerente general', 2, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$iut2hnA.TpQK2k2Lt.gqxuIAXoQERjnhGXspg.6WCxFqxcdMmvpze', NULL, 2, 0, '2023-06-08 21:21:09', '2023-09-07 20:51:40'),
(377, 'Gustavo', 'gustavo.cardenas@servimeters.com', 'Cardenas', '', 'Gerente comercial', 1, '+573167409891', '', '', NULL, '', 2, 197, NULL, '$2y$10$TZqHqAOGjzz74aID6W8IsOC5sL6/5PydaJZy7/sX7PLFz8bts6xrm', NULL, 4, 0, '2023-06-08 21:21:57', '2023-09-07 20:51:43'),
(378, 'Gloria', 'gloria.cabrera@servimeters.com', 'Cabrera', 'Sierra', 'Gerente de T.I', 2, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$nRDxvpaA.Zmzr/uR3MRNf.oBSw.rSAZgbkWDfSCxG5jFFN61IUazq', NULL, 2, 0, '2023-06-08 21:27:09', '2023-09-07 20:51:54'),
(379, 'Anyi', 'anyi.nino@servimeters.com', 'Niño', '', 'Jefe Mercadeo', 2, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$ihujAujVuL3D8z3TcsrgAOzoJWlQ.vFoUMcW/ORJ0bxCSM.9v32hi', NULL, 4, 0, '2023-06-08 21:27:53', '2023-09-07 20:35:58'),
(380, 'Daniela', 'luz.ayala@servimeters.com', 'Ayala', '', 'Analista de innovación', 1, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$gcxp5bXsAIaGjOVMxBiWSeoh9k5Xx49g8t5Bwk8bNITwKYIcG9MYe', NULL, 4, 0, '2023-06-08 21:28:30', '2023-09-07 20:51:46'),
(381, 'Angela', 'angela.medina@servimeters.com', 'Medina', '', 'Profesional de innovación', 2, '', '', '', NULL, '', 2, 197, NULL, '$2y$10$VgCMVXUegv4WQg6auy2VVecSINSDzpo/qGTs9G.Q3tBbd4D8hYCYK', NULL, 4, 0, '2023-06-08 21:29:08', '2023-09-07 20:51:48'),
(382, 'Juan', 'juan.huapaya@sesitdigital.com', 'Huapaya', 'Alcazar', 'Gerente general', 1, '+51990648905', '', '', NULL, '', 2, 196, NULL, '$2y$10$CwK2HOKphC/gb6lPI94ueOuFwoVptVGH6rziE3DEelRbqzsXRLxZm', NULL, 2, 1, '2023-06-08 21:29:57', '2023-06-08 21:29:57'),
(383, 'Luis', 'luis.ascuez@sesitdigital.com', 'Ascuez', 'Villar', 'Gerente administrativo y marketing', 1, '+51997596213', '', '', NULL, '', 2, 196, NULL, '$2y$10$5QJmVtdUZMHvGIzqm7xwRekFZKJTuArFikXzcl1D/DPbatJmgcA.q', NULL, 2, 1, '2023-06-08 21:30:48', '2023-06-08 21:30:48'),
(384, 'Cesar', 'cesar.aguirre@sesitdigital.com', 'Aguirre', 'Valderrama', '', 1, '+51975401452', '', '', NULL, '', 2, 196, NULL, '$2y$10$J9N25DVpmF3Kkru69nuAxuUuZDPvvCId2i8zpiupAp7he2AMBJzOa', NULL, 4, 1, '2023-06-08 21:32:32', '2023-06-08 21:32:32'),
(385, 'Oreana', 'administracionperu@supertexinc.com', 'Briones', 'Tupiño', 'Administrador', 2, '+51952446749', '', '', NULL, '', 2, 198, NULL, '$2y$10$wPdgqubLp3fQsGkQVUF1T.SDgpSGD5inZvzXhrvS8ONzRxuOH8qW6', NULL, 4, 1, '2023-06-08 21:49:53', '2023-06-08 21:49:53'),
(386, 'Juan', 'jtorrado@supertexinc.com', 'Francisco', 'Torrado', 'Gerente general', 1, '+51945204125', '', '', NULL, '', 2, 198, NULL, '$2y$10$nCo6ZjgDYMVBoDyBsmzFdOiYiFW8FukSvfuoMYdrzhAaplFtJrXSu', NULL, 3, 1, '2023-06-08 21:50:39', '2023-06-08 21:50:39'),
(387, 'Marina', 'mherrera@tcl.com.pe', 'Herrera', 'Peves', 'Asistente administrativo', 2, '+51966662546    ', '', '', NULL, '', 2, 69, NULL, '$2y$10$SGutMiqQJTNCHUN/G4Szi.rbtbnrV2gjnAyKlW4mUCbasxLupY/6S', NULL, 4, 1, '2023-06-08 21:53:40', '2023-06-08 21:53:40'),
(388, 'Luis', 'lramos@tcl.com.pe', 'Ramos', 'Medina', 'Coordinador comercial', 1, '+51963584003', '', '', NULL, '', 2, 69, NULL, '$2y$10$Kk51LNp5xyHP4Xm8K4W9R.7Sx8aKB7CxRkhA5.z9RFnGBioSIFMHG', NULL, 2, 1, '2023-06-08 21:54:27', '2023-06-08 21:54:27'),
(389, 'Jorge', 'jepuche@tcl.com.pe', 'Puche', 'Angulo', 'Gerente general', 1, '+51933539050', '', '', NULL, '', 2, 69, NULL, '$2y$10$2juCr4yHbQYbORNGhrtcmOVSgY0qUsu3YhAG3nuo87xZoq2k93qeW', NULL, 2, 1, '2023-06-08 21:55:09', '2023-06-08 21:55:09'),
(390, 'Elaine', 'ebonett@tcl.com.co', 'Bonett', '', 'Director de ventas internacionales', 1, '+573175860103', '', '', NULL, '', 2, 69, NULL, '$2y$10$XCp9JZZzGWTCt/wV0d141OBpnh6fVKeffAvcRCxTVQDYYH7kkr6ty', NULL, 2, 1, '2023-06-08 21:56:06', '2023-06-08 21:56:06'),
(391, 'Carmen', 'cmeza@tcl.com.pe', 'Meza', 'Armas', 'Asistente Administrativo y Tesoreria', 2, '', '', '', NULL, '', 2, 69, NULL, '$2y$10$mmJu3iyLW0xQyFp4dpqa3.MgdyGiPpfL7I9HhxoooaA1I2hk5vVDe', NULL, 4, 1, '2023-06-08 21:56:36', '2023-06-08 21:56:36'),
(392, 'Alex', 'alex.murillo@tea.com.pe', 'Murillo', 'Alvarado', 'Gerente general', 1, '+51997567154', '', '', NULL, '', 2, 70, NULL, '$2y$10$ZhIHp7fqDt4EElTdyaJz.OQJWzebtluOkzc55n7xV4j2OPhlwm9le', NULL, 2, 1, '2023-06-08 21:57:24', '2023-06-08 21:57:24'),
(393, 'Stephen', 'fagan67@gmail.com', 'Anthony', 'Fagan', 'Gerente de desarrollo humano y capacitación', 2, '+51932168570', '', '', NULL, '', 2, 70, NULL, '$2y$10$MpNzGhIcD7cOZk6kgkLufew4rfaERi0KcWyLRRsuiV2zFfdZ066GG', NULL, 2, 1, '2023-06-08 21:58:25', '2023-06-08 21:58:25'),
(394, 'Zoila', 'zoila.araujo@tecnaperu.com', 'Araujo', 'Condorchua', 'Gerente de administración y finanzas', 2, '+51956975600', '', '', NULL, '', 2, 71, NULL, '$2y$10$Xk316GrHWvZOoJthrsJWc.M5v0oj7m./zCN.EcvUGjZClO3.rw.Bi', NULL, 4, 1, '2023-06-08 21:59:32', '2023-06-08 21:59:32'),
(395, 'Ricardo', 'ricardo.alea@tecnaperu.com', 'Alea', '', 'Desarrollo de negocios T.I', 1, '+51986666039', '', '', NULL, '', 2, 71, NULL, '$2y$10$scKfw6bDt7XF.JYYVDclteALalDL1se4FTDrXksm.OTdOF2NMG5/q', NULL, 4, 1, '2023-06-08 22:01:08', '2023-06-08 22:01:08'),
(396, 'Oscar', 'oscar.casto@tecnaperu.com', 'Castro', '', 'Director de operaciones', 1, '+51942168727', '', '', NULL, '', 2, 71, NULL, '$2y$10$mZyubX252DeFUCrml6z6qu0tGzEotrk/lf8mMcwcY3b2q7NvWTqUa', NULL, 4, 1, '2023-06-08 22:02:46', '2023-06-08 22:02:46'),
(397, 'María del Pilar', 'pilar.adames@tecna-ice.com', 'Adames', '+51995605570', 'Gerente general', 1, '', '', '', NULL, '', 2, 71, NULL, '$2y$10$gARvLBU7GDalyfjazz1fXexWnMr7Po0QJOsQPf1XyuyWjJxqKGdMO', NULL, 2, 1, '2023-06-08 22:03:56', '2023-06-08 22:03:56'),
(398, 'José', 'joseluis.ruiz@tecnaperu.com', 'Luis', 'Ruiz', 'Contador', 1, '+51956975700', '', '', NULL, '', 2, 71, NULL, '$2y$10$sw1bK2qXucVEo5VKtl7CFe3yr6/nKX7v1kGrxsfS.P41Zw/g2X5sq', NULL, 4, 1, '2023-06-08 22:05:18', '2023-06-08 22:05:18'),
(399, 'Fabiola', 'fabiola.mora@tecnaperu.com', 'Mora', 'Torres', 'Gerente comercial', 2, '+51995608394', '', '', NULL, '', 2, 71, NULL, '$2y$10$jCG1HCryjyRvAB3Xx5lDAeHtZukZR2KCAk/fhS1ElQsDJYL1bMRSO', NULL, 4, 1, '2023-06-08 22:06:01', '2023-06-08 22:06:01'),
(400, 'Alisson', 'administracion@tecnaperu.com', 'Flores', '', 'Administrador', 2, '+51985116155', '', '', NULL, '', 2, 71, NULL, '$2y$10$y.ilJv/9OFn30/s.Q4ct6eUUw.FK19NlO5wBPSILzCWpvFMvmF0B6', NULL, 4, 1, '2023-06-08 22:06:47', '2023-06-08 22:06:47'),
(401, 'Alberto', 'alberto.padilla@tecna-ice.com', 'Padilla', 'Navas', 'Presidente', 1, '+51998895902', '', '', NULL, '', 2, 71, NULL, '$2y$10$FHNz.2GYgBjeJIxfLHVo4e03ioyDi6.M2rFUtsst.851Sh7qNXjqK', NULL, 2, 1, '2023-06-08 22:07:28', '2023-06-08 22:07:28'),
(402, 'Ivette', 'iperez@terahsac.com', 'Pérez', 'Ruiz', 'Coordinador administracón y finanzas', 2, '+51994097368', '', '', NULL, '', 2, 72, NULL, '$2y$10$vOkM9Svv/krsU//J1NlLoOifNjFJ6kPEgvgwq3qnxtmGnr1LrDOPy', NULL, 2, 1, '2023-06-08 22:08:27', '2023-06-08 22:08:27'),
(403, 'Mario', 'mhernandez@terahsac.com', 'Hernandez', '', 'Gerente General', 1, '+51959811326', '', '', NULL, '', 2, 72, NULL, '$2y$10$.GN4kCgnwUCg0ZH7oAQuGumUEowvW.GW4QZZgWzq7rZxDw7JlU8tu', NULL, 2, 1, '2023-06-08 22:09:10', '2023-06-08 22:09:10'),
(404, 'Silvana', 'silvia.orozco@terpel.com', 'Orozco', 'Echeverry', 'Gerente de marketing', 2, '+51934193479', '', '', NULL, '', 2, 73, NULL, '$2y$10$8jlZ/Oyvq4r.jS9cavDl4.h95OZy0ECvaPbgg7nMn4XfvZJJVHrme', NULL, 4, 1, '2023-06-08 22:10:11', '2023-06-08 22:10:11'),
(405, 'Rosa', 'rosa.aquino@terpel.com', 'Aquino', 'Arbi', 'Asistente tesorería', 2, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$wSzmrpt2YZgBPaeiiZ3BY.BmPb7yJehJ6cR7od4qcLQDHM.s3Wjyq', NULL, 4, 1, '2023-06-08 22:10:58', '2023-06-08 22:10:58'),
(406, 'Marisel', 'marisel.gamarra@terpel.com', 'Gamarra', '', 'Gerente de talento humano', 2, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$diZHuvkCNnzKDuyQKSypx.GcGQeWlcJO6ElDjPqIBQ6ArQsF5K9fe', NULL, 4, 1, '2023-06-08 22:11:40', '2023-06-08 22:11:40'),
(407, 'Sofia', 'sofia.chau@terpel.com', 'Chau', '', 'Asistente administrativo', 2, '+51938455550', '', '', NULL, '', 2, 73, NULL, '$2y$10$8hjOYFQ8FyXUBVy/7LJ3UOiUdenXeK3vh/u4cQb7ZNTim8RPNC3WK', NULL, 4, 1, '2023-06-08 22:12:39', '2023-06-08 22:12:39'),
(408, 'María', 'isabel.zegarra@terpel.com', 'Isabel', 'Zegarra', 'Asistente de recursos humanos', 2, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$GnmSlBIh72GYEXoIT5rwTu.qmsQkKvam6WI2JFJTKdHRFjeMubXVS', NULL, 4, 1, '2023-06-08 22:13:15', '2023-06-08 22:13:15');
INSERT INTO `users` (`id`, `name`, `email`, `apellido_paterno`, `apellido_materno`, `cargo`, `genero`, `celular_contacto`, `numero_fijo`, `fecha_nac`, `foto`, `lugar_residencia`, `tipo_de_cargo_id`, `empresa_id`, `email_verified_at`, `password`, `remember_token`, `perfil_id`, `flestado`, `created_at`, `updated_at`) VALUES
(409, 'Luciano', 'luciano.macias@terpel.com', 'Macias', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$9OpdyhDV.UbDW/gWSb3uLu0gUsZ.a7iKvyCXMc9YRWNIdC6SZYyQe', NULL, 2, 1, '2023-06-08 22:16:13', '2023-06-08 22:16:13'),
(410, 'Juan', 'juan.carcamo@terpel.com', 'Cárcamo', '', 'Gerente de administración y finanzas', 1, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$7J2wqlm6JdkeAf3/pdEo0O8BrVr0j9m6hwBZ2POtopPcaj7GACoUW', NULL, 2, 1, '2023-06-08 22:17:00', '2023-06-08 22:17:00'),
(411, 'Jorge', 'jorge.rabines@terpel.com', 'Rabines', '', 'Gerente comercial', 1, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$UXEfqYZ5O6IhKf65Fspdu.laF/AuVjOyPZFPUns.PoM9GeNQe5JqG', NULL, 2, 1, '2023-06-08 22:20:54', '2023-06-08 22:20:54'),
(412, 'Iván', 'ivan.sabogal@terpel.com', 'Sabogal', '', 'Subgerente de aviación', 1, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$TwrgFD.6PVIVnjPLdONd4.QLfnGH7YPyKm1JO63HbgfDrowtMk6wq', NULL, 4, 1, '2023-06-08 22:21:45', '2023-06-08 22:21:45'),
(413, 'Ema', 'ema.dias@terpel.com', 'Dias', '', 'Gerente de talento humano', 2, '+51998670877', '', '', NULL, '', 2, 73, NULL, '$2y$10$fQUIsnABGHBp3GG0gq2lwO/RIDphjbGt6Unm7IIUdsdjQx8pxO8Q.', NULL, 2, 1, '2023-06-08 22:24:10', '2023-06-08 22:24:10'),
(414, 'Carlos', 'carlos.cisneros@terpel.com', 'Cisneros', '', 'Gerente de T.I', 1, '+51995382198', '', '', NULL, '', 2, 73, NULL, '$2y$10$AtarY7I2n.886XLdgSMqPe4u3AFqYC/qQTKvIvSq3BErjOA.etvpa', NULL, 4, 1, '2023-06-08 22:24:48', '2023-06-08 22:24:48'),
(415, 'Elizabeth', 'elizabeth.longa@terpel.com', 'Longa', '', 'Sub Gerente de Contabilidad y Tesorería', 2, '+51994541602', '', '', NULL, '', 2, 73, NULL, '$2y$10$BWDFb4II/hTdp7S/kcZmTudWWllN9DSYX4eFSERYxhXJB4bYlcQvO', NULL, 4, 1, '2023-06-08 22:25:27', '2023-06-08 22:25:27'),
(416, 'Juan', 'juan.copello@terpel.com', 'Carlos', 'Copello', 'Gerente regional de operaciones', 1, '', '', '', NULL, '', 2, 73, NULL, '$2y$10$r1YlIdIpCjtvzHdcuUFp0eCBo/zCe/qE9mWlVCuRasepbVDXSDDeu', NULL, 4, 1, '2023-06-08 22:26:11', '2023-06-08 22:26:11'),
(417, 'Luisa', 'recepcion.peru@terpel.com', 'Romero', '', 'Asistente de gerencia', 2, '+51972770095', '', '', NULL, '', 2, 73, NULL, '$2y$10$WTM4f7WFbR0nMFIcY5HqiueQl/oXqlyIWT5wOFGh8FeYd6WlNsQFK', NULL, 4, 1, '2023-06-08 22:33:51', '2023-06-08 22:33:51'),
(418, 'Rossella', 'rossella.pollari@terpel.com', 'Pollari', 'Costa', 'Gerente de Asuntos Corporativos', 2, '+51995959327', '', '', NULL, '', 2, 73, NULL, '$2y$10$a2hnBG6Ejkz176s1uPiHn.fcUji24DUF1CLbnRWMfRYVC3raPjYzm', NULL, 2, 1, '2023-06-08 22:34:40', '2023-06-08 22:34:40'),
(419, 'Cesar', 'cbielich@thiessen.com.pe', 'Bielich', 'Thiessen', 'Gerente general', 1, '+51995767345', '', '', NULL, '', 2, 74, NULL, '$2y$10$QyTIW1Y4pkAZP7udEBJzjeQTRyeoWpbS6x6YcDMozvSAhmSNjh9ne', NULL, 2, 1, '2023-06-08 22:35:31', '2023-06-08 22:35:31'),
(420, 'Manuel', 'mnoriega@thiessen.com.pe', 'Noriega', '', 'Gerente de Negocios', 1, '+51936239680', '', '', NULL, '', 2, 74, NULL, '$2y$10$ZuQBXeAR8E64szXipnWTq.dopDOBbQqMGCPm2AHQMg4UTkJDGJ.aW', NULL, 2, 1, '2023-06-08 22:36:25', '2023-06-08 22:36:25'),
(421, 'Priscilla', 'pgallo@thiessen.com.pe', 'Gallo', '', 'Coordinadora gestion comercial', 2, '', '', '', NULL, '', 2, 74, NULL, '$2y$10$vauuYbfgTdJQckAoNGSEQ.VCa.DS2VdKkzx.w1SbGpM/SWBFegkGa', NULL, 4, 1, '2023-06-08 22:39:28', '2023-06-08 22:39:28'),
(422, 'Gianfranco', 'gorbegoso@thiessen.com.pe', 'Orbegoso', '', '', 1, '', '', '', NULL, '', 2, 74, NULL, '$2y$10$LX8PoKAqAmzUlVk/DcCiGuq2pt01SrVneFJLTOkp6Oh3LKk/NosDu', NULL, 4, 1, '2023-06-08 22:40:09', '2023-06-08 22:40:09'),
(423, 'Xendra', 'xponte@tiger-cos.com', 'Ponte', '', 'Asistente administrativo', 2, '+51940306993', '', '', NULL, '', 2, 75, NULL, '$2y$10$kStl/ceyaB2yQpZAModKweOnQWi0W1opqw8uolRhJ3AWHNGKWrQyK', NULL, 4, 1, '2023-06-08 22:42:19', '2023-06-08 22:42:19'),
(424, 'Johnny', 'jrtorres@summumcorp.com', 'Torres', 'Agresott', 'Gerente general', 1, '+51995030212', '', '', NULL, '', 2, 75, NULL, '$2y$10$xyysvZ/M4gWlFFpuGCmM5e5VZGSs00An1V6kdYv7BvWWsLKeocAZ2', NULL, 2, 1, '2023-06-08 22:44:18', '2023-06-08 22:44:18'),
(425, 'Erika', 'erugel@tiger-cos.com', 'Rugel', 'Feijo', 'Coordinador de gestión humana', 2, '+51940307002', '', '', NULL, '', 2, 75, NULL, '$2y$10$.tsxbXhVi71XdQ6wRaci4eIUawRLJ5JhtjqAPBT749v4ofyJnXO/.', NULL, 4, 1, '2023-06-08 22:46:07', '2023-06-08 22:46:07'),
(426, 'Juan', 'jtorres@chambaplus.com', 'Torres', '', 'Gerente General', 1, '+51927401875', '', '', NULL, '', 2, 76, NULL, '$2y$10$prZcCISicv7u6sFhpRAZM.JDyojYNR/avgG13LNfUVcjvigD6G1/q', NULL, 2, 1, '2023-06-08 22:47:08', '2023-06-08 22:47:08'),
(427, 'Julio', 'julio.reategui@tremach.com', 'Cesar', 'Reategui', 'Gerente General', 1, '+51981327141', '', '', NULL, '', 2, 77, NULL, '$2y$10$akwIeG6KjBjsQMRhD7/L3uI6TlRXZPfwgKVudhzv6wzKs.rjRSwKq', NULL, 2, 1, '2023-06-08 22:50:07', '2023-06-08 22:50:07'),
(428, 'Tatiana', 'pinillost@triconenergy.com', 'Pinillos', 'Madrid', 'Gerente de país', 2, '+51999928200', '', '', NULL, '', 2, 78, NULL, '$2y$10$R4DOVCE75jewUCjyWW6RsuYt3t8gzMGnDY0nI7lyRU3sBVV9bK6XS', NULL, 2, 1, '2023-06-08 22:51:28', '2023-06-08 22:51:28'),
(429, 'Jorge', 'fachinj@triconenergy.com', 'Fachin', 'Masuoka', 'Coordinador de operaciones', 1, '+51975194898', '', '', NULL, '', 2, 78, NULL, '$2y$10$JXIqa.Wr7QIAbd/me2sYjeIrjLGKKoZUqPTIumNvXFTeiyiLmltp.', NULL, 2, 1, '2023-06-08 22:52:22', '2023-06-08 22:52:22'),
(430, 'Ana', 'apereirarpo@gmail.com', 'María', 'Pereira', 'Socio latam Chile', 2, '+56979668454', '', '', NULL, '', 2, 78, NULL, '$2y$10$nFhVuyeteA38bBZaCPK3J.NyMW7xmJXzHRKZMv/ivjfuBN7akxHI.', NULL, 4, 1, '2023-06-08 22:53:15', '2023-06-08 22:53:15'),
(431, 'Victor', 'vpisano@unimed.com.pe', 'Pisano', '', 'Director país', 1, '', '', '', NULL, '', 2, 79, NULL, '$2y$10$iPyjFlXL5L/Up3YzNTrv4O8VW5Qh5sdZYOMBwVxLNwLFyGFePd6Di', NULL, 2, 1, '2023-06-08 22:54:37', '2023-06-08 22:54:37'),
(432, 'Rosa', 'rencomender@unimed.com.pe', 'Encomender', 'Rodríguez', 'Jefe de servicios generales', 2, '+51998129843', '', '', NULL, '', 2, 79, NULL, '$2y$10$yBrrLv5l9Uop2e5DC0khUueWltP7SALpBZrxht4.oTnxiD5hrj0qW', NULL, 4, 1, '2023-06-08 22:55:50', '2023-06-08 22:55:50'),
(433, 'Patricia', 'pbrescia@unimed.com.pe', 'Brescia', '', 'Gerente de talento humano', 1, '', '', '', NULL, '', 2, 79, NULL, '$2y$10$/ZE87QzO3F/bFvGcgNnApuXyAR2HBauawmGBhqSrKY8NZwqMuZDqK', NULL, 2, 1, '2023-06-08 22:57:50', '2023-06-08 22:57:50'),
(434, 'Giuliana', 'vvargas@unimed.com.pe', 'Vargas', '', 'Asistente administrativo director país', 2, '+51994099689', '', '', NULL, '', 2, 79, NULL, '$2y$10$Q.BFm6JTEoJdo9mdmfp4c.7dnfh/cXgRX6oOzLNKFH/9iAJHn7xO.', NULL, 4, 1, '2023-06-08 23:03:57', '2023-06-08 23:03:57'),
(435, 'Marissa', 'marissa.toro@uniongr.com', 'Toro', 'Fernandez', 'Controller', 1, '+51989561620', '', '', NULL, '', 2, 80, NULL, '$2y$10$csQgmmhzHYhX11rbQ70iZ.fV7N.a3rgul9v0nm5MZ/NMOk77K6hma', NULL, 2, 1, '2023-06-08 23:04:58', '2023-06-08 23:04:58'),
(436, 'María', 'recepcion.uesp@uniongr.com', 'Casadiego', 'S.', 'Asistente administrativo', 2, '', '', '', NULL, '', 2, 80, NULL, '$2y$10$gdNyfKQuZksv6ZE9clijvel4hSBsa3INMYpbWD5dihD0k0tawO886', NULL, 4, 1, '2023-06-08 23:05:46', '2023-06-08 23:05:46'),
(437, 'Karina', 'legal@uniongr.com', 'Delgado', '', 'Abogado', 2, '+51989561932 ', '', '', NULL, '', 2, 80, NULL, '$2y$10$p2MOVO5ueofxWwlUm7eWDePPVAK2dG6z7qO0jDKyNUiDusQL/M1Ny', NULL, 4, 1, '2023-06-08 23:06:32', '2023-06-08 23:06:32'),
(438, 'José', 'jorozco@uniongr.com', 'Ignacio', 'Orozco', 'Gerente general', 2, '', '', '', NULL, '', 2, 80, NULL, '$2y$10$ws0zKvCCIs0Ddzgp.jH/wu8bIh0M/GDBJ40Nt8E05xzl36UQF8Aeq', NULL, 2, 1, '2023-06-08 23:09:15', '2023-06-08 23:09:15'),
(439, 'Jinyei', 'jinyei.chinen@uniongr.com', 'Chinen', 'Guerra', 'Administrador', 2, '+51937721567', '', '', NULL, '', 2, 80, NULL, '$2y$10$uKFIWdUlq3Eq/IFYI3havuVKIQNdA3u3YjDXOBYNjzj.x2VhjMJI6', NULL, 2, 1, '2023-06-08 23:10:20', '2023-06-08 23:10:20'),
(440, 'Claudia', 'claudia.ramos@uniongr.pe', 'Ramos', '', 'Jefe de tesorería', 1, '', '', '', NULL, '', 2, 80, NULL, '$2y$10$F.sZF9wCmGC.lKAASQuNgeNbOcvqlk1m6P0kYy2RfdbjWd/3as8iC', NULL, 4, 1, '2023-06-08 23:25:36', '2023-06-08 23:25:36'),
(441, 'Andrés', 'fzabala@uniongr.com', 'Zabala', '', 'Ingeniero de proyectos tecnológicos', 1, '', '', '', NULL, '', 2, 80, NULL, '$2y$10$HHJqmr79HKFLtP6YsnsMYOe9XKNCA6O15IY/KKjXRkEhobviTpQfq', NULL, 4, 1, '2023-06-08 23:27:47', '2023-06-08 23:27:47'),
(442, 'Juan', 'jvalencia@esan.edu.pe', 'Valencia', 'Muñoz', 'Jefe de Capacitación ', 1, '+51975602823', '', '', NULL, '', 2, 81, NULL, '$2y$10$TSUvx.MGGkMha/ey3/1A/OgmICu0HpLka5FwxQ2OLzthA33hJ3gv.', NULL, 2, 1, '2023-06-08 23:28:58', '2023-06-08 23:28:58'),
(443, 'Ana', 'asalas@esan.edu.pe', 'Salas', 'Vega', 'Jefe de desarrollo institucional', 2, '+51987207877', '', '', NULL, '', 2, 81, NULL, '$2y$10$IRZtunlj/kC3tMDdXGAXWO2QvLwfb9dyIZRD1lt37FutLO5ujZxie', NULL, 2, 1, '2023-06-08 23:29:53', '2023-06-08 23:29:53'),
(444, 'Edwin', 'edeolarte@esan.edu.pe', 'de', 'Olarte', 'Jefe de consultoría', 1, '+51984729477', '', '', NULL, '', 2, 81, NULL, '$2y$10$P1q5qCH3UsrxOfc.6YuqJ.2VFMR9c05g9j1WaQHVUkTch9w2vs7Da', NULL, 4, 1, '2023-06-08 23:30:38', '2023-06-08 23:30:38'),
(445, 'Alicia', 'avargasc@esan.edu.pe', 'Vargas', 'Coca', 'Coordinadora general', 2, '+51995955453', '', '', NULL, '', 2, 81, NULL, '$2y$10$uY18esrU77YHDSBByLzsFuGShkJyiG5S4dex2v6PuUE5aM51WsERS', NULL, 4, 1, '2023-06-08 23:37:51', '2023-06-08 23:37:51'),
(446, 'Khaterina Loyaga', 'kloyaga@esan.edu.pe', 'Ramirez', '', 'Coordinadora de marketing', 2, '+51975447929', '', '', NULL, '', 2, 81, NULL, '$2y$10$Y3eIb0h4ZWfchFZjK9qvh.zkHc4GSpdpfmc3AUPVhWhsvTD2E.aMe', NULL, 4, 1, '2023-06-08 23:51:31', '2023-06-08 23:51:31'),
(447, 'Beatriz', 'bcaceres@fri.com.pe', 'Caceres', 'Pimentel', 'Coordinadora capacitación in house', 2, '+51921983155', '', '', NULL, '', 2, 81, NULL, '$2y$10$mTFwS6MKOJYWpQ6HJlxIo.A9alsz8Udy66Rzu4sFhmUxE8He/WOs.', NULL, 4, 1, '2023-06-08 23:52:24', '2023-06-08 23:52:24'),
(448, 'Gabriela', 'administracionfri@esan.edu.pe ', 'Castro', '', 'Asistente administrativo', 2, '', '', '', NULL, '', 2, 81, NULL, '$2y$10$zQcgD8xC.vyyfprEC4yXwuQ.wkUU2loGadFQXYz5ydTOJu/0LnivW', NULL, 4, 1, '2023-06-08 23:53:02', '2023-06-08 23:53:02'),
(449, 'Tatiana', 'tatiana.clavijo@urbanaperu.com.pe', 'Clavijo', 'Alvarez', 'Gerente de gestión de tierras', 2, '', '', '', NULL, '', 2, 82, NULL, '$2y$10$mCwAYuRNKZzx9Uhk81JVoOPHDHz726T3W4CXYT8LgaftLHUFjQ4bC', NULL, 4, 1, '2023-06-08 23:53:46', '2023-06-08 23:53:46'),
(450, 'Karem', 'karem.orejuela@urbanaperu.com.pe', 'Orejuela', '', 'Gerente de administración y finanzas', 2, '+51981152700', '', '', NULL, '', 2, 82, NULL, '$2y$10$oVZ23QrOWA2NmmILzTtPe.6pqnD6JW6kejmYOgA2HONBpv4tZDZg.', NULL, 4, 1, '2023-06-08 23:54:37', '2023-06-08 23:54:37'),
(451, 'Jorge', 'jorgef.pinzon@urbanaperu.com.pe', 'Jorge', 'Maz', 'Gerente de gestión y control', 1, '', '', '', NULL, '', 2, 82, NULL, '$2y$10$6WINACeJJr8SpiyFsQhnZOFutYEQ1bp1UnfrUpxIDbV7nbf3p9hRu', NULL, 2, 1, '2023-06-08 23:55:07', '2023-06-08 23:55:07'),
(452, 'Jaime', 'jaimea.paredes@urbanaperu.com.pe', 'Alberto', 'Paredes', 'Gerente general', 1, '', '', '', NULL, '', 2, 82, NULL, '$2y$10$geEtItnfqJSuUFpLRd659uPRgo/xofib2u0ooamH.m9MNE/edmFvy', NULL, 2, 1, '2023-06-08 23:55:44', '2023-06-08 23:55:44'),
(453, 'Gloria', 'glorial.hoyos@urbanaperu.com.pe', 'Liliana', 'Hoyos', 'Gerente de construcción', 2, '+51981385745', '', '', NULL, '', 2, 82, NULL, '$2y$10$.WshnFpG.JVeQ0ZIQRfE2e6YhEIz6w8hokPH0Biycb.8K0txWwanC', NULL, 4, 1, '2023-06-08 23:56:27', '2023-06-08 23:56:27'),
(454, 'Gloria', 'gloria.caycho@urbanaperu.com.pe', 'Caycho', '', 'Recepcionista', 2, '', '', '', NULL, '', 2, 82, NULL, '$2y$10$xbCRtMRUxMhHKxKAsMv.4.nOeZwXzDgKZYqthQgDuFS9OXbcLIUWu', NULL, 4, 1, '2023-06-08 23:57:08', '2023-06-08 23:57:08'),
(455, 'Giannin', 'giannina.quenta@urbanaperu.com.pe', 'Quenta', '', 'Gerente de administración y finanzas', 2, '+51981488258', '', '', NULL, '', 2, 82, NULL, '$2y$10$k1SsMZYJHGGRD34A/HSHeuey1zXWkREdimPOboTkG3pEBfFEpk5y6', NULL, 4, 1, '2023-06-09 00:02:04', '2023-06-09 00:02:04'),
(456, 'George', 'georgem.chavez@urbanaperu.com.pe', 'Chavez', 'Hernandez', 'Analista de T.I', 1, '+51916213605', '', '', NULL, '', 2, 82, NULL, '$2y$10$INV6wWzNMZF.mlFhQsbl2uhXG.Y2vJFKzbTsx/cb/9WuTC6twuB2i', NULL, 4, 1, '2023-06-09 00:02:48', '2023-06-09 00:02:48'),
(457, 'Gabriela', 'gabriela.alarcon@urbanaperu.com.pe', 'Alarcón', '', 'Analista de recursos físicos', 2, '+51981071711', '', '', NULL, '', 2, 82, NULL, '$2y$10$XHOCxzRzsvgFJTJzLZlqJe3kCGIBm4AUX6t3zy4pAfzSho.vV5KaG', NULL, 4, 1, '2023-06-09 00:03:28', '2023-06-09 00:03:28'),
(458, 'Fernando', 'fernandoa.sotomayor@urbanaperu.com.pe', 'Antonio', 'Sotomayor', 'Gerente de marketing', 1, '+51945964444', '', '', NULL, '', 2, 82, NULL, '$2y$10$7/tG2QrRA/LE1aFNZvUfwuCntVE37Xx1T4mcvC7clAImUEgov4yUu', NULL, 4, 1, '2023-06-09 00:04:16', '2023-06-09 00:04:16'),
(459, 'Diana', 'dianae.carranza@urbanaperu.com.pe', 'Carranza', '', 'Coodinador de logística ', 2, '+51986878969', '', '', NULL, '', 2, 82, NULL, '$2y$10$4/r15QxTFtamoPxsneENFeTUmSVMp2xoZ4CKKD.77iIc0O35iZgBK', NULL, 4, 1, '2023-06-09 00:04:55', '2023-06-09 00:04:55'),
(460, 'Cinthya', 'cinthya.carrillo@urbanaperu.com.pe', 'Carrillo', '', 'Gerente legal', 2, '+51946009082', '', '', NULL, '', 2, 82, NULL, '$2y$10$OoxJpmuiY2O8sYdeovIozOsBo0klet2CTuT49j1DT9kMzx4BJAPk.', NULL, 4, 1, '2023-06-09 00:05:34', '2023-06-09 00:05:34'),
(461, 'Alexander', 'alexander.rodriguez@urbanaperu.com.pe', 'Rodríguez', 'Triana', 'Gerente de proyectos', 1, '+51994180834', '', '', NULL, '', 2, 82, NULL, '$2y$10$QnaOQLS1ULlAtddY1YQNmepdBlYzuE4TOqv9RAva7SpFxVSSGn4rG', NULL, 2, 1, '2023-06-09 00:06:32', '2023-06-09 00:06:32'),
(462, 'Maricé', 'marices.palacios@urbanaperu.com.pe', 'Palacios', '', 'Facturación', 2, '', '', '', NULL, '', 2, 82, NULL, '$2y$10$dNh89yq.FErahIedN9sDFO5JLtH4o9p5np9yBKMnU25N06sDVHymC', NULL, 4, 1, '2023-06-09 00:06:59', '2023-06-09 00:06:59'),
(463, 'Yagnir', 'yagnir.rodríguez@globelec.com.pe', 'Rodríguez', '', 'Gerente de Operaciones', 1, '+51945339998', '', '', NULL, '', 2, 83, NULL, '$2y$10$fTXLbTbSAurao2vvabLL1OaKByoG/SxiNd5V1CnuAK95SXhMvwVhW', NULL, 2, 1, '2023-06-09 00:09:04', '2023-06-09 00:09:04'),
(464, 'Víctor', 'victor.salas@voyant.pe', 'Salas', '', 'Gerente general', 1, '+51998401212', '', '', NULL, '', 2, 83, NULL, '$2y$10$/2TX/BorJW9CM//M91ryHeyQp4Lqt6FHMhMZTXddKnlaScXkurEQe', NULL, 2, 1, '2023-06-09 00:11:35', '2023-06-09 00:11:35'),
(465, 'Oswaldo', 'oswaldo.uipan@globelec.com.pe', 'Uipan', '', 'Gerente comercial', 1, '+51972554631', '', '', NULL, '', 2, 83, NULL, '$2y$10$6WkUoLyOd9hi.2Oop7uO7uAW0lmkYzE968X/IEr2GWl3aJO0qxRQm', NULL, 2, 1, '2023-06-09 00:12:17', '2023-06-09 00:12:17'),
(466, 'Luciano', 'luciano.sanguinetti@westernunion.com', 'Sanguinetti', 'Anduaga', 'Gerente de canal propio & Fx Retail', 1, '+51989102439', '', '', NULL, '', 2, 84, NULL, '$2y$10$J1Vk8n8qUZ8wdW36nqEMz.ReP3U.VNpAnrvo0cV5/hurDQEDMNO1.', NULL, 2, 1, '2023-06-09 00:30:06', '2023-06-09 00:30:06'),
(467, 'Johanna', 'johanna.grados@westernunion.com', 'Grados', '', 'Gerente de oficina', 2, '+51989209487', '', '', NULL, '', 2, 84, NULL, '$2y$10$0XupLCx8JOCHKniLoD7FEuhbOtZpa5OTZCn/Jgg7ZEA6DgemBZv9O', NULL, 2, 1, '2023-06-09 00:34:39', '2023-06-09 00:34:39'),
(468, 'Gian', 'gian.maza@wu.com', 'Franco', 'Maza', 'Ejecutivo comercial - FX Retail', 1, '+51924223671', '', '', NULL, '', 2, 84, NULL, '$2y$10$8EVqBrGkMklCkIzN8HhkGenhlE/dqPROXbreC6dOWR8X3Y2uJ02cC', NULL, 2, 1, '2023-06-09 00:36:10', '2023-06-09 00:36:10'),
(469, 'Daniel', 'daniel.barrantes@westernunion.com', 'Barrantes', '', 'Sub gerente comercial', 1, '+51982866058', '', '', NULL, '', 2, 84, NULL, '$2y$10$EsZCy0VXsSlD9VcclxW8zeEAtJ1H266lbhdoT3L./JmPM9GkOZvs2', NULL, 4, 1, '2023-06-09 00:36:50', '2023-06-09 00:36:50'),
(470, 'Jamsen', 'jamsen.pantigoso@westernunion.com', 'Pantigoso', '', 'South America Marketing Manager', 1, '', '', '', NULL, '', 2, 84, NULL, '$2y$10$OncBclMAzMRJl0Y3l02kWeKXFhWdrUTXIv0DRLUNNU3uhUCwjktI6', NULL, 4, 1, '2023-06-09 00:37:32', '2023-06-09 00:37:32'),
(471, 'William', 'wmorales@wi-mobile.com', 'Morales', '', 'Gerente general', 1, '', '', '', NULL, '', 2, 85, NULL, '$2y$10$y2KrXaghdNpccrSgvE7UVu5EKQVJTZc2Bfe/Wpeh0hOW4TkY1dQQ.', NULL, 2, 1, '2023-06-09 00:38:24', '2023-06-09 00:38:24'),
(472, 'Victoria', 'vrubio@wi-mobile.com', 'Rubio', '', 'Contador', 2, '', '', '', NULL, '', 2, 85, NULL, '$2y$10$BVrSNvZpwxpeRKvmmg52De5CkYwM/VC.MnYu2jrSqNK8m70DHeEU6', NULL, 4, 1, '2023-06-09 00:47:01', '2023-06-09 00:47:01'),
(473, 'Lizeth', 'ljulio@wi-mobile.com', 'Julio', 'Pinedo', 'Asistente administrativo', 2, '+51974829768', '', '', NULL, '', 2, 85, NULL, '$2y$10$dumPpPhCpOLm5KRuIAG67OZh/hD.Gjs9jP2M4XZ0ULPvKZIdIvuC6', NULL, 4, 1, '2023-06-09 00:47:54', '2023-06-09 00:47:54'),
(474, 'Jimmy', 'jcepeda@wi-mobile.com', 'Cepeda', 'Vargas', 'Gerente general Perú', 1, '+573203202003', '', '', NULL, '', 2, 85, NULL, '$2y$10$X6UdU9iiRiEhgu2.DwvRyuanSAblko5CLFgUSBTLyPtHYEbzUp1u6', NULL, 2, 1, '2023-06-09 00:48:39', '2023-06-09 00:48:39'),
(475, 'Catalina', 'crico@wi-mobile.com', 'Rico', NULL, 'Director comercial', 1, '+51926912355', '', NULL, NULL, NULL, 2, 85, NULL, '$2y$10$XiZyrI6ozllu.EzAOUMMHOPC2Ebua9.XWqG/kur7FE56y.ZG1TE0a', NULL, 2, 1, '2023-06-09 00:50:09', '2023-06-10 20:39:03'),
(476, 'Rodrigo', 'revoredo.rodrigo@zentricadigital.com', 'Revoredo', 'Chocano', 'Gerente general', 1, '+51994550203', '', '', NULL, '', 2, 86, NULL, '$2y$10$oEKLssbZGKviBwTkkJudluqHYLG9smLu3CArCNZDK.X3aC9q.HYzC', NULL, 2, 1, '2023-06-09 00:50:55', '2023-06-09 00:50:55'),
(477, 'Patricia', 'patricia.paredes@total-comunicaciones.com', 'Paredes', '', 'Administrador', 2, '+51954016325', '', '', NULL, '', 2, 86, NULL, '$2y$10$rE4.MqG5NSA4f0DXJ2DTMurMhjFKBhyknsAHPC6DppsiW3/Xu8LA6', NULL, 4, 1, '2023-06-09 00:51:36', '2023-06-09 00:51:36'),
(478, 'Paola', 'gerencia.asistente@zoluxiones.com', 'Giurato', '', 'Asistente de gerencia', 2, '+51989184620', '', '', NULL, '', 2, 87, NULL, '$2y$10$qW5zygPjflvdA6VOBfLV4exvzj8al4cfgmjdQDLDEBnaMkgvHw2hi', NULL, 4, 1, '2023-06-09 00:52:20', '2023-06-09 00:52:20'),
(479, 'Mary', 'tesoreria@zoluxiones.com', 'Canales', '', 'Jefe de tesorería', 2, '+51930807982', '', '', NULL, '', 2, 87, NULL, '$2y$10$IbpGcaGNP66MJFNXMxZ.2.s03UeY4Dqq4VMblq0tRf2MPgkuW3BHe', NULL, 2, 1, '2023-06-09 00:55:25', '2023-06-09 00:55:25'),
(480, 'Maria', 'mariaelena.peralta-ext@zoluxiones.com', 'Elenea', 'Peralta', 'Gerente de administración y finanzas', 2, '+51985594222', '', '', NULL, '', 2, 87, NULL, '$2y$10$JphKusGOoMBEB3CLZY0LM.iAVuQ1/eXzq0yNTDQbYS6aWojdL6KTK', NULL, 2, 1, '2023-06-09 00:56:15', '2023-06-09 00:56:15'),
(481, 'Henry', 'asistente.marketing@zoluxiones.com', 'Santa', 'Cruz', 'Diseño', 1, '+51934783580', '', '', NULL, '', 2, 87, NULL, '$2y$10$pq6BuNXO51A4r37dUYQEf.QjEJGraxtdusjgI6qghgFoJGKYEKLUO', NULL, 4, 1, '2023-06-09 00:57:05', '2023-06-09 00:57:05'),
(482, 'Grecia', 'grecia.huaman-le@conxultiva.com', 'Huaman', '', 'Coordinador de marketing', 2, '+51981039526', '', '', NULL, '', 2, 87, NULL, '$2y$10$MIQkMSe9.bGRFUmIxsEp1e1Aet5UO53WZqfmsFSNZ8axdco10Abga', NULL, 4, 1, '2023-06-09 00:58:39', '2023-06-09 00:58:39'),
(483, 'Gerardo', 'gerardo.lopez@zoluxiones.com', 'López', '', 'Gerente', 1, '+51993532761', '', '', NULL, '', 2, 87, NULL, '$2y$10$6BSSFhKzNhn0fIj1sRQrb.z9L69.InqfrgAEd2gB9ri0MBcWWHoju', NULL, 2, 1, '2023-06-09 01:01:01', '2023-06-09 01:01:01'),
(484, 'Estuardo', 'estuardo.ahon@zoluxiones.com', 'Ahon', '', 'Director de negocios', 1, '+51942425877', '', '', NULL, '', 2, 87, NULL, '$2y$10$CDfzMVwqhyS/sqJmPY1eie/g5DAEqePNA/O/KT6rduOQdZVk2ZE8C', NULL, 4, 1, '2023-06-09 01:01:40', '2023-06-09 01:01:40'),
(485, 'Sergio', 'sdrc@siesa.com', 'Rodríguez', 'Correa', 'Gerente general', 1, '+51947233231', '', '', NULL, '', 2, 88, NULL, '$2y$10$Qoml2yXxqMw57iRMVvRoI.759agFh3SDs9Q6KWuM9CgVZk7mG2Gh2', NULL, 2, 1, '2023-06-09 01:06:38', '2023-06-09 01:06:38'),
(486, 'Alejandra', 'admonperu@siesa.com', 'Omaña', 'Gutierrez', 'Administradora', 2, '+51925197376', '', '', NULL, '', 2, 88, NULL, '$2y$10$Pes4b/udQxbbONhlGeRLQeCrs.pE/yManm9/FZBPIJ9Sx4uDvvA2C', NULL, 4, 1, '2023-06-09 01:08:12', '2023-06-09 01:08:12'),
(487, 'Heidi', 'hbravod@siesa.com', 'Bravo', '', 'Gerente comercial', 1, '+51912087493', '', '', NULL, '', 2, 88, NULL, '$2y$10$oN1yZNmkTfhUoyqcKFRf0eqsRV1PABAcaeErLru1.ORcGMFFdVS0m', NULL, 2, 1, '2023-06-09 01:08:57', '2023-06-09 01:08:57'),
(488, 'PATRICIA DANIUXA', 'marketing@cec.com.pe', 'SUAREZ', 'ROJAS', NULL, 2, '966193153', '', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$q6JYCogU3TMNPcdhSRl3W.IaUEXp9zG3IqaC.cvBKx.RXEFhGrmP.', NULL, 1, 1, '2023-07-04 18:17:02', '2023-07-04 18:17:02'),
(489, 'Camila', 'camile11@hotmail.com', 'Chacón', 'Duque', 'Gerente Comercial', 2, '+51984761491', '', '01/12/1989', NULL, 'Lima', NULL, 14, NULL, '$2y$10$dTTvRD8QR/cV1aH1S97x7eYVp5DZ/7uDCjRrkFmmNfjR5CtDxOdBi', NULL, 3, 0, '2023-08-09 17:09:47', '2023-08-09 17:26:36'),
(491, 'Camila', 'camilachd@gmail.com', 'chacon', 'Duque', 'Gerente Comercial', 2, '', '984761491', NULL, NULL, NULL, NULL, 14, NULL, '$2y$10$K9cGmC57/.FdzIeJMYnW1eZw.fpMCcjwUhkU.LUxzt1XS0naZH7q.', NULL, 3, 0, '2023-08-09 17:29:17', '2023-08-18 15:20:53'),
(492, 'Alexander', 'comunicacionescec2023@gmail.com', 'Carrillo', 'Leon', NULL, 1, '+51949253219', '', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$hL4iZ7Q5.1gyI1jjnUGQBeUKm9ewp8UU5heOAOfBHZ8/8g47dHEwS', NULL, 1, 1, '2023-08-09 17:38:49', '2023-08-09 17:38:49'),
(495, 'Gabriela', 'ganglade@byrperu.com', 'Anglade', 'Sánchez', 'Administración y Finanzas', 2, '921 178 547', '+51 921 178 547', NULL, '202308221751Foto tipo carnet Gabriela.jpg', 'Lima, Perú', 4, 41, NULL, '$2y$10$5gd6s8Ik0LBr.g3ibjkNbO/HXEd8JZVvFSZzeEg.65Kv8h69k7F3.', NULL, 2, 0, '2023-08-18 17:35:03', '2023-08-23 22:18:57'),
(496, 'Katherine', 'kescalante@sanitasperu.com.pe', 'Escalante', 'Matos', 'Coordinadora de Marketing', 2, '+51943440393', '', '', NULL, '', 6, 192, NULL, '$2y$10$TeX2.9qKeOHlN5z2qkvMbeMzpQzhBRcgHe7tNL1a6TXU..lYNrlpG', NULL, 2, 1, '2023-08-18 17:49:35', '2023-08-18 17:49:35'),
(497, 'Valeria', 'valeria.trujillo@uhy-bsa.com', 'Trujillo', 'Vera', 'Analista de Marketing', 2, '+51967286798', '', '', NULL, '', 6, 46, NULL, '$2y$10$GC3nk1jzShgFLLolRmiYD.0gm79arCobgic.O4fwkPzf07Bu4q0Ru', NULL, 2, 1, '2023-08-18 18:56:03', '2023-08-18 18:56:03'),
(498, 'Sergio David', 'gestion.peru@serviefectivo.com.co', 'Valverde', 'Inga', 'Administrador', 1, '+51960396713', '', NULL, NULL, NULL, 2, 209, NULL, '$2y$10$.8frq81Btk3IpHrh9tP7Ue.WH5ASBtts2GuGH3cInep73J99yTCny', NULL, 2, 1, '2023-08-21 16:02:40', '2023-08-21 17:21:54'),
(499, 'Carlos Javier', 'gerencia@meyan.com', 'García', 'Hernández', 'Representante Legal', 1, '+51962889435', '', '', NULL, '', 2, 207, NULL, '$2y$10$5hbDvXhQzK0IFhGKo5fiQOWnECNmFDCJieLHgK6H5obNoHDPSR.J6', NULL, 2, 1, '2023-08-21 17:17:38', '2023-08-21 17:17:38'),
(500, 'Sergio', 'sergio.garay@gobrilliant.com', 'Garay', 'Muñoz', 'Marketing Analyst', 1, '+51968144896', '', '', NULL, '', 6, 212, NULL, '$2y$10$FvLI5njx7rUCPpgd7djeQOlS2qX1u1Mqau4XzuYD1frCBdCzXfq2O', NULL, 2, 1, '2023-08-22 00:24:47', '2023-08-22 00:24:47'),
(501, 'Gustavo', 'gustavo.revilla@lockton.com', 'Revilla', 'Villacorta', 'Gerente Comercial', 1, '', '', NULL, NULL, NULL, 2, 213, NULL, '$2y$10$hTk46MS/MhSkl901p3bDF.xMm309G5nsNEJKf/rGsayCwX5ndt8Wm', NULL, 2, 1, '2023-08-22 00:31:24', '2023-08-23 23:58:18'),
(502, 'Michel Brayan', 'sistemas@pertel.pe', 'Perez', 'Llaullipoma', 'Asistente de Sistemas', 1, '+51960227495', '', '', NULL, '', 4, 205, NULL, '$2y$10$ssMzQtJoqshJki0ni7.afuVAHZM06ahtshGJnrKGtmmU8258tm14K', NULL, 2, 1, '2023-08-22 17:39:17', '2023-08-22 17:39:17'),
(503, 'Enmanuel', 'epalomino@byrperu.com', 'Palomino', NULL, 'Gerente General', 1, '+51 965 462 667', '965 462 667', '01/01/1984', '202308221745Foto carnet Enmanuel Palomino.jpg', 'Lima, Perú', NULL, 41, NULL, '$2y$10$x9tNNqc6WwtP8Ihh.tmKU.5SHY5v67YCCRaNLBw2Z5fK7rg.7dMBy', NULL, 2, 1, '2023-08-23 00:45:31', '2023-08-23 01:01:45'),
(504, 'Adriana', 'acorvo@byrperu.com', 'Corvo', 'Albino', 'Ejecutiva Comercial', 1, '931 270 145', '+51 931 270 145', NULL, '202308231553Foto carnet Adriana .jpg', 'Lima, Perú', NULL, 41, NULL, '$2y$10$bSCsvcUBHOrEbd2PvUpqe.PRUPms9IVrZiDQi/pgO8oop4o/3WTsi', NULL, 2, 1, '2023-08-23 00:54:37', '2023-08-25 00:30:24'),
(510, 'Sibil', 'proyectos@itbcp.com', 'Regalado', NULL, 'Jefe de Proyectos', 2, '', '', NULL, NULL, NULL, 6, 147, NULL, '$2y$10$n3JpwJF2xDSI2I.9W7Rh/OtbhHW5nMZBdD6AFzwDStMAbUOomNXhy', NULL, 2, 1, '2023-08-25 17:25:58', '2023-09-08 18:43:52'),
(513, 'LUIS FERNANDO', 'director@cec.com.pe', 'GOMEZ', 'NOSSA', NULL, 1, '+51 980 685 100', '', NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$LDunE.xdibohAK.JCYAwV.AawtgReus4.gVwi4NDsGogR1EYCvA1C', NULL, 1, 1, '2023-08-28 19:50:57', '2023-08-28 19:50:57'),
(514, 'Carlos', 'cjcarvajal@arquitecturademarca.com.co', 'Carvajal', '', 'Gerente General', 1, '', '', '', NULL, '', 2, 215, NULL, '$2y$10$.9V2XL66zebyXv.BLAk/..C5qdyf7tLLUzDew7vTx8hDEVZjiebAe', NULL, 2, 1, '2023-08-31 21:45:24', '2023-08-31 21:45:24'),
(515, 'Angélica', 'agomez@eclass.cl', 'Gómez', 'Restrepo', 'Directora de servicios', 2, '+51991954015', '', '05/11/1986', '202309071326eclass fondo rojo.jpg', 'Lima', 2, 216, NULL, '$2y$10$oY6Ku6dHo7rUqLhfFy/VgeGHfLIHDXjnpu.NZXp/1.ywLsXOTvqia', NULL, 2, 1, '2023-09-01 17:59:00', '2023-09-07 20:26:48'),
(518, 'Luisa Fernanda', 'administracion@protecol.pe', 'Vargas', '', 'Subgerente', 2, '', '', '', NULL, '', 2, 217, NULL, '$2y$10$2FXa1YFjHrLdDTb4qWN87Omf7.ffVv0WY0.faXdEh9b4aKbDU67JC', NULL, 2, 1, '2023-09-06 19:49:32', '2023-09-06 19:49:32'),
(519, 'Jorge Alfredo', 'jalurita@grupotamoin.com', 'Lurita', '', 'Responsable Comercial', 1, '', '', '', NULL, '', 5, 211, NULL, '$2y$10$QPsEYFmS71Vz121N85SZoOaG6W3liqn/A5BZKhwQWe6jqi2y0u41K', NULL, 2, 1, '2023-09-06 23:53:54', '2023-09-06 23:53:54'),
(522, 'Patricia Lorena', 'patricia.allca@servimeters.com.pe', 'Allca', 'Toribio', 'Ejecutiva comercial', 2, '+511 987556752', '', NULL, NULL, NULL, NULL, 197, NULL, '$2y$10$x43c3oVZRLBgMtEJJ3KsUOFZo4xHBiaGkHP4fK9p9Y1MJDvzBOZrW', NULL, 2, 0, '2023-09-07 20:54:08', '2023-09-08 20:30:59'),
(523, 'Roger Eugenio', 'roger.quiroz@servimeters.com.pe', 'Quiroz', 'Guillen', 'Ejecutivo Comercial', 1, '+511981 109 073', '', NULL, NULL, NULL, NULL, 197, NULL, '$2y$10$mnk/heIDXzgE6sUJwRx4d.f1eFR6rtaetBI5d7sOkxCb/cIc37II.', NULL, 2, 0, '2023-09-07 20:54:44', '2023-09-08 20:29:52'),
(524, 'Fernanda', 'fernanda.castillo@servimeters.com', 'Castillo', '', 'Jefe de Mercadeo', 2, '', '', '', NULL, '', 6, 197, NULL, '$2y$10$Gdg7YmnpPJCkYAm828Lzzu3nq.K0fM6NYgvwm4b794s9ayoW4HgKC', NULL, 2, 1, '2023-09-08 18:02:18', '2023-09-08 18:02:18'),
(525, 'Sally Allison', 'svasquez@terahsac.com', 'Vásquez', 'Ramírez', 'Ejecutivo Comercial', 2, '', '', '', NULL, '', 5, 72, NULL, '$2y$10$t70FNSQ0TiabAZVdD0B3H.mn1e.RbnrS.oaSpII75Yj4qzPFJgpAi', NULL, 2, 1, '2023-09-14 19:55:33', '2023-09-14 19:55:33'),
(526, 'Mercedes', 'mercedes.juarez@manplag.com.pe', 'Juarez', '', 'Gerente general', 2, '', '', '', NULL, '', 2, 218, NULL, '$2y$10$HHUNUDEkhnT/pZB6d7sGjOjZB1krCq5Y86W5wt/R12UIwjjioHRcC', NULL, 2, 1, '2023-09-14 23:38:45', '2023-09-14 23:38:45'),
(527, 'Rita Rossana', 'rbustamante@bbidelperu.com', 'Bustamante', '', 'Gerente general', 2, '', '', '', NULL, '', 2, 50, NULL, '$2y$10$.Wihyq36jNpDjTMW1uBBPOXPUvHFzWZyHGS5LW27aVXuTHseZPBhu', NULL, 2, 1, '2023-09-19 15:34:45', '2023-09-19 15:34:45'),
(528, 'Ayme Denisse', 'ayme.limaco@gmail.com', 'Limaco', '', 'Gerente general', 2, '', '', '', NULL, '', 2, 219, NULL, '$2y$10$a7frauIrdjJCYizLkKNn3eLeNFxBlS.SDf7ZtwIr5NO.ddp4grYJK', NULL, 2, 1, '2023-09-20 23:17:11', '2023-09-20 23:17:11'),
(529, 'Andrea', 'alianzas@fygproyectos.com', 'Rozo', 'Daza', 'Directora de Alianzas', 2, '', '', '', NULL, '', 2, 220, NULL, '$2y$10$FOGBEAhmeEyOH8UZ588o4.mE6cwzJnUGna/4YynUG6Qtp5HXnwHBu', NULL, 2, 1, '2023-09-21 21:57:56', '2023-09-21 21:57:56'),
(530, 'Ana Paulina', 'anapaulina.forero@teccasas.onmicrosoft.com', 'Forero', '', 'Gerente general', 2, '', '', '', NULL, '', 2, 100, NULL, '$2y$10$1HQ6b8w1NxiCaTydyE3sqeLapjPG0/2DrdbhUnMFKO1/UDfCWdFvW', NULL, 2, 1, '2023-09-27 00:16:22', '2023-09-27 00:16:22'),
(531, 'Carlos', 'carlos.rojas@ctic.pe', 'Rojas', NULL, 'gerente general', 1, '', '', NULL, NULL, NULL, 2, 108, NULL, '$2y$10$4ZZGqFyP5gEMQhSRjvzFEe4agGR2gELRCqSSe2cHzrOQIbYtUsMC6', NULL, 2, 1, '2023-09-29 00:44:48', '2023-09-29 00:59:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_empresa`
--

CREATE TABLE `usuarios_empresa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `empresa_id` bigint(20) UNSIGNED NOT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_sectores`
--

CREATE TABLE `usuario_sectores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `sector_id` varchar(191) DEFAULT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `principal_secundario` varchar(191) DEFAULT NULL,
  `flestado` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_sectores`
--

INSERT INTO `usuario_sectores` (`id`, `usuario_id`, `sector_id`, `rol_id`, `principal_secundario`, `flestado`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 1, '1', 1, '2022-12-21 18:35:07', '2022-12-21 18:35:07'),
(2, 5, '10', 2, '1', 1, '2022-12-21 19:05:04', '2023-02-14 18:21:42'),
(3, 6, '1', 1, '1', 1, '2022-12-21 19:05:25', '2022-12-21 19:05:25'),
(4, 7, '1', 1, '1', 1, '2022-12-21 20:12:03', '2022-12-21 20:12:03'),
(5, 8, '1', 1, '1', 1, '2023-02-02 19:51:06', '2023-02-02 19:51:06'),
(6, 9, '6', 1, '1', 1, '2023-02-02 20:38:17', '2023-02-02 20:38:17'),
(7, 10, '10', 2, '1', 1, '2023-02-14 18:13:52', '2023-02-14 18:13:52'),
(8, 11, '9', 2, '1', 1, '2023-02-14 18:35:01', '2023-02-14 18:35:01'),
(9, 12, '9', 2, '1', 1, '2023-02-14 18:48:39', '2023-02-14 18:48:39'),
(10, 13, '9', 1, '1', 1, '2023-02-14 18:49:51', '2023-02-14 18:49:51'),
(11, 14, '11', 2, '1', 1, '2023-02-14 19:02:46', '2023-02-14 19:02:46'),
(12, 15, '11', 1, '1', 1, '2023-04-06 02:39:58', '2023-08-09 17:26:55'),
(14, 20, '11', 2, '1', 1, '2023-05-05 00:34:21', '2023-05-05 00:34:21'),
(15, 21, '11', 2, '1', 1, '2023-05-05 07:14:13', '2023-05-05 07:14:13'),
(16, 22, '7', 2, '1', 1, '2023-05-05 07:16:34', '2023-05-05 07:16:34'),
(17, 42, '5', 1, '1', 1, '2023-05-08 15:23:55', '2023-05-08 15:23:55'),
(18, 45, '5', 1, '1', 1, '2023-05-08 17:04:11', '2023-05-08 17:04:11'),
(19, 46, '5', 1, '1', 1, '2023-05-08 21:24:29', '2023-05-08 21:24:29'),
(20, 47, '5', 1, '1', 1, '2023-05-15 23:09:41', '2023-05-15 23:09:41'),
(21, 48, '5', 1, '1', 1, '2023-06-05 16:38:32', '2023-06-05 16:38:32'),
(22, 49, '5', 1, '1', 1, '2023-06-05 16:40:29', '2023-06-05 16:40:29'),
(23, 50, '5', 1, '1', 1, '2023-06-05 16:51:42', '2023-06-05 16:51:42'),
(24, 51, '5', 1, '1', 1, '2023-06-05 16:53:00', '2023-06-05 16:53:00'),
(25, 52, '5', 1, '1', 1, '2023-06-05 16:58:58', '2023-06-05 16:58:58'),
(26, 53, '6', 1, '1', 1, '2023-06-05 17:01:57', '2023-06-05 17:01:57'),
(27, 54, '6', 2, '1', 1, '2023-06-05 17:04:51', '2023-06-05 17:04:51'),
(28, 55, '6', 6, '1', 1, '2023-06-05 17:07:47', '2023-06-05 17:07:47'),
(29, 56, '5', 1, '1', 1, '2023-06-05 17:08:32', '2023-06-05 17:08:32'),
(30, 57, '6', 6, '1', 1, '2023-06-05 17:09:24', '2023-06-05 17:09:24'),
(31, 58, '6', 1, '1', 1, '2023-06-05 17:12:55', '2023-06-05 17:12:55'),
(32, 59, '6', 6, '1', 1, '2023-06-05 17:14:57', '2023-06-05 17:14:57'),
(33, 60, '6', 6, '1', 1, '2023-06-05 17:15:48', '2023-06-05 17:15:48'),
(34, 61, '6', 5, '1', 1, '2023-06-05 17:18:21', '2023-06-05 17:18:21'),
(35, 62, '6', 1, '1', 1, '2023-06-05 17:20:21', '2023-06-05 17:20:21'),
(36, 63, '6', 1, '1', 1, '2023-06-05 17:22:31', '2023-06-05 17:22:31'),
(37, 64, '6', 1, '1', 1, '2023-06-05 17:24:33', '2023-06-05 17:24:33'),
(38, 65, '6', 1, '1', 1, '2023-06-05 17:26:46', '2023-06-05 17:26:46'),
(39, 66, '6', 1, '1', 1, '2023-06-05 17:29:29', '2023-06-05 17:29:29'),
(40, 67, '6', 1, '1', 1, '2023-06-05 17:31:39', '2023-06-05 17:31:39'),
(41, 68, '13', 2, '1', 1, '2023-06-05 17:32:07', '2023-06-05 17:32:07'),
(42, 69, '6', 1, '1', 1, '2023-06-05 17:33:25', '2023-06-05 17:33:25'),
(43, 70, '6', 1, '1', 1, '2023-06-05 17:35:00', '2023-06-05 17:35:00'),
(44, 71, '6', 1, '1', 1, '2023-06-05 17:51:01', '2023-06-05 17:51:01'),
(45, 72, '6', 1, '1', 1, '2023-06-05 17:58:39', '2023-06-05 17:58:39'),
(46, 73, '6', 1, '1', 1, '2023-06-05 18:02:05', '2023-06-05 18:02:05'),
(47, 74, '6', 1, '1', 1, '2023-06-05 18:03:02', '2023-06-05 18:03:02'),
(48, 75, '6', 1, '1', 1, '2023-06-05 18:04:39', '2023-06-05 18:04:39'),
(49, 76, '6', 1, '1', 1, '2023-06-05 18:18:23', '2023-06-05 18:18:23'),
(50, 77, '6', 1, '1', 1, '2023-06-05 18:22:31', '2023-06-05 18:22:31'),
(51, 78, '6', 1, '1', 1, '2023-06-05 18:25:19', '2023-06-05 18:25:19'),
(52, 79, '5', 1, '1', 1, '2023-06-05 18:27:47', '2023-06-05 18:27:47'),
(53, 80, '5', 1, '1', 1, '2023-06-05 18:29:20', '2023-06-05 18:29:20'),
(54, 81, '13', 1, '1', 1, '2023-06-05 18:45:24', '2023-06-05 18:45:24'),
(55, 82, '13', 1, '1', 1, '2023-06-05 18:51:41', '2023-06-05 18:51:41'),
(56, 83, '13', 1, '1', 1, '2023-06-05 18:52:46', '2023-06-05 18:52:46'),
(57, 84, '5', 1, '1', 1, '2023-06-05 19:29:18', '2023-06-05 19:29:18'),
(58, 85, '13', 1, '1', 1, '2023-06-05 19:37:42', '2023-06-05 19:39:29'),
(59, 86, '13', 1, '1', 1, '2023-06-05 19:39:18', '2023-06-05 19:39:18'),
(60, 87, '13', 1, '1', 1, '2023-06-05 19:45:15', '2023-06-05 19:45:15'),
(61, 88, '13', 1, '1', 1, '2023-06-05 19:47:36', '2023-06-05 19:47:36'),
(62, 89, '11', 1, '1', 1, '2023-06-05 19:50:28', '2023-06-05 19:50:28'),
(63, 90, '5', 1, '1', 1, '2023-06-05 19:58:36', '2023-06-05 19:58:36'),
(64, 91, '5', 1, '1', 1, '2023-06-05 20:01:07', '2023-06-05 20:01:07'),
(65, 92, '5', 1, '1', 1, '2023-06-05 20:05:40', '2023-06-05 20:05:40'),
(66, 93, '5', 1, '1', 1, '2023-06-05 20:15:58', '2023-06-05 20:15:58'),
(67, 94, '11', 1, '1', 1, '2023-06-05 20:53:16', '2023-06-05 20:53:16'),
(68, 95, '11', 1, '1', 1, '2023-06-05 20:54:53', '2023-06-05 20:54:53'),
(69, 96, '11', 1, '1', 1, '2023-06-05 21:21:32', '2023-06-05 21:21:32'),
(70, 97, '12', 1, '1', 1, '2023-06-05 21:25:02', '2023-06-05 21:25:02'),
(71, 98, '5', 1, '1', 1, '2023-06-05 21:25:57', '2023-06-05 21:25:57'),
(72, 99, '11', 1, '1', 1, '2023-06-05 21:28:42', '2023-06-05 21:28:42'),
(73, 100, '5', 1, '1', 1, '2023-06-05 21:31:30', '2023-06-05 21:31:30'),
(74, 101, '11', 1, '1', 1, '2023-06-05 21:43:22', '2023-06-05 21:43:22'),
(75, 102, '5', 1, '1', 1, '2023-06-05 21:48:13', '2023-06-05 21:48:13'),
(76, 103, '11', 1, '1', 1, '2023-06-05 21:49:16', '2023-06-05 21:49:16'),
(77, 104, '5', 1, '1', 1, '2023-06-05 21:57:08', '2023-06-05 21:57:08'),
(78, 105, '11', 1, '1', 1, '2023-06-05 22:00:36', '2023-06-05 22:00:36'),
(79, 106, '11', 1, '1', 1, '2023-06-05 22:58:29', '2023-06-05 22:58:29'),
(80, 107, '11', 1, '1', 1, '2023-06-05 23:04:22', '2023-06-05 23:04:22'),
(81, 108, '11', 1, '1', 1, '2023-06-05 23:07:16', '2023-06-05 23:07:16'),
(82, 109, '11', 1, '1', 1, '2023-06-05 23:10:36', '2023-06-05 23:10:36'),
(83, 110, '13', 1, '1', 1, '2023-06-06 00:06:13', '2023-06-06 00:06:13'),
(84, 111, '13', 1, '1', 1, '2023-06-06 00:07:45', '2023-06-06 00:07:45'),
(85, 112, '13', 1, '1', 1, '2023-06-06 00:08:58', '2023-06-06 00:08:58'),
(86, 113, '13', 1, '1', 1, '2023-06-06 00:16:15', '2023-06-06 00:16:15'),
(87, 114, '13', 1, '1', 1, '2023-06-06 00:18:09', '2023-06-06 00:18:09'),
(88, 115, '5', 1, '1', 1, '2023-06-06 00:19:22', '2023-06-06 00:19:22'),
(89, 116, '13', 1, '1', 1, '2023-06-06 00:20:22', '2023-06-06 00:20:22'),
(90, 117, '5', 1, '1', 1, '2023-06-06 00:22:10', '2023-06-06 00:22:10'),
(91, 118, '13', 1, '1', 1, '2023-06-06 00:23:15', '2023-06-06 00:23:15'),
(92, 119, '13', 1, '1', 1, '2023-06-06 00:25:14', '2023-06-06 00:25:14'),
(93, 120, '13', 1, '1', 1, '2023-06-06 00:27:52', '2023-06-06 00:27:52'),
(94, 121, '13', 1, '1', 1, '2023-06-06 00:30:03', '2023-06-06 00:30:03'),
(95, 122, '13', 1, '1', 1, '2023-06-06 00:31:24', '2023-06-06 00:31:24'),
(96, 123, '5', 1, '1', 1, '2023-06-06 00:40:58', '2023-06-06 00:40:58'),
(97, 124, '11', 1, '1', 1, '2023-06-06 00:58:16', '2023-06-06 00:58:16'),
(98, 125, '11', 1, '1', 1, '2023-06-06 01:02:16', '2023-06-06 01:02:16'),
(99, 126, '11', 1, '1', 1, '2023-06-06 02:57:06', '2023-06-06 02:57:06'),
(100, 127, '5', 1, '1', 1, '2023-06-06 03:00:58', '2023-06-06 03:00:58'),
(101, 128, '11', 1, '1', 1, '2023-06-06 03:30:29', '2023-06-06 03:30:29'),
(102, 129, '11', 1, '1', 1, '2023-06-06 03:36:07', '2023-06-06 03:36:07'),
(103, 130, '11', 1, '1', 1, '2023-06-06 03:41:09', '2023-06-06 03:41:09'),
(104, 131, '11', 1, '1', 1, '2023-06-06 03:43:49', '2023-06-06 03:43:49'),
(105, 132, '5', 1, '1', 1, '2023-06-06 03:45:43', '2023-06-06 03:45:43'),
(106, 133, '11', 1, '1', 1, '2023-06-06 03:48:18', '2023-06-06 03:48:18'),
(107, 134, '11', 1, '1', 1, '2023-06-06 03:50:49', '2023-06-06 03:50:49'),
(108, 135, '11', 1, '1', 1, '2023-06-06 03:55:56', '2023-06-06 03:55:56'),
(109, 136, '11', 1, '1', 1, '2023-06-06 03:58:12', '2023-06-06 03:58:12'),
(110, 137, '11', 1, '1', 1, '2023-06-06 03:59:16', '2023-06-06 03:59:16'),
(111, 138, '7', 1, '1', 1, '2023-06-06 04:12:36', '2023-06-06 04:12:36'),
(112, 139, '7', 1, '1', 1, '2023-06-06 04:14:49', '2023-06-06 04:14:49'),
(113, 140, '7', 1, '1', 1, '2023-06-06 04:20:42', '2023-06-06 04:20:42'),
(114, 141, '7', 1, '1', 1, '2023-06-06 04:22:55', '2023-06-06 04:22:55'),
(115, 142, '7', 1, '1', 1, '2023-06-06 04:24:20', '2023-06-06 04:24:20'),
(116, 143, '7', 1, '1', 1, '2023-06-06 04:32:28', '2023-06-06 04:32:28'),
(117, 144, '7', 1, '1', 1, '2023-06-06 04:33:30', '2023-06-06 04:33:30'),
(118, 145, '7', 1, '1', 1, '2023-06-06 04:40:18', '2023-06-06 04:40:18'),
(119, 146, '7', 1, '1', 1, '2023-06-06 04:41:20', '2023-06-06 04:41:20'),
(120, 147, '7', 1, '1', 1, '2023-06-06 04:51:00', '2023-06-06 04:51:00'),
(121, 148, '7', 1, '1', 1, '2023-06-06 04:52:33', '2023-06-06 04:52:33'),
(122, 149, '7', 1, '1', 1, '2023-06-06 04:53:54', '2023-06-06 04:53:54'),
(123, 150, '13', 1, '1', 1, '2023-06-06 04:56:41', '2023-06-06 04:56:41'),
(124, 151, '13', 1, '1', 1, '2023-06-06 04:57:34', '2023-06-06 04:57:34'),
(125, 152, '5', 1, '1', 1, '2023-06-06 05:03:54', '2023-06-06 05:03:54'),
(126, 153, '5', 1, '1', 1, '2023-06-06 17:43:59', '2023-06-06 17:43:59'),
(127, 154, '13', 1, '1', 1, '2023-06-06 18:09:17', '2023-06-06 18:09:17'),
(128, 155, '13', 1, '1', 1, '2023-06-06 18:12:59', '2023-06-06 18:12:59'),
(129, 156, '13', 1, '1', 1, '2023-06-06 21:48:03', '2023-06-06 21:48:03'),
(130, 157, '13', 1, '1', 1, '2023-06-06 23:06:25', '2023-06-06 23:06:37'),
(131, 158, '13', 1, '1', 1, '2023-06-06 23:07:54', '2023-06-06 23:07:54'),
(132, 159, '7', 1, '1', 1, '2023-06-06 23:09:20', '2023-06-06 23:09:20'),
(133, 160, '7', 1, '1', 1, '2023-06-06 23:11:41', '2023-06-06 23:11:41'),
(134, 161, '7', 1, '1', 1, '2023-06-06 23:14:24', '2023-06-06 23:14:24'),
(135, 162, '7', 1, '1', 1, '2023-06-06 23:18:37', '2023-06-06 23:18:37'),
(136, 163, '7', 1, '1', 1, '2023-06-07 00:23:21', '2023-06-07 00:28:14'),
(137, 164, '7', 1, '1', 1, '2023-06-07 00:28:00', '2023-06-07 00:28:00'),
(138, 165, '11', 1, '1', 1, '2023-06-07 00:30:36', '2023-06-07 00:30:36'),
(139, 166, '5', 1, '1', 1, '2023-06-07 00:31:51', '2023-06-07 00:31:51'),
(140, 167, '5', 1, '1', 1, '2023-06-07 02:16:40', '2023-06-07 02:16:40'),
(141, 168, '5', 1, '1', 1, '2023-06-07 02:30:38', '2023-06-07 02:30:38'),
(142, 169, '5', 1, '1', 1, '2023-06-07 02:34:54', '2023-06-07 02:34:54'),
(143, 170, '5', 1, '1', 1, '2023-06-07 02:37:30', '2023-06-07 02:37:30'),
(144, 171, '5', 1, '1', 1, '2023-06-07 03:26:07', '2023-06-07 03:26:07'),
(145, 172, '5', 1, '1', 1, '2023-06-07 03:35:54', '2023-06-07 03:35:54'),
(146, 173, '5', 1, '1', 1, '2023-06-07 03:40:57', '2023-06-07 03:40:57'),
(147, 174, '5', 1, '1', 1, '2023-06-07 03:41:53', '2023-06-07 03:41:53'),
(148, 175, '5', 1, '1', 1, '2023-06-07 03:42:43', '2023-06-07 03:42:43'),
(149, 176, '5', 1, '1', 1, '2023-06-07 03:43:38', '2023-06-07 03:43:38'),
(150, 177, '5', 1, '1', 1, '2023-06-07 03:44:36', '2023-06-07 03:44:36'),
(151, 178, '5', 1, '1', 1, '2023-06-07 03:45:28', '2023-06-07 03:45:28'),
(152, 179, '11', 1, '1', 1, '2023-06-07 03:47:59', '2023-06-07 03:47:59'),
(153, 180, '11', 1, '1', 1, '2023-06-07 03:49:29', '2023-06-07 03:49:29'),
(154, 181, '11', 1, '1', 1, '2023-06-07 04:00:32', '2023-06-07 04:00:32'),
(155, 182, '11', 1, '1', 1, '2023-06-07 04:01:28', '2023-06-07 04:01:28'),
(156, 183, '5', 1, '1', 1, '2023-06-07 19:27:56', '2023-06-07 19:27:56'),
(157, 184, '11', 1, '1', 1, '2023-06-07 19:31:38', '2023-06-07 19:31:38'),
(158, 185, '11', 1, '1', 1, '2023-06-07 20:59:43', '2023-06-07 20:59:43'),
(159, 186, '11', 1, '1', 1, '2023-06-07 21:37:00', '2023-06-07 21:37:00'),
(160, 187, '13', 1, '1', 1, '2023-06-07 21:39:36', '2023-06-07 21:39:36'),
(161, 188, '13', 1, '1', 1, '2023-06-07 22:03:23', '2023-06-07 22:03:23'),
(162, 189, '11', 1, '1', 1, '2023-06-07 22:06:04', '2023-06-07 22:06:04'),
(163, 190, '11', 1, '1', 1, '2023-06-07 22:09:32', '2023-06-07 22:09:32'),
(164, 191, '13', 1, '1', 1, '2023-06-07 22:11:36', '2023-06-07 22:11:36'),
(165, 192, '13', 1, '1', 1, '2023-06-07 22:12:28', '2023-06-07 22:12:28'),
(166, 193, '13', 1, '1', 1, '2023-06-07 22:13:24', '2023-06-07 22:13:24'),
(167, 194, '13', 1, '1', 1, '2023-06-07 22:17:46', '2023-06-07 22:17:46'),
(168, 195, '13', 1, '1', 1, '2023-06-07 22:18:34', '2023-06-07 22:18:34'),
(169, 196, '13', 1, '1', 1, '2023-06-07 22:19:16', '2023-06-07 22:19:16'),
(170, 197, '13', 1, '1', 1, '2023-06-07 22:20:00', '2023-06-07 22:20:00'),
(171, 198, '13', 1, '1', 1, '2023-06-07 22:24:39', '2023-06-07 22:24:39'),
(172, 199, '13', 1, '1', 1, '2023-06-07 22:26:48', '2023-06-07 22:26:48'),
(173, 200, '13', 1, '1', 1, '2023-06-07 22:31:32', '2023-06-07 22:31:32'),
(174, 201, '13', 1, '1', 1, '2023-06-07 22:32:57', '2023-06-07 22:32:57'),
(175, 202, '5', 1, '1', 1, '2023-06-07 23:16:52', '2023-06-07 23:16:52'),
(176, 203, '5', 1, '1', 1, '2023-06-07 23:17:58', '2023-06-07 23:17:58'),
(177, 204, '5', 1, '1', 1, '2023-06-07 23:19:05', '2023-06-07 23:19:05'),
(178, 205, '6', 1, '1', 1, '2023-06-07 23:26:21', '2023-06-07 23:26:21'),
(179, 206, '6', 1, '1', 1, '2023-06-07 23:27:11', '2023-06-07 23:27:11'),
(180, 207, '6', 1, '1', 1, '2023-06-07 23:31:51', '2023-06-07 23:31:51'),
(181, 208, '6', 1, '1', 1, '2023-06-07 23:32:40', '2023-06-07 23:32:40'),
(182, 209, '6', 1, '1', 1, '2023-06-07 23:33:42', '2023-06-07 23:33:42'),
(183, 210, '6', 1, '1', 1, '2023-06-07 23:38:37', '2023-06-07 23:38:37'),
(184, 211, '6', 1, '1', 1, '2023-06-07 23:39:19', '2023-06-07 23:39:19'),
(185, 212, '5', 1, '1', 1, '2023-06-07 23:42:05', '2023-06-07 23:42:05'),
(186, 213, '7', 1, '1', 1, '2023-06-07 23:43:16', '2023-06-07 23:43:16'),
(187, 214, '7', 1, '1', 1, '2023-06-07 23:47:39', '2023-06-07 23:47:39'),
(188, 215, '7', 1, '1', 1, '2023-06-07 23:48:32', '2023-06-07 23:48:32'),
(189, 216, '7', 1, '1', 1, '2023-06-07 23:54:06', '2023-06-07 23:54:06'),
(190, 217, '7', 1, '1', 1, '2023-06-08 00:00:00', '2023-06-08 00:00:00'),
(191, 218, '7', 1, '1', 1, '2023-06-08 00:00:58', '2023-06-08 00:00:58'),
(192, 219, '5', 1, '1', 1, '2023-06-08 00:02:43', '2023-06-08 00:02:43'),
(193, 220, '13', 1, '1', 1, '2023-06-08 00:16:59', '2023-06-08 00:16:59'),
(194, 221, '13', 1, '1', 1, '2023-06-08 00:18:07', '2023-06-08 00:18:07'),
(195, 222, '13', 1, '1', 1, '2023-06-08 00:20:22', '2023-06-08 00:20:22'),
(196, 223, '13', 1, '1', 1, '2023-06-08 00:21:09', '2023-06-08 00:21:09'),
(197, 224, '13', 1, '1', 1, '2023-06-08 00:26:31', '2023-06-08 00:26:31'),
(198, 225, '13', 1, '1', 1, '2023-06-08 00:28:02', '2023-06-08 00:28:02'),
(199, 226, '13', 1, '1', 1, '2023-06-08 00:29:27', '2023-06-08 00:29:27'),
(200, 227, '13', 1, '1', 1, '2023-06-08 00:32:36', '2023-06-08 00:32:36'),
(201, 228, '13', 1, '1', 1, '2023-06-08 01:01:25', '2023-06-08 01:01:25'),
(202, 229, '13', 1, '1', 1, '2023-06-08 01:07:22', '2023-06-08 01:07:22'),
(203, 230, '7', 1, '1', 1, '2023-06-08 02:57:52', '2023-06-08 02:57:52'),
(204, 231, '7', 1, '1', 1, '2023-06-08 02:59:42', '2023-06-08 02:59:42'),
(205, 232, '7', 1, '1', 1, '2023-06-08 03:02:03', '2023-06-08 03:02:03'),
(206, 233, '13', 1, '1', 1, '2023-06-08 03:08:29', '2023-06-08 03:08:29'),
(207, 234, '7', 1, '1', 1, '2023-06-08 03:09:59', '2023-06-08 03:09:59'),
(208, 235, '5', 1, '1', 1, '2023-06-08 03:12:00', '2023-06-08 03:12:00'),
(209, 236, '5', 1, '1', 1, '2023-06-08 03:13:51', '2023-06-08 03:13:51'),
(210, 237, '5', 1, '1', 1, '2023-06-08 03:15:55', '2023-06-08 03:15:55'),
(211, 238, '5', 1, '1', 1, '2023-06-08 03:16:58', '2023-06-08 03:16:58'),
(212, 239, '5', 1, '1', 1, '2023-06-08 03:18:02', '2023-06-08 03:18:02'),
(213, 240, '5', 1, '1', 1, '2023-06-08 03:19:02', '2023-06-08 03:19:02'),
(214, 241, '5', 1, '1', 1, '2023-06-08 03:20:13', '2023-06-08 03:20:13'),
(215, 242, '5', 1, '1', 1, '2023-06-08 03:20:59', '2023-06-08 03:20:59'),
(216, 243, '5', 1, '1', 1, '2023-06-08 03:21:50', '2023-06-08 03:21:50'),
(217, 244, '5', 1, '1', 1, '2023-06-08 03:23:28', '2023-06-08 03:23:28'),
(218, 245, '11', 1, '1', 1, '2023-06-08 03:32:37', '2023-06-08 03:32:37'),
(219, 246, '11', 1, '1', 1, '2023-06-08 03:33:39', '2023-06-08 03:33:39'),
(220, 247, '11', 1, '1', 1, '2023-06-08 03:42:06', '2023-06-08 03:42:06'),
(221, 248, '11', 1, '1', 1, '2023-06-08 03:44:31', '2023-06-08 03:44:31'),
(222, 249, '11', 1, '1', 1, '2023-06-08 03:45:29', '2023-06-08 03:45:29'),
(223, 250, '11', 1, '1', 1, '2023-06-08 03:47:26', '2023-06-08 03:47:26'),
(224, 251, '11', 1, '1', 1, '2023-06-08 03:48:17', '2023-06-08 03:48:17'),
(225, 252, '11', 1, '1', 1, '2023-06-08 03:49:45', '2023-06-08 03:49:45'),
(226, 253, '13', 1, '1', 1, '2023-06-08 04:40:02', '2023-06-08 04:40:02'),
(227, 254, '13', 1, '1', 1, '2023-06-08 04:40:42', '2023-06-08 04:40:42'),
(228, 255, '12', 1, '1', 1, '2023-06-08 04:41:42', '2023-06-08 04:41:42'),
(229, 256, '13', 1, '1', 1, '2023-06-08 04:42:43', '2023-06-08 04:42:43'),
(230, 257, '13', 1, '1', 1, '2023-06-08 04:44:14', '2023-06-08 04:44:14'),
(231, 258, '13', 1, '1', 1, '2023-06-08 04:45:13', '2023-06-08 04:45:13'),
(232, 259, '13', 1, '1', 1, '2023-06-08 04:49:13', '2023-06-08 04:49:13'),
(233, 260, '13', 1, '1', 1, '2023-06-08 04:50:55', '2023-06-08 04:50:55'),
(234, 261, '13', 1, '1', 1, '2023-06-08 04:52:47', '2023-06-08 04:52:47'),
(235, 262, '13', 1, '1', 1, '2023-06-08 04:53:56', '2023-06-08 04:53:56'),
(236, 263, '13', 1, '1', 1, '2023-06-08 04:54:46', '2023-06-08 04:54:46'),
(237, 264, '13', 1, '1', 1, '2023-06-08 04:56:04', '2023-06-08 04:56:04'),
(238, 265, '13', 1, '1', 1, '2023-06-08 04:56:59', '2023-06-08 04:56:59'),
(239, 266, '13', 1, '1', 1, '2023-06-08 04:57:42', '2023-06-08 04:57:42'),
(240, 267, '13', 1, '1', 1, '2023-06-08 04:58:34', '2023-06-08 04:58:34'),
(241, 268, '13', 1, '1', 1, '2023-06-08 04:59:23', '2023-06-08 04:59:23'),
(242, 269, '13', 1, '1', 1, '2023-06-08 05:02:58', '2023-06-08 05:02:58'),
(243, 270, '13', 1, '1', 1, '2023-06-08 05:03:49', '2023-06-08 05:03:49'),
(244, 271, '7', 1, '1', 1, '2023-06-08 05:09:29', '2023-06-08 05:09:29'),
(245, 272, '7', 1, '1', 1, '2023-06-08 05:10:35', '2023-06-08 05:10:35'),
(246, 273, '7', 1, '1', 1, '2023-06-08 05:12:19', '2023-06-08 05:12:19'),
(247, 274, '7', 1, '1', 1, '2023-06-08 05:13:01', '2023-06-08 05:13:01'),
(248, 275, '7', 1, '1', 1, '2023-06-08 05:14:35', '2023-06-08 05:14:35'),
(249, 276, '7', 1, '1', 1, '2023-06-08 05:15:22', '2023-06-08 05:15:22'),
(250, 277, '7', 1, '1', 1, '2023-06-08 05:19:16', '2023-06-08 05:19:16'),
(251, 278, '7', 1, '1', 1, '2023-06-08 05:20:00', '2023-06-08 05:20:00'),
(252, 279, '7', 1, '1', 1, '2023-06-08 05:20:58', '2023-06-08 05:20:58'),
(253, 280, '7', 1, '1', 1, '2023-06-08 05:22:16', '2023-06-08 05:22:16'),
(254, 281, '7', 1, '1', 1, '2023-06-08 05:23:40', '2023-06-08 05:23:40'),
(255, 282, '9', 1, '1', 1, '2023-06-08 05:26:51', '2023-06-08 05:26:51'),
(256, 283, '9', 1, '1', 1, '2023-06-08 05:32:02', '2023-06-08 05:32:02'),
(257, 284, '9', 1, '1', 1, '2023-06-08 05:32:59', '2023-06-08 05:32:59'),
(258, 285, '9', 1, '1', 1, '2023-06-08 05:34:05', '2023-06-08 05:34:05'),
(259, 286, '9', 1, '1', 1, '2023-06-08 05:37:33', '2023-06-08 05:37:33'),
(260, 287, '9', 1, '1', 1, '2023-06-08 05:39:03', '2023-06-08 05:39:03'),
(261, 288, '9', 1, '1', 1, '2023-06-08 05:42:15', '2023-06-08 05:42:15'),
(262, 289, '9', 1, '1', 1, '2023-06-08 05:45:24', '2023-06-08 05:45:24'),
(263, 290, '9', 1, '1', 1, '2023-06-08 05:47:55', '2023-06-08 05:47:55'),
(264, 291, '9', 1, '1', 1, '2023-06-08 05:48:49', '2023-06-08 05:48:49'),
(265, 292, '7', 1, '1', 1, '2023-06-08 05:51:36', '2023-06-08 05:51:36'),
(266, 293, '11', 1, '1', 1, '2023-06-08 05:58:02', '2023-06-08 05:58:02'),
(267, 294, '11', 1, '1', 1, '2023-06-08 05:59:20', '2023-06-08 05:59:20'),
(268, 295, '11', 1, '1', 1, '2023-06-08 06:00:38', '2023-06-08 06:00:38'),
(269, 296, '11', 1, '1', 1, '2023-06-08 06:05:34', '2023-06-08 06:05:34'),
(270, 297, '5', 1, '1', 1, '2023-06-08 16:41:01', '2023-06-08 16:41:01'),
(271, 298, '5', 1, '1', 1, '2023-06-08 16:41:45', '2023-06-08 16:41:45'),
(272, 299, '5', 1, '1', 1, '2023-06-08 16:42:24', '2023-06-08 16:42:24'),
(273, 300, '5', 1, '1', 1, '2023-06-08 16:43:04', '2023-06-08 16:43:04'),
(274, 301, '5', 1, '1', 1, '2023-06-08 16:43:43', '2023-06-08 16:43:43'),
(275, 302, '5', 1, '1', 1, '2023-06-08 16:44:29', '2023-06-08 16:44:29'),
(276, 303, '5', 1, '1', 1, '2023-06-08 16:45:15', '2023-06-08 16:45:15'),
(277, 304, '5', 1, '1', 1, '2023-06-08 16:45:56', '2023-06-08 16:45:56'),
(278, 305, '5', 1, '1', 1, '2023-06-08 16:46:35', '2023-06-08 16:46:35'),
(279, 306, '5', 1, '1', 1, '2023-06-08 16:47:59', '2023-06-08 16:47:59'),
(280, 307, '5', 1, '1', 1, '2023-06-08 16:48:48', '2023-06-08 16:48:48'),
(281, 308, '5', 1, '1', 1, '2023-06-08 16:49:35', '2023-06-08 16:49:35'),
(282, 309, '13', 1, '1', 1, '2023-06-08 16:50:36', '2023-06-08 16:50:36'),
(283, 310, '13', 1, '1', 1, '2023-06-08 16:51:35', '2023-06-08 16:51:35'),
(284, 311, '9', 1, '1', 1, '2023-06-08 16:52:35', '2023-06-08 16:52:35'),
(285, 312, '9', 1, '1', 1, '2023-06-08 16:53:25', '2023-06-08 16:53:25'),
(286, 313, '9', 1, '1', 1, '2023-06-08 16:54:10', '2023-06-08 16:54:10'),
(287, 314, '13', 1, '1', 1, '2023-06-08 16:55:29', '2023-06-08 16:55:29'),
(288, 315, '13', 1, '1', 1, '2023-06-08 16:58:18', '2023-06-08 16:58:18'),
(289, 316, '13', 1, '1', 1, '2023-06-08 16:59:04', '2023-06-08 16:59:04'),
(290, 317, '13', 1, '1', 1, '2023-06-08 17:02:27', '2023-06-08 17:02:27'),
(291, 318, '13', 1, '1', 1, '2023-06-08 17:03:55', '2023-06-08 17:03:55'),
(292, 319, '13', 1, '1', 1, '2023-06-08 17:04:40', '2023-06-08 17:04:40'),
(293, 320, '13', 1, '1', 1, '2023-06-08 17:07:39', '2023-06-08 17:07:39'),
(294, 321, '13', 1, '1', 1, '2023-06-08 17:09:04', '2023-06-08 17:09:04'),
(295, 322, '5', 1, '1', 1, '2023-06-08 17:52:47', '2023-06-08 17:52:47'),
(296, 323, '13', 1, '1', 1, '2023-06-08 17:55:11', '2023-06-08 17:55:11'),
(297, 324, '13', 1, '1', 1, '2023-06-08 17:55:55', '2023-06-08 17:55:55'),
(298, 325, '13', 1, '1', 1, '2023-06-08 17:56:42', '2023-06-08 17:56:42'),
(299, 326, '5', 1, '1', 1, '2023-06-08 17:57:28', '2023-06-08 17:57:28'),
(300, 327, '11', 1, '1', 1, '2023-06-08 18:00:11', '2023-06-08 18:00:11'),
(301, 328, '11', 1, '1', 1, '2023-06-08 18:00:55', '2023-06-08 18:00:55'),
(302, 329, '11', 1, '1', 1, '2023-06-08 18:02:11', '2023-06-08 18:02:11'),
(303, 330, '11', 1, '1', 1, '2023-06-08 18:04:09', '2023-06-08 18:04:09'),
(304, 331, '11', 1, '1', 1, '2023-06-08 18:06:04', '2023-06-08 18:06:04'),
(305, 332, '11', 1, '1', 1, '2023-06-08 18:07:13', '2023-06-08 18:07:13'),
(306, 333, '11', 1, '1', 1, '2023-06-08 18:09:00', '2023-06-08 18:09:00'),
(307, 334, '13', 1, '1', 1, '2023-06-08 18:11:17', '2023-06-08 18:11:17'),
(308, 335, '13', 1, '1', 1, '2023-06-08 18:20:56', '2023-06-08 18:20:56'),
(309, 336, '13', 1, '1', 1, '2023-06-08 18:51:38', '2023-06-08 18:51:38'),
(310, 337, '12', 1, '1', 1, '2023-06-08 18:52:35', '2023-06-08 18:52:35'),
(311, 338, '12', 1, '1', 1, '2023-06-08 18:57:16', '2023-06-08 18:57:16'),
(312, 339, '12', 1, '1', 1, '2023-06-08 19:01:11', '2023-06-08 19:01:11'),
(313, 340, '12', 1, '1', 1, '2023-06-08 19:03:22', '2023-06-08 19:03:22'),
(314, 341, '12', 1, '1', 1, '2023-06-08 19:04:04', '2023-06-08 19:04:04'),
(315, 342, '9', 1, '1', 1, '2023-06-08 19:05:07', '2023-06-08 19:05:07'),
(316, 343, '9', 1, '1', 1, '2023-06-08 19:06:11', '2023-06-08 19:06:11'),
(317, 344, '9', 1, '1', 1, '2023-06-08 19:07:04', '2023-06-08 19:07:04'),
(318, 345, '9', 1, '1', 1, '2023-06-08 19:08:46', '2023-06-08 19:08:46'),
(319, 346, '9', 1, '1', 1, '2023-06-08 19:10:36', '2023-06-08 19:10:36'),
(320, 347, '9', 1, '1', 1, '2023-06-08 19:11:22', '2023-06-08 19:11:22'),
(321, 348, '5', 1, '1', 1, '2023-06-08 19:20:09', '2023-06-08 19:20:09'),
(322, 349, '5', 1, '1', 1, '2023-06-08 19:21:09', '2023-06-08 19:21:09'),
(323, 350, '5', 1, '1', 1, '2023-06-08 19:21:50', '2023-06-08 19:21:50'),
(324, 351, '13', 1, '1', 1, '2023-06-08 19:25:05', '2023-06-08 19:25:05'),
(325, 352, '13', 1, '1', 1, '2023-06-08 19:25:59', '2023-06-08 19:25:59'),
(326, 353, '13', 1, '1', 1, '2023-06-08 19:26:48', '2023-06-08 19:26:48'),
(327, 354, '13', 1, '1', 1, '2023-06-08 19:35:16', '2023-06-08 19:35:16'),
(328, 355, '13', 1, '1', 1, '2023-06-08 19:35:56', '2023-06-08 19:35:56'),
(329, 356, '13', 1, '1', 1, '2023-06-08 19:37:49', '2023-06-08 19:37:49'),
(330, 357, '13', 1, '1', 1, '2023-06-08 19:40:02', '2023-06-08 19:40:02'),
(331, 358, '13', 1, '1', 1, '2023-06-08 19:40:52', '2023-06-08 19:40:52'),
(332, 359, '13', 1, '1', 1, '2023-06-08 19:48:06', '2023-06-08 19:48:06'),
(333, 360, '13', 1, '1', 1, '2023-06-08 20:24:00', '2023-06-08 20:24:00'),
(334, 361, '13', 1, '1', 1, '2023-06-08 20:25:38', '2023-06-08 20:25:38'),
(335, 362, '13', 1, '1', 1, '2023-06-08 20:44:11', '2023-06-08 20:44:11'),
(336, 363, '13', 1, '1', 1, '2023-06-08 20:46:22', '2023-06-08 20:46:22'),
(337, 364, '13', 1, '1', 1, '2023-06-08 20:48:05', '2023-06-08 20:48:05'),
(338, 365, '5', 1, '1', 1, '2023-06-08 20:49:46', '2023-06-08 20:49:46'),
(339, 366, '13', 1, '1', 1, '2023-06-08 20:56:43', '2023-06-08 20:56:43'),
(340, 367, '13', 1, '1', 1, '2023-06-08 20:57:28', '2023-06-08 20:57:28'),
(341, 368, '13', 1, '1', 1, '2023-06-08 21:01:56', '2023-06-08 21:01:56'),
(342, 369, '13', 1, '1', 1, '2023-06-08 21:07:18', '2023-06-08 21:07:18'),
(343, 370, '13', 1, '1', 1, '2023-06-08 21:10:32', '2023-06-08 21:10:32'),
(344, 371, '13', 1, '1', 1, '2023-06-08 21:12:35', '2023-06-08 21:12:35'),
(345, 372, '5', 1, '1', 1, '2023-06-08 21:14:42', '2023-06-08 21:14:42'),
(346, 373, '5', 1, '1', 1, '2023-06-08 21:15:40', '2023-06-08 21:15:40'),
(347, 374, '5', 1, '1', 1, '2023-06-08 21:18:54', '2023-06-08 21:18:54'),
(348, 375, '5', 1, '1', 1, '2023-06-08 21:20:34', '2023-06-08 21:20:34'),
(349, 376, '5', 1, '1', 1, '2023-06-08 21:21:09', '2023-06-08 21:21:09'),
(350, 377, '5', 1, '1', 1, '2023-06-08 21:21:57', '2023-06-08 21:21:57'),
(351, 378, '5', 1, '1', 1, '2023-06-08 21:27:09', '2023-06-08 21:27:09'),
(352, 379, '5', 1, '1', 1, '2023-06-08 21:27:53', '2023-06-08 21:27:53'),
(353, 380, '5', 1, '1', 1, '2023-06-08 21:28:30', '2023-06-08 21:28:30'),
(354, 381, '5', 1, '1', 1, '2023-06-08 21:29:08', '2023-06-08 21:29:08'),
(355, 382, '7', 1, '1', 1, '2023-06-08 21:29:57', '2023-06-08 21:29:57'),
(356, 383, '7', 1, '1', 1, '2023-06-08 21:30:48', '2023-06-08 21:30:48'),
(357, 384, '7', 1, '1', 1, '2023-06-08 21:32:32', '2023-06-08 21:32:32'),
(358, 385, '13', 1, '1', 1, '2023-06-08 21:49:53', '2023-06-08 21:49:53'),
(359, 386, '13', 1, '1', 1, '2023-06-08 21:50:39', '2023-06-08 21:50:39'),
(360, 387, '5', 1, '1', 1, '2023-06-08 21:53:40', '2023-06-08 21:53:40'),
(361, 388, '5', 1, '1', 1, '2023-06-08 21:54:27', '2023-06-08 21:54:27'),
(362, 389, '5', 1, '1', 1, '2023-06-08 21:55:09', '2023-06-08 21:55:09'),
(363, 390, '5', 1, '1', 1, '2023-06-08 21:56:06', '2023-06-08 21:56:06'),
(364, 391, '5', 1, '1', 1, '2023-06-08 21:56:36', '2023-06-08 21:56:36'),
(365, 392, '13', 1, '1', 1, '2023-06-08 21:57:24', '2023-06-08 21:57:24'),
(366, 393, '13', 1, '1', 1, '2023-06-08 21:58:25', '2023-06-08 21:58:25'),
(367, 394, '7', 1, '1', 1, '2023-06-08 21:59:32', '2023-06-08 21:59:32'),
(368, 395, '7', 1, '1', 1, '2023-06-08 22:01:08', '2023-06-08 22:01:08'),
(369, 396, '7', 1, '1', 1, '2023-06-08 22:02:46', '2023-06-08 22:02:46'),
(370, 397, '7', 1, '1', 1, '2023-06-08 22:03:56', '2023-06-08 22:03:56'),
(371, 398, '7', 1, '1', 1, '2023-06-08 22:05:18', '2023-06-08 22:05:18'),
(372, 399, '7', 1, '1', 1, '2023-06-08 22:06:01', '2023-06-08 22:06:01'),
(373, 400, '7', 1, '1', 1, '2023-06-08 22:06:47', '2023-06-08 22:06:47'),
(374, 401, '7', 1, '1', 1, '2023-06-08 22:07:28', '2023-06-08 22:07:28'),
(375, 402, '9', 1, '1', 1, '2023-06-08 22:08:27', '2023-06-08 22:08:27'),
(376, 403, '9', 1, '1', 1, '2023-06-08 22:09:10', '2023-06-08 22:09:10'),
(377, 404, '5', 1, '1', 1, '2023-06-08 22:10:11', '2023-06-08 22:10:11'),
(378, 405, '5', 1, '1', 1, '2023-06-08 22:10:58', '2023-06-08 22:10:58'),
(379, 406, '5', 1, '1', 1, '2023-06-08 22:11:40', '2023-06-08 22:11:40'),
(380, 407, '5', 1, '1', 1, '2023-06-08 22:12:39', '2023-06-08 22:12:39'),
(381, 408, '5', 1, '1', 1, '2023-06-08 22:13:15', '2023-06-08 22:13:15'),
(382, 409, '5', 1, '1', 1, '2023-06-08 22:16:13', '2023-06-08 22:16:13'),
(383, 410, '5', 1, '1', 1, '2023-06-08 22:17:00', '2023-06-08 22:17:00'),
(384, 411, '5', 1, '1', 1, '2023-06-08 22:20:54', '2023-06-08 22:20:54'),
(385, 412, '5', 1, '1', 1, '2023-06-08 22:21:45', '2023-06-08 22:21:45'),
(386, 413, '5', 1, '1', 1, '2023-06-08 22:24:10', '2023-06-08 22:24:10'),
(387, 414, '5', 1, '1', 1, '2023-06-08 22:24:48', '2023-06-08 22:24:48'),
(388, 415, '5', 1, '1', 1, '2023-06-08 22:25:27', '2023-06-08 22:25:27'),
(389, 416, '5', 1, '1', 1, '2023-06-08 22:26:11', '2023-06-08 22:26:11'),
(390, 417, '5', 1, '1', 1, '2023-06-08 22:33:51', '2023-06-08 22:33:51'),
(391, 418, '5', 1, '1', 1, '2023-06-08 22:34:40', '2023-06-08 22:34:40'),
(392, 419, '5', 1, '1', 1, '2023-06-08 22:35:31', '2023-06-08 22:35:31'),
(393, 420, '5', 1, '1', 1, '2023-06-08 22:36:25', '2023-06-08 22:36:25'),
(394, 421, '5', 1, '1', 1, '2023-06-08 22:39:28', '2023-06-08 22:39:28'),
(395, 422, '5', 1, '1', 1, '2023-06-08 22:40:09', '2023-06-08 22:40:09'),
(396, 423, '5', 1, '1', 1, '2023-06-08 22:42:19', '2023-06-08 22:42:19'),
(397, 424, '5', 1, '1', 1, '2023-06-08 22:44:18', '2023-06-08 22:44:18'),
(398, 425, '5', 1, '1', 1, '2023-06-08 22:46:07', '2023-06-08 22:46:07'),
(399, 426, '5', 1, '1', 1, '2023-06-08 22:47:08', '2023-06-08 22:47:08'),
(400, 427, '13', 1, '1', 1, '2023-06-08 22:50:07', '2023-06-08 22:50:07'),
(401, 428, '13', 1, '1', 1, '2023-06-08 22:51:28', '2023-06-08 22:51:28'),
(402, 429, '13', 1, '1', 1, '2023-06-08 22:52:22', '2023-06-08 22:52:22'),
(403, 430, '13', 1, '1', 1, '2023-06-08 22:53:15', '2023-06-08 22:53:15'),
(404, 431, '13', 1, '1', 1, '2023-06-08 22:54:37', '2023-06-08 22:54:37'),
(405, 432, '13', 1, '1', 1, '2023-06-08 22:55:50', '2023-06-08 22:55:50'),
(406, 433, '13', 1, '1', 1, '2023-06-08 22:57:50', '2023-06-08 22:57:50'),
(407, 434, '13', 1, '1', 1, '2023-06-08 23:03:57', '2023-06-08 23:03:57'),
(408, 435, '5', 1, '1', 1, '2023-06-08 23:04:58', '2023-06-08 23:04:58'),
(409, 436, '5', 1, '1', 1, '2023-06-08 23:05:46', '2023-06-08 23:05:46'),
(410, 437, '5', 1, '1', 1, '2023-06-08 23:06:32', '2023-06-08 23:06:32'),
(411, 438, '5', 1, '1', 1, '2023-06-08 23:09:15', '2023-06-08 23:09:15'),
(412, 439, '5', 1, '1', 1, '2023-06-08 23:10:20', '2023-06-08 23:10:20'),
(413, 440, '5', 1, '1', 1, '2023-06-08 23:25:36', '2023-06-08 23:25:36'),
(414, 441, '5', 1, '1', 1, '2023-06-08 23:27:49', '2023-06-08 23:27:49'),
(415, 442, '13', 1, '1', 1, '2023-06-08 23:28:58', '2023-06-08 23:28:58'),
(416, 443, '13', 1, '1', 1, '2023-06-08 23:29:53', '2023-06-08 23:29:53'),
(417, 444, '13', 1, '1', 1, '2023-06-08 23:30:38', '2023-06-08 23:30:38'),
(418, 445, '13', 1, '1', 1, '2023-06-08 23:37:51', '2023-06-08 23:37:51'),
(419, 446, '13', 1, '1', 1, '2023-06-08 23:51:31', '2023-06-08 23:51:31'),
(420, 447, '13', 1, '1', 1, '2023-06-08 23:52:24', '2023-06-08 23:52:24'),
(421, 448, '13', 1, '1', 1, '2023-06-08 23:53:02', '2023-06-08 23:53:02'),
(422, 449, '5', 1, '1', 1, '2023-06-08 23:53:46', '2023-06-08 23:53:46'),
(423, 450, '5', 1, '1', 1, '2023-06-08 23:54:37', '2023-06-08 23:54:37'),
(424, 451, '5', 1, '1', 1, '2023-06-08 23:55:07', '2023-06-08 23:55:07'),
(425, 452, '5', 1, '1', 1, '2023-06-08 23:55:44', '2023-06-08 23:55:44'),
(426, 453, '5', 1, '1', 1, '2023-06-08 23:56:27', '2023-06-08 23:56:27'),
(427, 454, '5', 1, '1', 1, '2023-06-08 23:57:08', '2023-06-08 23:57:08'),
(428, 455, '5', 1, '1', 1, '2023-06-09 00:02:04', '2023-06-09 00:02:04'),
(429, 456, '5', 1, '1', 1, '2023-06-09 00:02:48', '2023-06-09 00:02:48'),
(430, 457, '5', 1, '1', 1, '2023-06-09 00:03:28', '2023-06-09 00:03:28'),
(431, 458, '5', 1, '1', 1, '2023-06-09 00:04:16', '2023-06-09 00:04:16'),
(432, 459, '5', 1, '1', 1, '2023-06-09 00:04:55', '2023-06-09 00:04:55'),
(433, 460, '5', 1, '1', 1, '2023-06-09 00:05:34', '2023-06-09 00:05:34'),
(434, 461, '5', 1, '1', 1, '2023-06-09 00:06:32', '2023-06-09 00:06:32'),
(435, 462, '5', 1, '1', 1, '2023-06-09 00:06:59', '2023-06-09 00:06:59'),
(436, 463, '5', 1, '1', 1, '2023-06-09 00:09:04', '2023-06-09 00:09:04'),
(437, 464, '5', 1, '1', 1, '2023-06-09 00:11:35', '2023-06-09 00:11:35'),
(438, 465, '5', 1, '1', 1, '2023-06-09 00:12:17', '2023-06-09 00:12:17'),
(439, 466, '5', 1, '1', 1, '2023-06-09 00:30:06', '2023-06-09 00:30:06'),
(440, 467, '5', 1, '1', 1, '2023-06-09 00:34:39', '2023-06-09 00:34:39'),
(441, 468, '5', 1, '1', 1, '2023-06-09 00:36:10', '2023-06-09 00:36:10'),
(442, 469, '5', 1, '1', 1, '2023-06-09 00:36:50', '2023-06-09 00:36:50'),
(443, 470, '5', 1, '1', 1, '2023-06-09 00:37:32', '2023-06-09 00:37:32'),
(444, 471, '7', 1, '1', 1, '2023-06-09 00:38:24', '2023-06-09 00:38:24'),
(445, 472, '7', 1, '1', 1, '2023-06-09 00:47:01', '2023-06-09 00:47:01'),
(446, 473, '7', 1, '1', 1, '2023-06-09 00:47:54', '2023-06-09 00:47:54'),
(447, 474, '7', 1, '1', 1, '2023-06-09 00:48:39', '2023-06-09 00:48:39'),
(448, 475, '5', 1, '1', 1, '2023-06-09 00:50:09', '2023-06-09 00:50:09'),
(449, 476, '7', 1, '1', 1, '2023-06-09 00:50:55', '2023-06-09 00:50:55'),
(450, 477, '7', 1, '1', 1, '2023-06-09 00:51:36', '2023-06-09 00:51:36'),
(451, 478, '7', 1, '1', 1, '2023-06-09 00:52:20', '2023-06-09 00:52:20'),
(452, 479, '5', 1, '1', 1, '2023-06-09 00:55:25', '2023-06-09 00:55:25'),
(453, 480, '7', 1, '1', 1, '2023-06-09 00:56:15', '2023-06-09 00:56:15'),
(454, 481, '7', 1, '1', 1, '2023-06-09 00:57:05', '2023-06-09 00:57:05'),
(455, 482, '7', 1, '1', 1, '2023-06-09 00:58:39', '2023-06-09 00:58:39'),
(456, 483, '7', 1, '1', 1, '2023-06-09 01:01:01', '2023-06-09 01:01:01'),
(457, 484, '7', 1, '1', 1, '2023-06-09 01:01:40', '2023-06-09 01:01:40'),
(458, 485, '7', 1, '1', 1, '2023-06-09 01:06:38', '2023-06-09 01:06:38'),
(459, 486, '7', 1, '1', 1, '2023-06-09 01:08:12', '2023-06-09 01:08:12'),
(460, 487, '7', 1, '1', 1, '2023-06-09 01:08:57', '2023-06-09 01:08:57'),
(464, 489, '11', 2, '1', 1, '2023-08-09 17:09:47', '2023-08-09 17:09:47'),
(465, 491, '5', 1, '1', 1, '2023-08-09 17:29:17', '2023-08-09 17:29:17'),
(466, 495, '7', 2, '1', 1, '2023-08-18 17:35:03', '2023-08-23 00:51:49'),
(467, 496, '5', 1, '1', 1, '2023-08-18 17:49:35', '2023-08-18 17:49:35'),
(468, 497, '5', 1, '1', 1, '2023-08-18 18:56:03', '2023-08-18 18:56:03'),
(469, 498, '5', 1, '1', 1, '2023-08-21 16:02:40', '2023-08-21 16:02:40'),
(470, 499, '5', 1, '1', 1, '2023-08-21 17:17:38', '2023-08-21 17:17:38'),
(471, 500, '5', 1, '1', 1, '2023-08-22 00:24:47', '2023-08-22 00:24:47'),
(472, 501, '5', 1, '1', 1, '2023-08-22 00:31:24', '2023-08-22 00:31:24'),
(473, 502, '5', 1, '1', 1, '2023-08-22 17:39:17', '2023-08-22 17:39:17'),
(474, 503, '7', 1, '1', 1, '2023-08-23 00:45:31', '2023-08-23 01:01:45'),
(475, 504, '7', 2, '1', 1, '2023-08-23 00:54:37', '2023-08-23 00:54:37'),
(476, 510, '5', 1, '1', 1, '2023-08-25 17:25:58', '2023-08-25 17:25:58'),
(477, 514, '5', 1, '1', 1, '2023-08-31 21:45:24', '2023-08-31 21:45:24'),
(478, 515, '10', 2, '1', 1, '2023-09-01 17:59:00', '2023-09-07 19:20:52'),
(479, 518, '8', 1, '1', 1, '2023-09-06 19:49:32', '2023-09-06 19:49:32'),
(480, 519, '5', 1, '1', 1, '2023-09-06 23:53:54', '2023-09-06 23:53:54'),
(482, 522, '5', 1, '1', 1, '2023-09-07 20:54:08', '2023-09-07 20:54:08'),
(483, 523, '5', 1, '1', 1, '2023-09-07 20:54:44', '2023-09-07 20:54:44'),
(484, 524, '5', 1, '1', 1, '2023-09-08 18:02:18', '2023-09-08 18:02:18'),
(486, 525, '9', 2, '1', 1, '2023-09-14 19:55:33', '2023-09-14 19:55:33'),
(487, 5, '11', 1, '2', 1, '2023-09-14 19:58:41', '2023-09-14 19:58:41'),
(489, 10, '11', 2, '2', 1, '2023-09-14 20:00:12', '2023-09-14 20:00:12'),
(490, 526, '5', 1, '1', 1, '2023-09-14 23:38:45', '2023-09-14 23:38:45'),
(491, 527, '8', 2, '1', 1, '2023-09-19 15:34:45', '2023-09-19 15:34:45'),
(492, 528, '11', 2, '1', 1, '2023-09-20 23:17:11', '2023-09-20 23:17:11'),
(493, 529, '11', 2, '1', 1, '2023-09-21 21:57:56', '2023-09-21 21:57:56'),
(494, 530, '8', 1, '1', 1, '2023-09-27 00:16:22', '2023-09-27 00:16:22'),
(495, 531, '7', 2, '1', 1, '2023-09-29 00:44:48', '2023-09-29 00:44:48');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `campaing_empresas`
--
ALTER TABLE `campaing_empresas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaing_empresas_campaign_id_foreign` (`campaign_id`),
  ADD KEY `campaing_empresas_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `historial_solicitud`
--
ALTER TABLE `historial_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `historial_solicitud_reviewed_by_foreign` (`reviewed_by`),
  ADD KEY `historial_solicitud_solicitud_id_foreign` (`solicitud_id`),
  ADD KEY `historial_solicitud_estado_solicitud_id_foreign` (`estado_solicitud_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sectores`
--
ALTER TABLE `sectores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitudes_usuario_id_foreign` (`usuario_id`),
  ADD KEY `solicitudes_estado_solicitud_id_foreign` (`estado_solicitud_id`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `tipo_de_cargos`
--
ALTER TABLE `tipo_de_cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_empresa_id_foreign` (`empresa_id`),
  ADD KEY `users_perfil_id_foreign` (`perfil_id`);

--
-- Indices de la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_empresa_usuario_id_foreign` (`usuario_id`),
  ADD KEY `usuarios_empresa_empresa_id_foreign` (`empresa_id`);

--
-- Indices de la tabla `usuario_sectores`
--
ALTER TABLE `usuario_sectores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_sectores_usuario_id_foreign` (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `campaing_empresas`
--
ALTER TABLE `campaing_empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT de la tabla `estado_solicitud`
--
ALTER TABLE `estado_solicitud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `historial_solicitud`
--
ALTER TABLE `historial_solicitud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `perfiles`
--
ALTER TABLE `perfiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `sectores`
--
ALTER TABLE `sectores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_cargos`
--
ALTER TABLE `tipo_de_cargos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT de la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario_sectores`
--
ALTER TABLE `usuario_sectores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `campaing_empresas`
--
ALTER TABLE `campaing_empresas`
  ADD CONSTRAINT `campaing_empresas_campaign_id_foreign` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`id`),
  ADD CONSTRAINT `campaing_empresas_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `historial_solicitud`
--
ALTER TABLE `historial_solicitud`
  ADD CONSTRAINT `historial_solicitud_estado_solicitud_id_foreign` FOREIGN KEY (`estado_solicitud_id`) REFERENCES `estado_solicitud` (`id`),
  ADD CONSTRAINT `historial_solicitud_reviewed_by_foreign` FOREIGN KEY (`reviewed_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `historial_solicitud_solicitud_id_foreign` FOREIGN KEY (`solicitud_id`) REFERENCES `solicitudes` (`id`);

--
-- Filtros para la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD CONSTRAINT `solicitudes_estado_solicitud_id_foreign` FOREIGN KEY (`estado_solicitud_id`) REFERENCES `estado_solicitud` (`id`),
  ADD CONSTRAINT `solicitudes_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `users_perfil_id_foreign` FOREIGN KEY (`perfil_id`) REFERENCES `perfiles` (`id`);

--
-- Filtros para la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  ADD CONSTRAINT `usuarios_empresa_empresa_id_foreign` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  ADD CONSTRAINT `usuarios_empresa_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `usuario_sectores`
--
ALTER TABLE `usuario_sectores`
  ADD CONSTRAINT `usuario_sectores_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
