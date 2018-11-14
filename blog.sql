-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Nov 14, 2018 alle 10:33
-- Versione del server: 10.1.30-MariaDB
-- Versione PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Struttura della tabella `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `post_count`) VALUES
(1, 'notizie prepartita', 'prepartita', 1),
(2, 'mercato', 'notizie di mercato', 3),
(3, 'risultati', 'risultati ', 1),
(4, 'notizie giocatori', 'articoli sui giocatori bianconeri', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `post`
--

INSERT INTO `post` (`id`, `category_id`, `user_id`, `name`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(8, 3, 1, 'milan 0-2 juventus', 'ottima-prestazione-della-juve-che-batte-il-milan-per-2-0', 'MILAN-JUVENTUS 0-2\r\n(primo tempo 0-1)\r\nMARCATORI Mandzukic all\'8\' p.t.; Ronaldo al 36\' s.t.\r\nMILAN (4-4-2) G. Donnarumma; Abate (dal 30\' s.t. Borini), Zapata, Romagnoli, Rodriguez; Suso, Kessie, Bakayoko, Calhanoglu (dal 30\' s.t. Laxalt); Castillejo (dal 17\' s.t. Cutrone), Higuain. (Reina, A. Donnarumma, Simic, Bellanova, Calabria, Mauri, Montolivo, Bertolacci, Halilovic). All. Gattuso\r\nJUVENTUS (4-3-3) Szczesny; Cancelo, Benatia, Chiellini, Alex Sandro; Bentancur, Pjanic (dal 30\' s.t. Khedira), Matuidi; Dybala (dal 34\' s.t. Douglas Costa), Mandzukic, Ronaldo. (Perin, Pinsoglio, Barzagli, Bonucci, Rugani, De Sciglio, Bernardeschi, Kean). All. Allegri.\r\nARBITRO Mazzoleni\r\nNOTE Higuain (M) sbaglia un rigore al 41\' p.t. e viene espulso al 38\' s.t.; Ammoniti Benatia, Bakayoko, Borini', '2018-11-13 17:34:16', '2018-11-13 17:34:16'),
(9, 2, 1, 'Juventus, che duello per De Ligt! C\'è anche il Bayern', 'il-club-bianconero-non-perde-di-vista-altri-talenti-come-jean-clair-todibo-un-altro-1999-come-il-centrale-olandese-dell-ajax', 'La Juventus ha individuato da tempo Matthijs De Ligt come l’elemento su cui puntare con decisione per una rifondazione (anagrafica, soprattutto) della difesa. A 19 anni non soltanto è titolare fisso dell’Ajax e della Nazionale olandese, ma è diventato uno degli oggetti del desiderio delle big europee. Così in Germania scrivono che, oltre alle solite due Manchester e al club bianconero, anche il Bayern avrebbe individuato in De Ligt un giocatore da portare a Monaco. Magari anche in fretta, viste le prove che sta offrendo la retroguardia bavarese, non ultima quella in casa del Borussia Dortmund, che sabato avrebbe potuto segnare ben più di tre gol nello scontro diretto, con fatiche assortite da parte della coppia Boateng-Hummels.\r\n\r\nJuventus che non perde di vista, poi, altri talenti. Come Jean-Clair Todibo, un altro 1999 come De Ligt. Il Tolosa non ha avuto problemi a lanciarlo titolare quest’anno, lui ha risposto con prestazioni di ottimo livello, ben al di là di un’età giovanissima (compirà i 19 anni il 30 dicembre). In Italia, poi, gli osservatori bianconeri monitorano sempre le prestazioni di altri due centrali di prospettiva. Il primo è il serbo Nikola Milenkovic che, dopo la fase di adattamento della passata stagione, è stato schierato con decisione da Stefano Pioli nella Fiorentina, proseguendo un percorso di crescita cominciato nelle ultime partite dell’ultimo campionato. Il secondo è invece Joachim Andersen, danese approdato quest’estate dal Twente nella Sampdoria. Il suo inizio di stagione è stato tale da porlo al centro dell’attenzione generale. Nelle ultime tre partite la difesa blucerchiata ha passato un periodo infelice (11 reti incassate in tre partite), ma su Andersen non si abbassa la guardia di pretendenti importanti: non soltanto la Juventus ma anche Arsenal e l’immancabile Manchester United.', '2018-11-13 17:37:08', '2018-11-13 17:37:08'),
(10, 2, 1, 'Juventus, il flop United spinge Pogba', 'e-una-foto-con-il-figlio-di-nedved-scatena-i-tifosi-dopo-la-sconfitta-nel-derby-i-red-devils-appaiono-destinati-a-un-altro-campionato-anonimo-in-premier', 'Non potrà mai esserci una controprova e capire se con Paul Pogba in campo sarebbe andata diversamente. Ma il francese - domenica - ha saltato il derby di Manchester per una botta alla coscia incassata mercoledì contro la Juventus in Champions League, la stessa botta che lo ha obbligato a rinunciare al doppio impegno con la Francia: venerdì in Olanda per l’ultimo impegno dell’Uefa Nations League e martedì in amichevole con l’Uruguay. E forse non è un caso che, dopo tre vittorie consecutive, sia arrivato un ko per 3-1 che non ammette repliche.\r\nUna sconfitta che ha un effetto immediato, ovvero il “taglio” dei Red Devils da ogni discorso legato alla conquista della Premier League, appuntamento che manca ormai dal 2013, ultimo anno del regno di Alex Ferguson. Il City capolista è lassù a quota 32, lo United è mestamente ottavo a quota 20, lontano sette punti anche dal piazzamento che vale la qualificazione Champions. Un obiettivo bruciato e l’altro già da recuperare, dopo appena 12 giornate. E nella stessa Champions la Juventus mercoledì ha avuto a disposizione il match point per se stessa e per porre in seria difficoltà lo United, sprecando il tutto con un finale che ha rimesso ogni cosa in gioco e con gli inglesi oggi più tranquilli, anche se nell’ultima giornata dovranno andare in casa del Valencia.\r\nQuesto per dire che, a livello di obiettivi sportivi, Pogba deve cercare con la Nazionale quelle soddisfazioni che allo United al momento sono negate. Una chiave su cui la Juventus andrà a giocare nei prossimi giorni, se e quando ci sarà il via per le grandi manovre che dovranno portare a un ritorno del francese in Italia. Un assaggio si è visto mercoledì sera, tra i festeggiamenti per Pogba all’Allianz Stadium e le confessioni ai tifosi della determinazione di voler tornare a Torino. Tifosi ancor più scatenati ieri, quando Pavel Nedved junior, figlio 18enne del vicepresidente bianconero, ha postato su Instagram una foto insieme con il francese: «Il mio amico». Immediate le condivisioni e i commenti, al grido di “Portalo a Torino”.', '2018-11-13 17:53:19', '2018-11-13 17:53:19'),
(11, 1, 1, 'milan juve pre partita di una grande sfida', 'i-bianconeri-si-preparano-all-attesissimo-big-match-della-12esima-giornata', 'Una sfida dal grande fascino, un appuntamento da non perdere: San Siro si illumina per Milan-Juventus, posticipo della dodicesima giornata di Serie A. Alla Scala del Calcio arrivano i campioni d’Italia, che guardano tutti dall’alto in classifica ma vogliono subito rispondere al successo del Napoli secondo. Ad ospitarli i rossoneri, che vogliono migliorare la serie di tre vittorie consecutive in campionato. Vivi il prepartita di Milan-Juve.\r\nGli acciacchi di Sami Khedira ed Emre Can lasciano qualche punto interrogativo sulla tenuta del centrocampo della Juventus nell\'arco di tutta la stagione. I centrocampisti a disposizione di Massimiliano Allegri, infatti, sono solamente cinque e nelle ultime settimane i vari Pjanic, Matuidi e Bentancur sono stati costretti agli straordinari. Una situazione che i bianconeri sono riusciti a gestire relativamente bene ma che potrebbe costare caro se si ripetesse anche quando inizieranno le partite \'pesanti\' soprattutto in Europa.\r\n\r\nAFFONDO A GENNAIO - Non è escluso che i bianconeri possano cercare un colpo in mezzo al campo già nel mercato di gennaio. I nomi in orbita Juve non mancano, da Dembélé a Ramsey (entrambi vanno in scadenza nel 2019) e anche il sogno Pogba resta vivo. Secondo quanto riporta Rai Sport, la Juve farà un tentativo per il francese già nella prossima finestra di mercato mentre per l\'Express, tabloid inglese, i bianconeri sono pronti a mettere sul piatto uno dei tre pallini di José Mourinho: Mandzukic, Alex Sandro oppure Medhi Benatia più un conguaglio in favore dei Red Devils. Quest\'anno, tra l\'altro, sono cambiate le regole Uefa. Un calciatore che si trasferisce in un\'altra squadra a gennaio può giocare le coppe europee con il suo nuovo club. In caso di ritorno a Torino, quindi Pogba, potrebbe essere schierato dagli ottavi di Champions con la maglia della Juve. E i tifosi bianconeri continuano a sognare il ritorno del \'Polpo\'.', '2018-11-13 21:03:29', '2018-11-13 21:03:29'),
(12, 2, 1, 'Calciomercato Juventus, è deciso: 3 colpi e 2 sogni', 'calciomercato-juventus-agnelli-ha-deciso-in-arrivo-3-colpi-ma-occhio-anche-a-2-clamorose-suggestioni', 'MERCATO JUVE – Dopo tante indiscrezioni, è arrivato il momento di stringere per alcune trattative di calciomercato della Juventus. La dirigenza bianconera infatti si sta muovendo come suo solito con largo anticipo per mettere le mani su alcuni gioielli preziosi e avrebbe finalmente scelto su chi puntare sia per quanto riguarda il presente che in prospettiva futura. In particolare, sarebbero ben 3 i colpi all’orizzonte decisi da Agnelli, Paratici e Nedved ma non solo: in ballo infatti ci sarebbero anche 2 super sogni di calciomercato della Juve che avrebbero veramente del clamoroso, ma andiamo con ordine.\r\n\r\nCALCIOMERCATO JUVENTUS, TUTTI I NOMI – Partiamo dal primo nome, un vero e proprio pallino della dirigenza juventina: stiamo parlando di Sandro Tonali. Dopo averlo seguito per moltissimo tempo, la Juve avrebbe ormai sciolto le riserve e, come riportato anche da Tuttosport, sarebbe pronta a stringere i tempi per portarlo a Torino, vista anche la foltissima concorrenza per il gioiellino italiano classe 2000. Sarebbe un colpo importantissimo di prospettiva, visto che Tonali è considerato da tutti uno degli astri nascenti più importanti del panorama caalcistico europeo ed è stato indicato come il “nuovo Pirlo”. Ma, come detto, il centrocampista del Brescia non è l’unico colpaccio che la Juventus sarebbe pronta a mettere a segno', '2018-11-14 10:01:02', '2018-11-14 10:01:02'),
(14, 4, 2, 'Ronaldo, 9 partite per superare Messi come capocannoniere del 2018', 'corsa-verso-il-titolo-di-capocannoniere-dell-anno', 'TORINO - E\' una classifica che non molti giocatori guardano ma i due protagonisti in questione sicuramente ce l\'avranno tatuata nella mente. Nella classifica dei migliori realizzatori dell\'anno solare Leo Messi ha un vantaggio di 3 reti nei confronti di Cristiano Ronaldo: 40 contro 37, mentre il terzo nella classifica che considera solo i primi 5 campionati europei è Robert Lewandowski ma ben staccato, a quota 32.\r\n\r\nUNA PARTITA IN PIU\' - In questo primo scorcio di stagione l\'argentino ha realizzato 14 reti tra tutte le competizioni mentre l\'attaccante della Juventus è a quota 9, di cui 8 nel campionato italiano. Dando uno sguardo al calendario ci sono ancora poche occasioni dopo la sosta per ribaltare le gerarchie: Ronaldo avrà a disposizione 9 partite (Spal, Valencia, Fiorentina, Inter, Young Boys, Torino, Roma, Atalanta e Sampdoria) mentre Messi ne avrà solo 8 (Atletico, Psv, Villarreal, Cultural Leonesa, Espanyol, Tottenham, Levante, Celta Vigo). Per altro nel computo delle gare fin qui giocate Leo è a quota 41 mentre Cristiano ne ha 4 in meno. \r\n\r\nSTATISTICHE IMPRESSIONANTI - Al di là dei gol segnati, Cristiano Ronaldo ha già monopolizzato il palcoscenico italiano: secondo i dati Opta il 5 volte Pallone d\'oro ha partecipato attivamente a 108 tiri della Juventus in Serie A (88 conclusioni, 20 assist al tiro), almeno 28 in più di qualsiasi altro giocatore nei top-5 campionati europei 2018/19. Per quanto riguarda la classifica cannonieri della Serie A è pronto il sorpasso al primo posto: nelle ultime 9 giornate CR7 ha segnato 8 reti e ora ha messo nel mirino Piatek che si è arenato dopo un inizio folgorante (9 reti, tutte nei primi 8 turni).', '2018-11-14 10:32:16', '2018-11-14 10:32:16');

-- --------------------------------------------------------

--
-- Struttura della tabella `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dump dei dati per la tabella `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$12$MhkW0uEpM4cYP6D/pyipNOrcf//CrHMEFkYme1yHrHfnUKYSR3nhC'),
(2, 'Cristiano Ronaldo', '$2y$12$MhkW0uEpM4cYP6D/pyipNOrcf//CrHMEFkYme1yHrHfnUKYSR3nhC'),
(3, 'Alessandro Del Piero', '$2y$12$MhkW0uEpM4cYP6D/pyipNOrcf//CrHMEFkYme1yHrHfnUKYSR3nhC');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64C19C1989D9B62` (`slug`);

--
-- Indici per le tabelle `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Indici per le tabelle `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A8A6C8D12469DE2` (`category_id`),
  ADD KEY `IDX_5A8A6C8DA76ED395` (`user_id`);

--
-- Indici per le tabelle `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT per la tabella `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT per la tabella `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`);

--
-- Limiti per la tabella `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_5A8A6C8DA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
