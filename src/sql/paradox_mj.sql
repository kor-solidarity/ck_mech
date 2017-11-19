-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.1.18-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- paradox_mj 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `paradox_mj` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `paradox_mj`;


-- 테이블 paradox_mj.vic_factory 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_factory` (
  `fac_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'base num',
  `reg_num` int(11) NOT NULL DEFAULT '0',
  `fac_res` int(11) NOT NULL DEFAULT '0',
  `fac_lvl` int(11) NOT NULL DEFAULT '0' COMMENT 'determines the size',
  `열 5` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='공장관련';

-- 테이블 데이터 paradox_mj.vic_factory:~0 rows (대략적) 내보내기
DELETE FROM `vic_factory`;
/*!40000 ALTER TABLE `vic_factory` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_factory` ENABLE KEYS */;


-- 테이블 paradox_mj.vic_market 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_market` (
  `열 1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='시장. 원래라면 지역별 고유시장이 존재하지만 현재는 빅1 시스템을 따른다. ';

-- 테이블 데이터 paradox_mj.vic_market:~0 rows (대략적) 내보내기
DELETE FROM `vic_market`;
/*!40000 ALTER TABLE `vic_market` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_market` ENABLE KEYS */;


-- 테이블 paradox_mj.vic_party 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_party` (
  `party_id` int(11) NOT NULL AUTO_INCREMENT,
  `party_name` varchar(50) NOT NULL,
  `party_ideo` varchar(50) NOT NULL,
  `party_trade` varchar(50) NOT NULL,
  `party_eco` varchar(50) NOT NULL COMMENT 'economy',
  `party_relig` varchar(50) NOT NULL,
  `party_citizen` varchar(50) NOT NULL,
  `party_war` varchar(50) NOT NULL,
  PRIMARY KEY (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 paradox_mj.vic_party:~0 rows (대략적) 내보내기
DELETE FROM `vic_party`;
/*!40000 ALTER TABLE `vic_party` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_party` ENABLE KEYS */;


-- 테이블 paradox_mj.vic_pop 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_pop` (
  `pop_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pop id',
  `pop_province` int(11) NOT NULL COMMENT 'province id',
  `pop_size` int(11) NOT NULL COMMENT 'actual ''population''',
  `pop_type` int(11) NOT NULL,
  `pop_cult` int(11) NOT NULL,
  `pop_relig` int(11) NOT NULL,
  `pop_mil` int(11) NOT NULL COMMENT 'militancy',
  `pop_con` int(11) NOT NULL,
  `pop_employ` int(11) NOT NULL COMMENT 'ppl employed',
  `pop_cash` int(11) NOT NULL,
  `pop_rebel` int(11) DEFAULT NULL COMMENT 'affiliated rebel faction if there is one',
  `pop_lit` int(11) NOT NULL COMMENT 'literacy',
  PRIMARY KEY (`pop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 paradox_mj.vic_pop:~0 rows (대략적) 내보내기
DELETE FROM `vic_pop`;
/*!40000 ALTER TABLE `vic_pop` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_pop` ENABLE KEYS */;


-- 테이블 paradox_mj.vic_province 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_province` (
  `prov_num` int(11) NOT NULL AUTO_INCREMENT,
  `prov_name` varchar(50) NOT NULL,
  `prov_owner` int(11) DEFAULT NULL,
  `prov_core` varchar(50) DEFAULT NULL,
  `prov_res` int(11) NOT NULL COMMENT 'resource - number',
  `prov_rate` int(11) NOT NULL COMMENT 'life rating',
  `prov_region` int(11) NOT NULL,
  PRIMARY KEY (`prov_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게임상 땅 한칸';

-- 테이블 데이터 paradox_mj.vic_province:~0 rows (대략적) 내보내기
DELETE FROM `vic_province`;
/*!40000 ALTER TABLE `vic_province` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_province` ENABLE KEYS */;


-- 테이블 paradox_mj.vic_region 구조 내보내기
CREATE TABLE IF NOT EXISTS `vic_region` (
  `reg_num` int(11) NOT NULL AUTO_INCREMENT,
  `reg_name` varchar(50) NOT NULL,
  `reg_focus` varchar(50) NOT NULL COMMENT 'not really vic_friendly but for my sake',
  `열 5` varchar(50) NOT NULL,
  `열 6` varchar(50) NOT NULL,
  PRIMARY KEY (`reg_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게임상 각 권역(주)';

-- 테이블 데이터 paradox_mj.vic_region:~0 rows (대략적) 내보내기
DELETE FROM `vic_region`;
/*!40000 ALTER TABLE `vic_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `vic_region` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
