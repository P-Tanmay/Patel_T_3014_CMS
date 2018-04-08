-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 08, 2018 at 08:18 PM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_data`
--

DROP TABLE IF EXISTS `login_data`;
CREATE TABLE IF NOT EXISTS `login_data` (
  `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login_data`
--

INSERT INTO `login_data` (`user_id`, `username`, `password`, `user_date`, `user_ip`) VALUES
(1, 't', 't', '2018-04-01 07:32:48', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `section_genre`
--

DROP TABLE IF EXISTS `section_genre`;
CREATE TABLE IF NOT EXISTS `section_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `genre_name` varchar(125) NOT NULL,
  PRIMARY KEY (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_genre`
--

INSERT INTO `section_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(7, 'Horror'),
(10, 'War'),
(13, 'Family'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `section_movies`
--

DROP TABLE IF EXISTS `section_movies`;
CREATE TABLE IF NOT EXISTS `section_movies` (
  `movies_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_cover` varchar(100) NOT NULL,
  `movies_title` varchar(50) NOT NULL,
  `movies_year` varchar(5) NOT NULL,
  `movies_runtime` varchar(30) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_release` varchar(20) NOT NULL,
  `movies_trailer` varchar(500) NOT NULL,
  PRIMARY KEY (`movies_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_movies`
--

INSERT INTO `section_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_release`, `movies_trailer`) VALUES
(1, 'mov1.jpg', 'Sherlock Holmes', '2009', ' 2h 8min ', 'After finally catching serial killer and occult \"sorcerer\" Lord Blackwood, legendary sleuth Sherlock Holmes and his assistant Dr. Watson can close yet another successful case. But when Blackwood mysteriously returns from the grave and resumes his killing spree, Holmes must take up the hunt once again. Contending with his partner\'s new fiancée and the dimwitted head of Scotland Yard, the dauntless detective must unravel the clues that will lead him into a twisted web of murder, deceit, and black magic - and the deadly embrace of temptress Irene Adler. Written by The Massie Twins', ' 25 December 2009', 'mov1.mp4'),
(2, 'mov2.jpg', 'The Judge ', '2014', '2h 21min', 'Big-city lawyer Hank Palmer returns to his childhood home where his father, the town\'s judge, is suspected of murder. Hank sets out to discover the truth and, along the way, reconnects with his estranged family.', '10 October 2014', 'mov2.mp4'),
(3, 'mov3.jpg', 'Real Steel ', '2011', ' 2h 7min ', 'In the near future, robot boxing is a top sport. A struggling promoter feels he\'s found a champion in a discarded robot.', ' 7 October 2011', 'mov3.mp4'),
(4, 'mov4.jpg', 'Captain America: Civil War', '2016', ' 2h 27min', 'With many people fearing the actions of super heroes, the government decides to push for the Hero Registration Act, a law that limits a hero\'s actions. This results in a division in The Avengers. Iron Man stands with this Act, claiming that their actions must be kept in check otherwise cities will continue to be destroyed, but Captain America feels that saving the world is daring enough and that they cannot rely on the government to protect the world. This escalates into an all-out war between Team Iron Man (Iron Man, Black Panther, Vision, Black Widow, War Machine, and Spider-Man) and Team Captain America (Captain America, Bucky Barnes, Falcon, Scarlet Witch, Hawkeye, and Ant Man) while a new villain emerges. Written by RespectTheHyphen', '6 May 2016 ', 'mov4.mp4'),
(5, 'mov5.jpg', 'Iron Man', '2008', '2h 6min', 'Tony Stark. Genius, billionaire, playboy, philanthropist. Son of legendary inventor and weapons contractor Howard Stark. When Tony Stark is assigned to give a weapons presentation to an Iraqi unit led by Lt. Col. James Rhodes, he\'s given a ride on enemy lines. That ride ends badly when Stark\'s Humvee that he\'s riding in is attacked by enemy combatants. He survives - barely - with a chest full of shrapnel and a car battery attached to his heart. In order to survive he comes up with a way to miniaturize the battery and figures out that the battery can power something else. Thus Iron Man is born. He uses the primitive device to escape from the cave in Iraq. Once back home, he then begins work on perfecting the Iron Man suit. But the man who was put in charge of Stark Industries has plans of his own to take over Tony\'s technology for other matters. Written by halo1k', '2 May 2008', 'mov5.mp4'),
(6, 'mov6.jpg', 'Iron Man Three ', '2013', '2h 10min', 'Marvel\'s \"Iron Man 3\" pits brash-but-brilliant industrialist Tony Stark/Iron Man against an enemy whose reach knows no bounds. When Stark finds his personal world destroyed at his enemy\'s hands, he embarks on a harrowing quest to find those responsible. This journey, at every turn, will test his mettle. With his back against the wall, Stark is left to survive by his own devices, relying on his ingenuity and instincts to protect those closest to him. As he fights his way back, Stark discovers the answer to the question that has secretly haunted him: does the man make the suit or does the suit make the man? Written by Jawadjee', '3 May 2013', 'mov6.mp4'),
(7, 'mov7.jpg', 'Match Point ', '2005', ' 2h 4min', 'From a humble background and with traditional values, Irish Chris Wilton is still struggling financially despite being a recently retired high ranked tennis pro. He has taken a job as a tennis instructor at an upscale London tennis club, although he knows there is a better life for him somewhere down the road. He is befriended by one of his students, wealthy Tom Hewett. Chris starts to date Tom\'s sister, Chloe Hewett, a girl-next-door type who is immediately attracted to Chris. Chloe quickly knows she wants to marry Chris, and through her businessman father, Alec Hewett, tries to help Chris and their future by getting him an executive job in Alec\'s company. In his life with the Hewetts, Chris begins to enjoy the finer things in life. ', '6 January 2006', 'mov7.mp4'),
(8, 'mov8.jpg', 'Budapest', '2009', '1h 53min ', 'José Costa is a Brazilian ghost writer. Returning from a ghost writers convention his airplane is rerouted to Budapest. His life is also rerouted when he meets Krista and with her help, learns \"the only language in the world which, according to the tongue-wagers, the devil respects\". Written by Anonymous', '22 May 2009', 'mov1.mp4'),
(9, 'mov9.jpg', 'Rough Night', '2017', ' 1h 41min ', 'Five best friends from college reunite 10 years later for a wild bachelorette weekend in Miami. Their hard partying takes a hilariously dark turn when they accidentally kill a male stripper. Amidst the craziness of trying to cover it up, they\'re ultimately brought closer together when it matters most.', '16 June 2017 ', 'mov9.mp4'),
(10, 'mov10.jpg', 'Don Jon ', '2013', '1h 30min', 'A New Jersey guy dedicated to his family, friends, and church, develops unrealistic expectations from watching porn and works to find happiness and intimacy with his potential true love.', '27 September 2013 ', 'mov10.mp4'),
(11, 'mov11.jpg', 'Ghost in the Shell ', '2017', '1h 47min', 'In the near future, Major is the first of her kind: A human saved from a terrible crash, who is cyber-enhanced to be a perfect soldier devoted to stopping the world\'s most dangerous criminals.', '31 March 2017', 'mov11.mp4'),
(12, 'mov12.jpg', 'xXx: Return of Xander Cage ', '2017', ' 1h 47min', 'Extreme athlete turned government operative Xander Cage (Vin Diesel) comes out of self-imposed exile, thought to be long dead, and is set on a collision course with deadly alpha warrior Xiang (Donnie Yen) and his team in a race to recover a sinister and seemingly unstoppable weapon known as Pandora\'s Box. Recruiting an all-new group of thrill-seeking cohorts, Xander finds himself enmeshed in a deadly conspiracy that points to collusion at the highest levels of world governments. Written by Ohad Gabay', '20 January 2017 ', 'mov12.mp4'),
(13, 'mov13.jpg', 'Riddick', '2013', '1h 59min', 'The infamous Riddick has been left for dead on a sun-scorched planet that appears to be lifeless. Soon, however, he finds himself fighting for survival against alien predators more lethal than any human he\'s encountered. The only way off is for Riddick to activate an emergency beacon and alert mercenaries who rapidly descend to the planet in search of their bounty. The first ship to arrive carries a new breed of merc, more lethal and violent, while the second is captained by a man whose pursuit of Riddick is more personal. With time running out and a storm on the horizon that no one could survive, his hunters won\'t leave the planet without Riddick\'s head as their trophy. Written by Universal Pictures', '6 September 2013', 'mov13.mp4'),
(14, 'mov14.jpg', 'The Fate of the Furious 8', '2017', '2h 16min', 'With Dom and Letty married, Brian and Mia retired and the rest of the crew exonerated, the globe-trotting team has found some semblance of a normal life. They soon face an unexpected challenge when a mysterious woman named Cipher forces Dom to betray them all. Now, they must unite to bring home the man who made them a family and stop Cipher from unleashing chaos.', ' April 14, 2017', 'mov14.mp4'),
(15, 'mov15.jpg', 'Furious 6', '2013', '2h 10min ', 'Since Dom (Diesel) and Brian\'s (Walker) Rio heist toppled a kingpin\'s empire and left their crew with $100 million, our heroes have scattered across the globe. But their inability to return home and living forever on the lam have left their lives incomplete. Meanwhile, Hobbs (Johnson) has been tracking an organization of lethally skilled mercenary drivers across 12 countries, whose mastermind (Evans) is aided by a ruthless second-in-command revealed to be the love Dom thought was dead, Letty (Rodriguez). The only way to stop the criminal outfit is to outmatch them at street level, so Hobbs asks Dom to assemble his elite team in London. Payment? Full pardons for all of them so they can return home and make their families whole again. Written by Universal Pictures', '24 May 2013', 'mov15.mp4'),
(16, 'mov16.jpg', 'Spider-Man: Homecoming', '2017', '2h 13min', 'Peter Parker balances his life as an ordinary high school student in Queens with his superhero alter-ego Spider-Man, and finds himself on the trail of a new menace prowling the skies of New York City.', ' 7 July 2017', 'mov16.mp4'),
(17, 'mov17.jpg', 'The Amazing Spider-Man', '2012', '2h 16min ', 'Peter Parker (Garfield) is an outcast high schooler who was abandoned by his parents as a boy, leaving him to be raised by his Uncle Ben (Sheen) and Aunt May (Field). Like most teenagers, Peter is trying to figure out who he is and how he got to be the person he is today. Peter is also finding his way with his first high school crush, Gwen Stacy (Stone), and together, they struggle with love, commitment, and secrets. As Peter discovers a mysterious briefcase that belonged to his father, he begins a quest to understand his parents\' disappearance - leading him directly to Oscorp and the lab of Dr. Curt Connors (Ifans), his father\'s former partner. As Spider-Man is set on a collision course with Connors\' alter-ego, The Lizard, Peter will make life-altering choices to use his powers and shape his destiny to become a hero.', '3 July 2012', 'mov17.mp4'),
(18, 'mov18.jpg', 'Home Alone', '1990', '1h 43min', 'It is Christmas time and the McCallister family is preparing for a vacation in Paris, France. But the youngest in the family named Kevin got into a scuffle with his older brother Buzz and was sent to his room which is on the third floor of his house. Then, the next morning, while the rest of the family was in a rush to make it to the airport on time, they completely forgot about Kevin who now has the house all to himself. Being home alone was fun for Kevin, having a pizza all to himself, jumping on his parents\' bed, and making a mess. Then, Kevin discovers about two burglars, Harry and Marv, about to rob his house on Christmas Eve. Kevin acts quickly by wiring his own house with makeshift booby traps to stop the burglars and to bring them to justice. Written by John Wiggins', '16 November 1990', 'mov18.mp4'),
(19, 'mov19.jpg', 'San Andreas', '2015', ' 1h 54min', 'In San Andreas, California is experiencing a statewide earthquake that goes on record as easily the biggest earthquake in history. Dwayne Johnson plays Ray Gaines, a helicopter rescue pilot for the Los Angeles Fire Department, who is trying to find his daughter, Blake (Alexandra Daddario), who is in San Francisco amidst the chaos. Ray\'s estranged wife, Emma, is forced to turn to Ray for help, as he is her last resort. Together they journey to save their daughter. Written by The Twiz', '29 May 2015 ', 'mov19.mp4'),
(20, 'mov20.jpg', 'Baywatch', '2017', '1h 56min ', 'In sun-kissed Emerald Bay, the vigorous Lieutenant Mitch Buchannon and Baywatch, his elite team of hand-picked and perfectly tanned lifeguards, protect the bay, keeping both sunbathers and beach lovers safe. However, this summer, two new eager trainees will join the demanding life-saving program, as well as an insubordinate former Olympic swimmer, who are all called to prove their worth on the lifeguard towers just on time when a new synthetic street drug begins to infest the Emerald Bay: the flakka. Without a doubt, this calls for some serious undercover teamwork action, as the badgeless heroes in spandex comb the beach for shady newcomers and nefarious entrepreneurs with hidden agendas of their own. Can Mitch\'s band save the bay? Written by Nick Riganas', '25 May 2017', 'mov20.mp4'),
(21, 'mov21.jpg', 'White House Down', '2013', '2h 11min ', 'Capitol Policeman John Cale has just been denied his dream job with the Secret Service of protecting President James Sawyer. Not wanting to let down his little girl with the news, he takes her on a tour of the White House, when the complex is overtaken by a heavily armed paramilitary group. Now, with the nation\'s government falling into chaos and time running out, it\'s up to Cale to save the president, his daughter, and the country.', ' 28 June 2013', 'mov21.mp4'),
(22, 'mov22.jpg', 'Air Force One', '1997', '2h 4min', 'Zero-tolerance\" policy with respect to terrorism. On the flight home, terrorists take over Air Force One (the President\'s official plane) and take the passengers (including his wife and daughter) hostage. The terrorists plan to execute one hostage every half-hour unless/until their demands are met. However, the President is a former Medal of Honor winner, so the terrorists may be in for a surpris', '25 July 1997 ', 'mov22.mp4'),
(23, 'mov23.jpg', 'Olympus Has Fallen', '2013', '1h 59min', 'When the White House (Secret Service Code: \"Olympus\") is captured by a terrorist mastermind and the President is kidnapped, disgraced former Presidential Secret Service Agent Mike Banning finds himself trapped within the building. As our national security team scrambles to respond, they are forced to rely on Banning\'s inside knowledge to help retake the White House, save the President and avert an even bigger disaster.', '22 March 2013', 'mov23.mp4'),
(24, 'mov24.jpg', ' London Has Fallen', '2016', '1h 39min ', 'After the British Prime Minister has passed away under mysterious circumstances, all leaders of the Western world must attend his funeral. But what starts out as the most protected event on earth, turns into a deadly plot to kill the world\'s most powerful leaders and unleash a terrifying vision of the future. The President of the United States, his formidable secret service head and a British MI-6 agent who trusts no one are the only people that have any hope of stopping it', ' 4 March 2016', 'mov24.mp4'),
(25, 'mov25.jpg', 'Sully', '2016', '1h 36min', 'On Thursday, January 15th, 2009, the world witnessed the \"Miracle on the Hudson\" when Captain Chesley Sullenberger, nicknamed \"Sully\", glided his disabled plane onto the frigid waters of the Hudson River, saving the lives of all 155 aboard. However, even as Sully was being heralded by the public and the media for his unprecedented feat of aviation skill, an investigation was unfolding that threatened to destroy his reputation and his career.', '9 September 2016', 'mov25.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `section_mov_genre`
--

DROP TABLE IF EXISTS `section_mov_genre`;
CREATE TABLE IF NOT EXISTS `section_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL,
  PRIMARY KEY (`mov_genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `section_mov_genre`
--

INSERT INTO `section_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 22, 1),
(38, 23, 5),
(39, 25, 1),
(40, 26, 16),
(41, 27, 16),
(42, 28, 4),
(43, 29, 4),
(44, 30, 1),
(45, 31, 2),
(46, 32, 1),
(47, 33, 1),
(48, 34, 1),
(49, 35, 1),
(50, 36, 1),
(51, 37, 1),
(52, 22, 1),
(53, 23, 1),
(54, 27, 4),
(55, 28, 15),
(56, 29, 1),
(57, 30, 4),
(58, 31, 4),
(59, 32, 16),
(60, 33, 10),
(61, 34, 1),
(62, 35, 1),
(63, 36, 5),
(64, 37, 1),
(65, 38, 3),
(66, 39, 13),
(67, 40, 7),
(68, 41, 1),
(69, 42, 1),
(70, 43, 2),
(71, 44, 2),
(72, 45, 10),
(73, 46, 1),
(74, 47, 16);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
