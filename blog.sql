-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2016 at 07:00 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subcontent` tinytext NOT NULL,
  `content` text NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `view_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `subcontent`, `content`, `image_path`, `date`, `view_count`) VALUES
(3, 'Samir ÅžÉ™rifovdan Cahangir HacÄ±yevin ittihamlarÄ±na cavab gÉ™ldi', 'BakÄ± AÄŸÄ±r CinayÉ™tlÉ™r MÉ™hkÉ™mÉ™sindÉ™ AzÉ™rbaycan BeynÉ™lxalq BankÄ±na kÃ¼lli miqdarda ziyan vurulmasÄ± faktÄ± ilÉ™ É™laqÉ™dar bankÄ±n Ä°darÉ™ HeyÉ™tinin sabiq sÉ™dri vÉ™ onunla birlikdÉ', 'BakÄ± AÄŸÄ±r CinayÉ™tlÉ™r MÉ™hkÉ™mÉ™sindÉ™ AzÉ™rbaycan BeynÉ™lxalq BankÄ±na kÃ¼lli miqdarda ziyan vurulmasÄ± faktÄ± ilÉ™ É™laqÉ™dar bankÄ±n Ä°darÉ™ HeyÉ™tinin sabiq sÉ™dri vÉ™ onunla birlikdÉ™ tÉ™qsirlÉ™ndirilÉ™n ÅŸÉ™xslÉ™rin iÅŸi Ã¼zrÉ™ keÃ§irilÉ™n iclaslarda MaliyyÉ™ Nazirliyinin rÉ™hbÉ™r ÅŸÉ™xslÉ™ri haqqÄ±nda deyilÉ™nlÉ™rÉ™ mÃ¼nasibÉ™t bildirmÉ™si Ã¼Ã§Ã¼n nazirliyin mÉ™tbuat katibi Mayis PiriyevÉ™ mÃ¼raciÉ™t edilib.   Oxu.Az APA-ya istinadÉ™n xÉ™bÉ™r verir ki, BankÄ±n Ä°darÉ™ HeyÉ™tinin sabiq sÉ™drinin keÃ§irilÉ™n mÉ™hkÉ™mÉ™ iclaslarÄ±nda MaliyyÉ™ Nazirliyinin rÉ™hbÉ™rliyinin Ã¼nvanÄ±na sÉ™slÉ™ndirdiyi ittihamlarla É™laqÉ™dar nazirliyin mÉ™tbuat katibi deyib ki, bir qayda olaraq qurum sÉ™fehlÉ™mÉ™lÉ™rÉ™ mÃ¼nasibÉ™t bildirmir vÉ™ bu tip aÃ§Ä±qlamalarÄ±n sÉ™viyyÉ™si hÉ™r hansÄ± bir ciddi reaksiya da tÉ™lÉ™b etmir.  â€œYeganÉ™ olaraq qeyd edÉ™ bilÉ™rik ki, mÃ¼ttÉ™him kÃ¼rsÃ¼sÃ¼ndÉ™ É™ylÉ™ÅŸÉ™n bankÄ±n sabiq rÉ™hbÉ™rinin hÉ™qiqÉ™ti É™ks etdirmÉ™yÉ™n vÉ™ hÉ™r hansÄ± fakta sÃ¶ykÉ™nmÉ™yÉ™n boÄŸazdan yuxarÄ± â€œaÃ§Ä±qlamalarÄ±â€ tÃ¶rÉ™tdiyi cinayÉ™tlÉ™ri siyasilÉ™ÅŸdirmÉ™k, ictimaiyyÉ™tin diqqÉ™tini tÃ¶rÉ™tdiyi vÉ™ bu gÃ¼n mÉ™hkÉ™mÉ™ predmeti olan É™mÉ™llÉ™rindÉ™n y', '02092016205138.jpg', '2016-09-02 18:51:38', 0),
(4, 'Ä°lham Æliyev Ã–zbÉ™kistan xalqÄ±na baÅŸsaÄŸlÄ±ÄŸÄ± verib', 'AzÉ™rbaycan dÃ¶vlÉ™t baÅŸÃ§Ä±sÄ± Ä°lham Æliyev Ã–zbÉ™kistan prezidenti Ä°slam KÉ™rimovun vÉ™fatÄ± ilÉ™ baÄŸlÄ± baÅŸsaÄŸlÄ±ÄŸÄ± verib...', 'AzÉ™rbaycan dÃ¶vlÉ™t baÅŸÃ§Ä±sÄ± Ä°lham Æliyev Ã–zbÉ™kistan prezidenti Ä°slam KÉ™rimovun vÉ™fatÄ± ilÉ™ baÄŸlÄ± baÅŸsaÄŸlÄ±ÄŸÄ± verib.  Oxu.Az-Ä±n xÉ™bÉ™rinÉ™ gÃ¶rÉ™, dÃ¶vlÉ™t baÅŸÃ§Ä±sÄ±nÄ±n Ã–zbÉ™kistan Ali MÉ™clisi SenatÄ±nÄ±n sÉ™dri Niqmatulla YuldaÅŸevÉ™ Ã¼nvanladÄ±ÄŸÄ± mÉ™ktubda deyilir:  â€œHÃ¶rmÉ™tli Niqmatulla TulkonoviÃ§,  Ã–zbÉ™kistan RespublikasÄ±nÄ±n Prezidenti, gÃ¶rkÉ™mli dÃ¶vlÉ™t xadimi vÉ™ ictimai-siyasi xadim Ä°slam AbdulqÉ™niyeviÃ§ KÉ™rimovun vÉ™fatÄ± barÉ™dÉ™ xÉ™bÉ™r mÉ™ni dÉ™rindÉ™n kÉ™dÉ™rlÉ™ndirdi.  Ä°slam AbdulqÉ™niyeviÃ§ KÉ™rimov tarixÉ™ mÃ¼stÉ™qil Ã–zbÉ™kistanÄ±n ilk Prezidenti kimi daxil olub. Ã–lkÉ™nin tÉ™ÅŸÉ™kkÃ¼lÃ¼, inkiÅŸafÄ±, dÃ¶vlÉ™t mÃ¼stÉ™qilliyinin vÉ™ suverenliyinin mÃ¶hkÉ™mlÉ™ndirilmÉ™si, sosial-iqtisadi vÉ™ siyasi sahÉ™lÉ™rdÉ™ nailiyyÉ™tlÉ™ri vÉ™ uÄŸurlarÄ±, qardaÅŸ Ã–zbÉ™kistanÄ±n beynÉ™lxalq birliyÉ™ inteqrasiyasÄ± onun adÄ± ilÉ™ baÄŸlÄ±dÄ±r.  UzaqgÃ¶rÉ™n, prinsipial vÉ™ ardÄ±cÄ±l siyasÉ™t, tÉ™ÅŸkilatÃ§Ä±lÄ±q istedadÄ±, É™n mÃ¼rÉ™kkÉ™b mÉ™sÉ™lÉ™lÉ™rin hÉ™llinÉ™ É™sl dÃ¶vlÉ™tÃ§ilik mÃ¶vqeyindÉ™n yanaÅŸmasÄ± Ä°slam KÉ™rimova xalq mÉ™hÉ™bbÉ™ti, dÉ™rin hÃ¶rmÉ™t vÉ™ nÉ™inki Ã–zbÉ™kistanda, hÉ™m dÉ™ onun hÃ¼dudlarÄ±ndan kÉ™narda bÃ¶yÃ¼k nÃ¼fuz qazandÄ±rmÄ±ÅŸdÄ±r.  AzÉ™rbaycanda Ä°slam KÉ™rimovu xalqlarÄ±mÄ±z arasÄ±nda Ã§oxÉ™srlik mehriban dostluq É™nÉ™nÉ™lÉ™rinin gÃ¼clÉ™ndirilmÉ™sindÉ™ vÉ™ qarÅŸÄ±lÄ±qlÄ± dÉ™stÉ™klÉ™nmÉ™sindÉ™, mÃ¼stÉ™qillik dÃ¶vrÃ¼ndÉ™ AzÉ™rbaycan-Ã–zbÉ™kistan dÃ¶vlÉ™tlÉ™rarasÄ± mÃ¼nasibÉ™tlÉ™rinin formalaÅŸdÄ±rÄ±lmasÄ±nda vÉ™ hÉ™rtÉ™rÉ™fli inkiÅŸafÄ±nda É™sl dost kimi tanÄ±yÄ±r vÉ™ dÉ™rindÉ™n hÃ¶rmÉ™t edirlÉ™r.  Bu kÉ™dÉ™rli anda aÄŸÄ±r vÉ™ É™vÉ™zsiz itki ilÉ™ baÄŸlÄ± AzÉ™rbaycan xalqÄ± adÄ±ndan vÉ™ ÅŸÉ™xsÉ™n Ã¶z adÄ±mdan SizÉ™, Ä°slam AbdulqÉ™niyeviÃ§ KÉ™rimovun doÄŸmalarÄ±na vÉ™ yaxÄ±nlarÄ±na, bÃ¼tÃ¼n qardaÅŸ Ã–zbÉ™kistan xalqÄ±na dÉ™rin hÃ¼znlÉ™ baÅŸsaÄŸlÄ±ÄŸÄ± verirÉ™m.  Ä°slam AbdulqÉ™niyeviÃ§ KÉ™rimovun parlaq xatirÉ™si qÉ™lbimizdÉ™ hÉ™miÅŸÉ™lik qalacaqâ€.  www.oxu.az', '02092016211945.jpg', '2016-09-02 19:19:45', 0),
(5, 'TbilisidÉ™ SaakaÅŸvilinin partiyasÄ±nÄ±n ofisinÉ™ hÃ¼cum edilib', 'Tbilisinin mÉ™rkÉ™zindÉ™ â€œVahid milli hÉ™rÉ™katâ€ mÃ¼xalifÉ™t partiyasÄ±nÄ±n ofisinin pÉ™ncÉ™rÉ™lÉ™rini sÄ±ndÄ±rÄ±blar...', 'Tbilisinin mÉ™rkÉ™zindÉ™ â€œVahid milli hÉ™rÉ™katâ€ mÃ¼xalifÉ™t partiyasÄ±nÄ±n ofisinin pÉ™ncÉ™rÉ™lÉ™rini sÄ±ndÄ±rÄ±blar.  Oxu.Az xÉ™bÉ™r verir ki, bu barÉ™dÉ™ â€œRustavi 2â€ telekanalÄ± mÉ™lumat yayÄ±b.   Novosti Qruziya-ya DÄ°N-dÉ™n verilÉ™n mÉ™lumata gÃ¶rÉ™, GÃ¼rcÃ¼stan CM â€œBaÅŸqasÄ±nÄ±n É™mlakÄ±na zÉ™rÉ™r vermÉ™kâ€ maddÉ™si Ã¼zrÉ™ istintaq aparÄ±lÄ±r.   Bu Mixail SaakaÅŸvilinin partiyasnÄ±n ofisinÉ™ ilk hÃ¼cum deyil. YalnÄ±z avqust ayÄ±nda Ã¼ÅŸ hadisÉ™ qeydÉ™ alÄ±nÄ±b. Partiya nÃ¼mayÉ™ndÉ™lÉ™ri baÅŸ verÉ™nlÉ™rdÉ™ Ã¶lkÉ™ hakimiyyÉ™tini ittiham edir.   â€œVahid milli hÉ™rÉ™katâ€ partiyasÄ±nÄ±n ofisinÉ™ hÃ¼cum faktÄ± keÃ§É™n ilin oktyabr ayÄ±ndan daha tez-tez tÉ™krarlanÄ±r. Buna sÉ™sÉ™b iÅŸkÉ™ncÉ™ vÉ™ tÉ™cavzÃ¼n É™ks olunduÄŸu videolrÄ±n yayÄ±lmsÄ±, bu videolarÄ±n É™vvÉ™lki hakimiyyÉ™tin dÃ¶vrÃ¼ndÉ™ 2011-ci ildÉ™ baÅŸ verdiyi barÉ™dÉ™ prokurorluÄŸun bÉ™yanatÄ± olub.  â€œVahid milli hÉ™rÉ™katâ€ partiyasÄ±nÄ±n ofislÉ™rinÉ™ hÃ¼cumlar Tbilisi vÉ™ GÃ¼rcÃ¼stanÄ±n regionlarÄ±nda baÅŸ verib. ', '02092016212030.jpg', '2016-09-02 19:20:30', 0),
(6, 'Neft Fondu ilin É™vvÉ™lindÉ™n 3,3 milyard dollarÄ±nÄ± satÄ±b', 'DÃ¶vlÉ™t Neft Fondu (SOFAZ) 2016-cÄ± ilin avqustda iyul ayÄ± ilÉ™ mÃ¼qayisÉ™dÉ™ MÉ™rkÉ™zi BankÄ±n (AMB) tÉ™ÅŸkil etdiyi valyuta hÉ™rraclarÄ±nda xarici valyuta satÄ±ÅŸÄ±nÄ± 12,3% artÄ±rÄ±b...', 'DÃ¶vlÉ™t Neft Fondu (SOFAZ) 2016-cÄ± ilin avqustda iyul ayÄ± ilÉ™ mÃ¼qayisÉ™dÉ™ MÉ™rkÉ™zi BankÄ±n (AMB) tÉ™ÅŸkil etdiyi valyuta hÉ™rraclarÄ±nda xarici valyuta satÄ±ÅŸÄ±nÄ± 12,3% artÄ±rÄ±b. Ä°yunda SOFAZ banklara mayda 431,4 milyon dollara qarÅŸÄ± 450 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.  Oxu.Az Ä°nterfax-a istinadÉ™n xÉ™bÉ™r verir ki, avqustda SOFAZ banklara iyul ayÄ±nda 450 milyon dollara qarÅŸÄ± 394,5 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.  Avqustda Neft Fondu 9 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 43,83 milyon dollar tÉ™ÅŸkil edib. Fond iyulda 8 hÉ™rracda iÅŸtirak edib, orta gÃ¼nlÃ¼k satÄ±ÅŸ hÉ™cmi 56,25 milyon dollar tÉ™ÅŸkil edib.  Avqustda, iyul ayÄ±nda olduÄŸu kimi, Neft Fondu valyutanÄ± yalnÄ±z kommersiya banklarÄ±na satÄ±b. Agentliyin hesablamalarÄ±na É™sasÉ™n, Ã¼mumilikdÉ™ yanvar-avqust aylarÄ±nda SOFAZ 3 milyard 281,4 milyon dollar Ã¼mumi mÉ™blÉ™ÄŸdÉ™ xarici valyuta satÄ±b.  HazÄ±rda SOFAZ valyuta hÉ™rraclarÄ±nda valyuta satÄ±ÅŸÄ±nÄ±n É™sas mÉ™nbÉ™si qismindÉ™ Ã§Ä±xÄ±ÅŸ edir.', '02092016212309.jpg', '2016-09-02 19:23:09', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
