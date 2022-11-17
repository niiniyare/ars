/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
/* SET AUTOCOMMIT = 0; */
/* START TRANSACTION; */
/* SET time_zone = "+00:00"; */

-- --------------------------------------------------------

--
-- Table structure for table `Airline` generated from model 'Airline'
--

CREATE TABLE IF NOT EXISTS `Airline` (
  `type` TEXT DEFAULT NULL COMMENT 'the resource name',
  `iataCode` TEXT DEFAULT NULL COMMENT 'IATA airline code. see [IATA table codes](http://www.iata.org/publications/Pages/code-search.aspx)',
  `icaoCode` TEXT DEFAULT NULL COMMENT 'IATA airline code. see [ICAO airlines table codes](https://en.wikipedia.org/wiki/List_of_airline_codes)',
  `businessName` TEXT DEFAULT NULL COMMENT 'airline business name',
  `commonName` TEXT DEFAULT NULL COMMENT 'airline common name'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CollectionLinks` generated from model 'CollectionLinks'
--

CREATE TABLE IF NOT EXISTS `CollectionLinks` (
  `self` TEXT DEFAULT NULL,
  `next` TEXT DEFAULT NULL,
  `previous` TEXT DEFAULT NULL,
  `last` TEXT DEFAULT NULL,
  `first` TEXT DEFAULT NULL,
  `up` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Collection_Meta` generated from model 'CollectionUnderscoreMeta'
--

CREATE TABLE IF NOT EXISTS `Collection_Meta` (
  `count` INT DEFAULT NULL,
  `links` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Error_400` generated from model 'ErrorUnderscore400'
--

CREATE TABLE IF NOT EXISTS `Error_400` (
  `errors` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Error_500` generated from model 'ErrorUnderscore500'
--

CREATE TABLE IF NOT EXISTS `Error_500` (
  `errors` JSON NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Issue` generated from model 'Issue'
--

CREATE TABLE IF NOT EXISTS `Issue` (
  `status` INT DEFAULT NULL COMMENT 'the HTTP status code applicable to this error',
  `code` BIGINT DEFAULT NULL COMMENT 'an application-specific error code',
  `title` TEXT DEFAULT NULL COMMENT 'a short summary of the error',
  `detail` TEXT DEFAULT NULL COMMENT 'explanation of the error',
  `source` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Issue_Source` generated from model 'IssueUnderscoreSource'
-- an object containing references to the source of the error
--

CREATE TABLE IF NOT EXISTS `Issue_Source` (
  `pointer` TEXT DEFAULT NULL COMMENT 'a JSON Pointer [RFC6901] to the associated entity in the request document',
  `parameter` TEXT DEFAULT NULL COMMENT 'a string indicating which URI query parameter caused the issue',
  `example` TEXT DEFAULT NULL COMMENT 'a string indicating an example of the right value'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='an object containing references to the source of the error';


