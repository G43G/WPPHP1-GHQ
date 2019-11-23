-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2019 at 02:39 PM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php1_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `picture_id` int(11) NOT NULL,
  `picture_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`picture_id`, `picture_name`) VALUES
(1, '1489257118assassins_creed_syndicate_gallery.jpg'),
(2, '1489257126battlefield_1_gallery.jpg'),
(3, '1489257138call_of_duty_black_ops_III_gallery.jpg'),
(4, '1489257156call_of_duty_infinite_warfare_gallery.jpg'),
(5, '1489257163civilization_VI_gallery.jpg'),
(6, '1489257169dark_souls_III_gallery.jpg'),
(7, '1489257178deus_ex_mankind_divided_gallery.jpg'),
(8, '1489257186dishonored_2_gallery.jpg'),
(9, '1489257193doom_gallery.jpg'),
(10, '1489257205dying_light_gallery.jpg'),
(11, '1489257241fallout_4_gallery.jpg'),
(12, '1489257252far_cry_primal_gallery.jpg'),
(13, '1489257258for_honor_gallery.jpg'),
(14, '1489257264grand_theft_auto_V_gallery.jpg'),
(15, '1489257279metal_gear_solid_v_the_phantom_pain_gallery.jpg'),
(16, '1489257287might_and_magic_heroes_VII_gallery.jpg'),
(17, '1489257301mirrors_edge_catalyst_gallery.jpg'),
(18, '1489257311mortal_kombat_x_gallery.jpg'),
(19, '1489257352need_for_speed_gallery.jpg'),
(20, '1489257359quantum_break_gallery.jpg'),
(21, '1489257541resident_evil_7_biohazard_gallery.jpg'),
(22, '1489257549rise_of_the_tomb_raider_gallery.jpg'),
(23, '1489257556sniper_elite_4_gallery.jpg'),
(24, '1489257563the_witcher_3_wild_hunt_gallery.jpg'),
(25, '1489257570tom_clancys_the_division_gallery.jpg'),
(26, '1489257578total_war_warhammer_gallery.jpg'),
(27, '1489257590watch_dogs_2_gallery.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `game_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `game_publisher` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `game_year` int(4) NOT NULL,
  `game_text` text COLLATE utf8_unicode_ci NOT NULL,
  `game_picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `game_trailer` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`game_id`, `game_name`, `game_publisher`, `game_year`, `game_text`, `game_picture`, `game_trailer`) VALUES
(1, 'ASSASSIN\'S CREED SYNDICATE', 'Ubisoft', 2015, 'Assassin\'s Creed Syndicate is an action-adventure video game developed by Ubisoft Quebec and published by Ubisoft. It was released on October 23, 2015, for PlayStation 4 and Xbox One, and on November 19, 2015, for Microsoft Windows. It is the ninth major installment in the Assassin\'s Creed series, and the successor to 2014\'s Assassin\'s Creed Unity. The plot is set in a fictional history of real-world events and follows the centuries-old struggle between the Assassins, who fight for peace with liberty, and the Templars, who desire peace through order. The story is set in Victorian era London and follows twin assassins Jacob and Evie Frye as they navigate the corridors of organized crime, and take back the city from Templar control. The open world design lets players freely roam London. The game is played from a third-person perspective and its world is navigated on foot or by carriage. The game introduces new traveling systems and refined combat and stealth mechanics. Players control the two lead protagonists—twins Jacob and Evie Frye—throughout the game\'s story, switching between them both during and outside of missions. Unlike its direct predecessors, Syndicate does not feature any multiplayer gameplay. Assassin\'s Creed Syndicate received positive reviews. Critics praised the visuals, the likability of the major characters, especially the Frye twins and the antagonist, the interwoven structure of the sidequests and main objectives, creative mission design, as well as the lightheartedness of the game and the entertaining story. Criticism was directed at the lackluster ending as well as the aging and repetitive gameplay and the lack of diverse character-models, yet overall critics agreed that it was a major improvement over Unity. Assassin\'s Creed Syndicate was nominated for multiple awards in 2015, including \"action-adventure\" of the year 2015 at The Game Awards. The game will be followed by Assassin\'s Creed Origins, which is set to be released worldwide in October 2017.', 'assassins_creed_syndicate.jpg', 'https://www.youtube.com/embed/3kGHHMc5dqE'),
(2, 'BATTLEFIELD 1', 'Electronic Arts', 2016, 'Battlefield 1 is a first-person shooter video game developed by EA DICE and published by Electronic Arts. Despite its name, Battlefield 1 is the fifteenth installment in the Battlefield series, and the first main entry in the series since Battlefield 4. It was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on October 21, 2016. Battlefield 1 received positive reviews by critics and was seen as an improvement over previous installments, Battlefield 4 and Battlefield Hardline. Most of the praise was directed towards its World War I theme, single player campaign, multiplayer modes, visuals and sound design.', 'battlefield_1.jpg', 'https://www.youtube.com/embed/c7nRTF2SowQ'),
(3, 'CALL OF DUTY: BLACK OPS III', 'Activision', 2015, 'Call of Duty: Black Ops III is a first-person shooter video game, developed by Treyarch and published by Activision. It is the twelfth entry in the Call of Duty series and the sequel to the 2012 video game Call of Duty: Black Ops II. It was released on Microsoft Windows, PlayStation 4, and Xbox One on November 6, 2015. A feature-limited version developed by Beenox and Mercenary Technology that only supports multiplayer modes was released on PlayStation 3 and Xbox 360 and was also the final Call of Duty title released on those platforms. Black Ops III takes place in 2065, 40 years after the events of Black Ops II, in a world facing upheaval from climate change and new technologies. Similar to its predecessors, the story follows a group of black ops soldiers. The game\'s campaign is designed to support 4-player cooperative gameplay, allowing for bigger, more open level design and less corridor shooting. As the player character is cybernetically enhanced, players have access to various special activities. The game also features a standalone Zombies mode, and a \"Nightmares\" mode which replaces all enemies as zombies. Announced on April 26, 2015, the game is the first Call of Duty video game released after Activision parted with Microsoft Studios and partnered with Sony Computer Entertainment, which secured the timed exclusivity of the game\'s downloadable content. Upon release, the game received generally positive reviews from critics, albeit slightly lower than the previous two games in the sub-series, with critics praising the gameplay, Zombies mode, and content. However, it was criticized for its story, absence of fan favorite story mode characters, and its lack of innovation. The seventh-generation console versions in particular were criticized for the lack of a campaign and numerous features, as well as it being online-only. It was a commercial success, with it becoming the top-selling retail game in the US in 2015, and one of the most successful titles released for the eighth generation of video game consoles.', 'call_of_duty_black_ops_III.jpg', 'https://www.youtube.com/embed/58Pspqx0XGs'),
(4, 'CALL OF DUTY: INFINITE WARFARE', 'Activision', 2016, 'Call of Duty: Infinite Warfare is a first-person shooter video game developed by Infinity Ward and published by Activision. It is the thirteenth primary installment in the Call of Duty series and was released worldwide for Microsoft Windows, PlayStation 4, and Xbox One on November 4, 2016. Development of Infinite Warfare began during 2014. It is the first title by Infinity Ward under the new three-year development cycle for the Call of Duty series. The game\'s campaign is centered around a battle for the Solar System, which the Settlement Defense Front (SDF), a hostile force who are the main antagonists, are attempting to take over. The player takes control of Captain Nick Reyes of the Special Combat Air Recon (SCAR). They have their own transforming fighter, named \"Jackal\", that they can customize as well as a central hub world named Retribution. Special editions of Infinite Warfare were released with a remastered version of Call of Duty 4: Modern Warfare, entitled Modern Warfare Remastered. Infinite Warfare\'s announcement trailer was met with a mixed reception from game critics and journalists and a negative reception from the Call of Duty community. The announcement trailer was the second-most disliked video on YouTube at the time, in part due to a campaign by fans of rival game Battlefield 1 and disgruntled Call of Duty fans expressing frustration at the direction the series had taken. Nevertheless, the game received generally positive reviews upon release; critics praised the single-player campaign, which was seen as a considerable improvement over the game\'s predecessor, Black Ops III, the Zombie mode, and the visuals, while the multiplayer mode was criticized for its lack of innovation.', 'call_of_duty_infinite_warfare.jpg', 'https://www.youtube.com/embed/EeF3UTkCoxY'),
(5, 'CIVILIZATION VI', '2K Games', 2016, 'Sid Meier\'s Civilization VI is a turn-based 4X video game and the sixth main title in the Civilization series. Civilization VI was developed by Firaxis Games, published by 2K Games, and distributed by Take-Two Interactive. The game was released on October 21, 2016 for Microsoft Windows and on October 24, 2016 for OS X. A port for Linux was released on February 9, 2017. As with other games in the series, the goal for the player is to lead their fledgling civilization from an early settlement through many millennia to become a world power and achieve one of several victory conditions, such as through military power, technological superiority, diplomatic leadership, or cultural influence, over the other human and computer controlled opponents. Players do this by exploring the world, founding new cities, building city improvements, deploying military troops to attack and defend from others, researching new technologies and cultural civics, and engaging in trade and negotiations with other world leaders. Development of Civilization VI was led by the teams that produced the expansions for Civilization V, and includes many of the gameplay mechanics introduced from those expansions as part of the base game. A critical design focus was to avoid having the player follow a pre-set path of improvements towards their civilization which they had observed from earlier games. Civilization VI places more emphasis on the terrain by \"unstacking\" city improvements from the main city space and giving bonuses for placing improvements near certain terrains. Other new features include research on the game\'s technology tree based on nearby terrain, a similar technology tree for cultural improvements and a better government civics structure for those playing on a cultural victory path, and new artificial intelligence mechanics for computer-controlled opponents that include secret goals and randomized engagements to disrupt an otherwise stable game.', 'civilization_VI.jpg', 'https://www.youtube.com/embed/5KdE0p2joJw'),
(6, 'DARK SOULS III', 'Bandai Namco Entertainment', 2016, 'Dark Souls III is an action role-playing video game developed by FromSoftware and published by Bandai Namco Entertainment for PlayStation 4, Xbox One, and Microsoft Windows. The fourth entry in the Souls series, Dark Souls III was released in Japan in March 2016, and worldwide in April 2016. Dark Souls III was critically and commercially successful, with critics calling it a worthy and fitting conclusion to the series. It was the fastest-selling game in Bandai Namco\'s history, selling over three million copies worldwide within the first two months after release. Dark Souls III: The Fire Fades, a complete version containing the base game and both downloadable content expansions, was released in April 2017.', 'dark_souls_III.jpg', 'https://www.youtube.com/embed/igzqz0d4VFE'),
(7, 'DEUS EX: MANKIND DIVIDED', 'Square Enix', 2016, 'Deus Ex: Mankind Divided is an action role-playing stealth video game developed by Eidos Montréal and published by Square Enix for Microsoft Windows, PlayStation 4, Xbox One in August 2016 and Linux in November 2016. It is the sixth game in the Deus Ex series, and a direct sequel to Deus Ex: Human Revolution. Set in a cyberpunk-themed dystopian world in 2029, two years after the events of Human Revolution, Mankind Divided features the return of Adam Jensen from the previous game, Deus Ex: Human Revolution, with new technology and body augmentations. Deus Ex: Mankind Divided received positive reviews from critics. Particular praise was aimed at the art direction, environmental design, the diverse options in gameplay and decision-making, characters and the narrative. Major points of criticism were the short length of the game in comparison to its predecessor as well as the ending of the game, which leaves multiple plot-points either unresolved or ambiguous. Deus Ex: Mankind Divided was nominated for the title of Best Role Playing Game at The Game Awards 2016.', 'deus_ex_mankind_divided.jpg', 'https://www.youtube.com/embed/vx_P10rHii4'),
(8, 'DISHONORED 2', 'Bethesda Softworks', 2016, 'Dishonored 2 is an action-adventure stealth video game developed by Arkane Studios and published by Bethesda Softworks. The sequel to 2012\'s Dishonored, the game was released for Microsoft Windows, PlayStation 4, and Xbox One on 11 November 2016.\r\n\r\nThe game takes place in the fictional city of Karnaca. After Empress Emily Kaldwin is deposed by the witch Delilah Copperspoon, the player may choose between playing as either Emily or her Royal Protector and father Corvo Attano as they attempt to reclaim the throne. Both Emily and Corvo employ their own array of supernatural abilities, though the player can alternatively decide to forfeit these abilities altogether. There is a multitude of ways to complete missions, from stealth to purposeful violent conflict, navigated through a sandbox environment.\r\n\r\nIdeas for Dishonored 2 began while developing the downloadable content of its predecessor, which spawned the decision to create a voice for Corvo Attano after being a silent character in the first installment. The advancement of the timeline was brought about once Emily Kaldwin, only a child in Dishonored, was first proposed as a playable character. The game\'s aesthetic was influenced by paintings and sculptures. Set in the new fictional city of Karnaca, its history was invented over the course of one year. The city itself was based on southern European countries like Greece, Italy, and Spain, drawing on the architecture, fashion, and technologies of 1851.\r\n\r\nDishonored 2 was released to a positive reception. Praised were the improvements made since the first game: the more challenging stealth, the adaptability of Emily and Corvo\'s abilities to both play styles, the art direction, the creative design of individual missions, the realization of the game\'s world as well as the replay-value and the artificial intelligence. Criticism was directed at the lack of focus of the overarching narrative. Aside from this, technical blunders as well as issues with the PC version were received unfavorably. Dishonored 2 won the award for Best Action/Adventure Game at The Game Awards 2016 and for Costume Design at the 2017 NAVGTR Awards.', 'dishonored_2.jpg', 'https://www.youtube.com/embed/7bLNC8VDTlQ'),
(9, 'DOOM', 'Bethesda Softworks', 2016, 'Doom is a first-person shooter video game developed by id Software and published by Bethesda Softworks. A reboot of the Doom franchise, it is the fourth title in the main series and the first major installment since Doom 3 in 2004. It was released worldwide on Microsoft Windows, PlayStation 4, and Xbox One on May 13, 2016 and is powered by id Tech 6. A port for Nintendo Switch developed by Panic Button is scheduled for release in Q4 2017. Players take the role of an unnamed marine as he battles demonic forces from Hell that have been unleashed by the Union Aerospace Corporation on a future-set colonized planet Mars. The gameplay returns to a faster pace with more open-ended levels, closer to the first two games than the slower survival horror approach of Doom 3. It also features environment traversal, character upgrades, and the ability to perform executions known as \"glory kills\". The game also supports an online multiplayer component and a level editor known as \"SnapMap\", co-developed with Certain Affinity and Escalation Studios respectively. Doom was announced as Doom 4 in 2008, but underwent an extensive development cycle with different builds and designs before being restarted in 2011, and revealed as simply Doom in 2014. It was tested by customers who pre-ordered the Bethesda game Wolfenstein: The New Order, and also by the general public. Mick Gordon composed the music for the game, with additional music contributed by Ben F. Carney, Chris Hite, and Chad Mossholder. Doom was well received by critics and players. The single-player campaign, graphics, and gameplay received considerable acclaim and praise, with reviewers crediting the game for recapturing the spirit of the classic Doom games and first-person shooters of the 1990s, whereas the multiplayer mode drew the most significant criticism. It was the second best-selling video game in North America and the UK a few weeks after its release, and sold over 500,000 copies for PCs within the same period.', 'doom.jpg', 'https://www.youtube.com/embed/RO90omga8D4'),
(10, 'DYING LIGHT', 'Warner Bros. Interactive Entertainment', 2015, 'Dying Light is an open world first person survival horror action-adventure video game developed by Techland and published by Warner Bros. Interactive Entertainment. Announced in May 2013, it was released in January 2015 for Microsoft Windows, Linux, PlayStation 4, and Xbox One. The game was once planned to be released on PlayStation 3 and Xbox 360, but was later cancelled due to hardware limitations. The game revolves around an undercover agent named Kyle Crane who is sent to infiltrate a quarantine zone in a city called Harran. It features an enemy-infested, open-world city with a dynamic day and night cycle. The day-night cycle changes the game drastically, as enemies become more aggressive and more difficult to deal with during night time. The gameplay is focused on weapons-based combat and parkour. The game also features an asymmetrical multiplayer mode (originally set to be a pre-order bonus); and a four-player, co-operative multiplayer mode. The development of the game began in early 2012. Prior to the game\'s official announcement, several reports claimed that Dying Light was a sequel to Dead Island, another franchise created by Techland. The rumor was later denied. The game\'s parkour system puts emphasis on natural movement. To implement that, Techland had to abandon most of the story elements and build them again from scratch. The music development was handled by Paweł Błaszczak. According to him, the soundtrack was inspired by movie soundtracks of the \'70s and \'80s. At release, Dying Light received positive reviews from critics, with praise mainly directed at the combat, graphics, co-operative multiplayer, navigation and the day-night cycle, while receiving criticism regarding the story, difficulty and technical issues. The game was the best-selling title for the month of January 2015 and broke the record for the first month sales for a new survival horror intellectual property. Techland announced that they would be committed to the game after its release. As a result, in May 2015, they put another project on hold to concentrate on the post-release development of Dying Light. The team released numerous updates, and two downloadable content packages, namely Cuisine & Cargo and The Bozak Horde. An expansion, titled Dying Light: The Following was announced as well and was released on February 9, 2016.', 'dying_light.jpg', 'https://www.youtube.com/embed/JP15SGJlt30'),
(11, 'FALLOUT 4', 'Bethesda Softworks', 2015, 'Fallout 4 is an action role-playing video game developed by Bethesda Game Studios and published by Bethesda Softworks. It is the fifth major installment in the Fallout series, and was released worldwide on November 10, 2015, for Microsoft Windows, PlayStation 4 and Xbox One. The game is set within an open world post-apocalyptic environment that encompasses the city of Boston and the surrounding Massachusetts region known as \"The Commonwealth\". The main story takes place in the year 2287, ten years after the events of Fallout 3 and 210 years after \"The Great War\", which caused catastrophic nuclear devastation across the United States. The player assumes control of a character referred to as the \"Sole Survivor\", who emerges from a long-term cryogenic stasis in Vault 111, an underground nuclear fallout shelter. After witnessing the murder of their spouse and kidnapping of their son, the Sole Survivor ventures out into the Commonwealth to search for their missing child. The player will subsequently explore the game\'s dilapidated world, complete various quests, help out factions, and acquire experience points to level up and increase the abilities of their character. New features to the series include the ability to develop and manage settlements, and an extensive crafting system where materials scavenged from the environment can be used to craft drugs and explosives, upgrade weapons and armor, and construct, furnish and improve settlements. Fallout 4 also marks the first game in the series to feature full voice acting for the protagonist. Fallout 4 received positive reviews from critics with many praising the world depth, player freedom, overall amount of content, crafting, and soundtrack, whilst criticism was mainly directed at the game\'s visuals and technical issues. The game was a commercial and critical success, generating US$750 million within the first 24 hours of its launch, and received numerous accolades from various gaming publications and award events, including the respective awards for Game of the Year and Best Game at the Academy of Interactive Arts & Sciences and British Academy Games Awards. Bethesda has released six downloadable content add-ons, including the expansions Far Harbor and Nuka-World.', 'fallout_4.jpg', 'https://www.youtube.com/embed/X5aJfebzkrM'),
(12, 'FAR CRY PRIMAL', 'Ubisoft', 2016, 'Far Cry Primal is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It was released worldwide for PlayStation 4 and Xbox One on February 23, 2016 and for Microsoft Windows on March 1, 2016. The game is a spiritual predecessor to the main Far Cry series. It is the first Far Cry game set in the Mesolithic Age. It revolves around the story of Takkar, who starts off as an unarmed hunter and rises to become the leader of a tribe. Far Cry Primal received generally positive reception from critics, who mostly praised the concept and setting, as well as the animal-taming mechanic and world design. Some reviewers felt there was a lack of weapons for the player to utilize, leading to repetitive gameplay design, while others felt the story and characters were not on par with the previous Far Cry games.', 'far_cry_primal.jpg', 'https://www.youtube.com/embed/LJ2iH57Fs3M'),
(13, 'FOR HONOR', 'Ubisoft', 2017, 'For Honor is a hack and slash fighting game developed and published by Ubisoft for Microsoft Windows, PlayStation 4, and Xbox One. The game allows players to play the roles of historical forms of soldiers and warriors, including knights, samurai, and vikings within a medieval setting, controlled using a third-person perspective. Announced at Electronic Entertainment Expo 2015, the game was developed primarily by Ubisoft\'s studio in Montreal, and released worldwide on February 14, 2017. Reception of the game was generally positive, with criticism mostly directed at the multiplayer matchmaking and the many technical issues regarding it.', 'for_honor.jpg', 'https://www.youtube.com/embed/EqpEIczpoxM'),
(14, 'GRAND THEFT AUTO V', 'Rockstar Games', 2015, 'Grand Theft Auto V is an action-adventure video game developed by Rockstar North and published by Rockstar Games. It was released on 17 September 2013 for PlayStation 3 and Xbox 360, on 18 November 2014 for PlayStation 4 and Xbox One, and on 14 April 2015 for Microsoft Windows. It is the first main entry in the Grand Theft Auto series since 2008\'s Grand Theft Auto IV. Set within the fictional state of San Andreas, based on Southern California, the single-player story follows three criminals and their efforts to commit heists while under pressure from a government agency. The open world design lets players freely roam San Andreas\' open countryside and the fictional city of Los Santos, based on Los Angeles. The game is played from either a third-person or first-person perspective and its world is navigated on foot or by vehicle. Players control the three lead protagonists throughout single-player and switch between them both during and outside missions. The story is centred on the heist sequences, and many missions involve shooting and driving gameplay. A \"wanted\" system governs the aggression of law enforcement response to players who commit crimes. Grand Theft Auto Online, the online multiplayer mode, lets up to 30 players explore the open world and engage in cooperative or competitive game matches. Development began soon after Grand Theft Auto IV\'s release and was shared between many of Rockstar\'s studios worldwide. The development team drew influence from many of their previous projects such as Red Dead Redemption and Max Payne 3, and designed the game around three lead protagonists to innovate on the core structure of its predecessors. Much of the development work constituted the open world\'s creation, and several team members conducted field research around California to capture footage for the design team. The game\'s soundtrack features an original score composed by a team of producers who collaborated over several years. Extensively marketed and widely anticipated, the game broke industry sales records and became the fastest-selling entertainment product in history, earning US $800 million in its first day and US $1 billion in its first three days. It received widespread critical acclaim, with praise directed at its multiple protagonist design, open world, presentation and gameplay. However, it caused controversies related to its depiction of women and a mission featuring torture during a hostage interrogation. Considered one of seventh generation console gaming\'s most significant titles and among the best games ever made, it won year-end accolades including Game of the Year awards from several gaming publications. It has shipped over 80 million copies and is one of the best-selling video games of all time.', 'grand_theft_auto_V.jpg', 'https://www.youtube.com/embed/LqjnJ_EyHb0'),
(15, 'METAL GEAR SOLID V: THE PHANTOM PAIN', 'Konami Digital Entertainment', 2015, 'Metal Gear Solid V: The Phantom Pain is an action-adventure stealth video game developed by Kojima Productions and published by Konami for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360 and Xbox One. It was released worldwide on September 1, 2015. It is the ninth installment in the series that was directed, written and designed by Hideo Kojima following Metal Gear Solid V: Ground Zeroes, a stand-alone prologue released the previous year, as well as his final work at Konami. Set in 1984, nine years after the events of Ground Zeroes and a decade before the events of the original Metal Gear, the story follows mercenary leader Punished \"Venom\" Snake as he ventures into Soviet-occupied Afghanistan and the Angola–Zaire border region to exact revenge on the people who destroyed his forces and came close to killing him during the climax of Ground Zeroes. It carries over the tagline of Tactical Espionage Operations first used in Metal Gear Solid: Peace Walker. The Phantom Pain was critically acclaimed upon release, with its gameplay drawing praise for featuring a variety of mechanics and interconnected systems which allow a high degree of player freedom in approaching objectives. While the story drew criticism from some critics for its lack of focus, others acknowledged its emotional power and exploration of mature themes. The game received perfect review scores from several publications, and was described by many to be one of the greatest stealth games of all time. A complete edition which bundles The Phantom Pain and Ground Zeroes together, titled Metal Gear Solid V: The Definitive Experience, was released in October 2016.', 'metal_gear_solid_V_the_phantom_pain.jpg', 'https://www.youtube.com/embed/_V_86OQViQE'),
(16, 'MIGHT & MAGIC HEROES VII', 'Ubisoft', 2015, 'Might & Magic Heroes VII is a turn-based strategy game in the Heroes of Might and Magic series. Like the other games in the series, players control leaders with magical abilities termed as \"heroes\", who recruit a variety of forces from strongholds. The heroes and their armies battle the opponents, who also use heroes to lead their forces. It features a campaign series of levels, standalone and multiplayer scenarios. In 2016, the downloadable content Lost Tales of Axeoth was released. On August 4, 2016 Trial by Fire was released, featuring two new campaigns, new faction (fortress) and many gameplay improvements available for all owners of the main game as well. However, the expansion itself is sold as standalone. Along with the expansion the game was updated to feature Denuvo DRM (since version 2.0). Two months after the release of the last expansion Ubisoft announced[2] that further game development was halted which left many critical bugs unresolved.', 'might_and_magic_heroes_VII.jpg', 'https://www.youtube.com/embed/yORCuHQb9i8'),
(17, 'MIRROR\'S EDGE CATALYST', 'Electronic Arts', 2016, 'Mirror\'s Edge Catalyst is an action-adventure platform video game developed by EA DICE and published by Electronic Arts. The game was released for Microsoft Windows, PlayStation 4 and Xbox One in June 2016. Its plot hinges on a slight rewrite to the background story and overall premise of 2008\'s Mirror\'s Edge and focuses on protagonist Faith Connors\' origin - and her attempt to overthrow a totalitarian conglomerate of corporations who rule the city of Glass. Mirror\'s Edge Catalyst received mixed to positive reviews from critics upon release, with most reviewers praising the free-running gameplay and visuals, but criticizing the story and combat.', 'mirrors_edge_catalyst.jpg', 'https://www.youtube.com/embed/r6GQEtUREWY'),
(18, 'MORTAL KOMBAT X', 'Warner Bros. Interactive Entertainment', 2015, 'Mortal Kombat X is a fighting video game developed by NetherRealm Studios and published by Warner Bros. Interactive Entertainment. Running on the Unreal Engine 3, it is the tenth main installment in the Mortal Kombat video game series and a sequel to the 2011 game Mortal Kombat. It was released on April 14, 2015 for Microsoft Windows, PlayStation 4, and Xbox One. NetherRealm studio\'s mobile team developed a version for iOS and Android devices. A version for Xbox 360 and PlayStation 3 was in development but was eventually cancelled because NetherRealm could not get the seventh generation of consoles versions to the expected level of quality. High Voltage Studios developed the PC version of the game, with Polish studio QLoc taking over the work on it shortly after the release of Kombat Pack 1. Like previous Mortal Kombat games, Mortal Kombat X\'s gameplay consists of two players, or one player and the CPU, fighting against each other with their selected character, using a large, varied array of character specific attacks. The game contains several modes, such as a story mode, which takes place twenty years after the previous Mortal Kombat game, several \'Tower\' modes, which feature dynamically changing challenges, numerous online modes, and the \'Krypt\', a mode played in a first-person perspective where players explore the areas unlocking a variety of in-game items. The console versions of Mortal Kombat X received mostly positive reviews from critics upon release. Most praise was directed at the game\'s controls, overall gameplay, graphics, story, and characters, with some reviewers calling it the best game in the Mortal Kombat series. However, the PC version of the game was met with mixed reception, with reviewers blaming numerous technical issues (including frequent crashes and slow netcode) for severely hindering the experience. Selling more than 5 million copies, the game was the fastest-selling game in the franchise and the ninth best-selling game in 2015. An upgraded version of Mortal Kombat X, titled Mortal Kombat XL, was released on March 1, 2016 for PlayStation 4 and Xbox One, including all downloadable content characters from the two released Kombat Packs, almost all bonus alternate costumes available at the time of release, improved gameplay, and improved netcode. This edition was also released for PC on October 4, 2016.', 'mortal_kombat_x.jpg', 'https://www.youtube.com/embed/bm8DOcm2RBA'),
(19, 'NEED FOR SPEED', 'Electronic Arts', 2016, 'Need for Speed is an online open world racing video game developed by Ghost Games and published by Electronic Arts, released for PlayStation 4 and Xbox One in November 2015, and released on Origin for Microsoft Windows on March 15, 2016. It is the twenty-second installment in the long-running Need for Speed series, and is a full reboot of the franchise. It marks the series\' second eighth generation installment, and is the first Need for Speed title to only be on eighth generation hardware. It marks the franchise\'s first return to the import scene and tuner culture focus since the release of 2010\'s Need for Speed: World.', 'need_for_speed.jpg', 'https://www.youtube.com/embed/CnEaaRSQhvM'),
(20, 'QUANTUM BREAK', 'Microsoft Studios', 2016, 'Quantum Break is a science fiction action-adventure third-person shooter video game developed by Remedy Entertainment and published by Microsoft Studios. The game was released worldwide for Microsoft Windows and Xbox One in April 2016. The game centers on Jack Joyce, granted time manipulation powers after a failed time-machine experiment, as he comes into conflict with former friend Paul Serene over how to deal with an apocalyptic \"End of Time\". In addition, the game includes platform game elements in less action-oriented segments. There are also \"junction points\" that affect the game\'s outcome. The game features episodes of an integrated live-action television show, featuring the actors of the characters. The characters interact with the player\'s choices, displaying the results of the decisions made. The game originally was envisioned as a sequel to Remedy\'s previous game, Alan Wake. The game\'s focus was shifted to time travel, as Microsoft wanted a new intellectual property with interactive storytelling. The team consulted scientists while creating the fictional science in this game. While the video game portion was developed internally by Remedy and directed by studio veteran Sam Lake, the TV side of the game was developed by Lifeboat Productions and directed by Ben Ketai. Shawn Ashmore, Aidan Gillen and Lance Reddick portrayed important roles in the game. The game uses a new engine developed by Remedy, the Northlight engine, and a technology called Digital Molecular Matter. The game was announced in mid-2013 and was set to release in 2015, but its release was delayed to avoid competition with other Xbox One exclusives. It received a positive reception, with critics praising the game\'s graphics, gameplay, presentation, and story. Critics had mixed opinions regarding the platforming elements, the convergence of video game and TV show, and the overall quality of the TV show. The Windows 10 version was criticized for its technical issues. As a result, the game was released for Steam on 29 September 2016.[1] Quantum Break was the best-selling new intellectual property published by Microsoft since the launch of Xbox One.', 'quantum_break.jpg', 'https://www.youtube.com/embed/ruY1eT9bXiw'),
(21, 'RESIDENT EVIL 7: BIOHAZARD', 'Capcom', 2017, 'Resident Evil 7: Biohazard is a survival horror video game developed and published by Capcom. The game was released worldwide in January 2017 for Microsoft Windows, PlayStation 4 – with support for the PlayStation VR headset – and Xbox One. It is the eleventh main entry and 24th entry overall in the Resident Evil franchise. It is the first main series installment to be played from a first-person perspective. The story follows civilian Ethan Winters as he searches for his wife Mia, which leads him to a derelict plantation inhabited by the Baker family. Ethan makes use of weapons and tools in the fight against the Baker family, and the \"Molded\", a humanoid form of bacteria. Healing items are used in the event of injury and there are puzzles that may be solved to further the story. Instead of being action-oriented like Resident Evil 5 and Resident Evil 6, the survival horror element present in earlier installments and exploration took priority. Thus, the game uses a first-person perspective. It is the first full-length game to be developed in the RE Engine. Led by Koshi Nakanishi, the director of Resident Evil: Revelations, the development team consisted of about 120 people. The game was presented as a virtual reality demo named KITCHEN a year prior to its announcement at E3 2016. Pre-release reception for the game was generally positive, with critics comparing the game to Konami\'s cancelled Silent Hills title and its P.T. demo. Resident Evil 7 received generally favorable reviews, which praised the gameplay, graphics, and design. PlayStation VR was hailed for increasing player involvement. However, it was also subject to criticism, with decreased resolution and physical discomfort cited as its main complaints. Further criticism was directed at the game\'s boss battles and the final chapter of the game. It had the third-best sales debut in the series and has sold over 3 million copies.', 'resident_evil_7_biohazard.jpg', 'https://www.youtube.com/embed/W1OUs3HwIuo'),
(22, 'RISE OF THE TOMB RAIDER', 'Square Enix', 2016, 'Rise of the Tomb Raider is an action-adventure video game developed by Crystal Dynamics and published by Square Enix. It is the sequel to the 2013 video game Tomb Raider, a reboot of the Tomb Raider franchise. It was released for Xbox One and Xbox 360 in November 2015 and for Microsoft Windows in January 2016. A special edition of the game, titled Rise of the Tomb Raider: 20 Year Celebration, was released worldwide for PlayStation 4 in October 2016. Rise of the Tomb Raider was officially announced in June 2014. The game\'s storyline follows Lara Croft as she ventures into Siberia in search of the legendary city of Kitezh, whilst battling a paramilitary organization called \"the Trinity\" that intends on beating her to the city\'s promise of immortality. Presented from a third-person perspective, the game primarily focuses on survival and combat, while the player may also explore its landscape and various optional tombs. Camilla Luddington returns to voice and perform her role as Lara. Upon release, Rise of the Tomb Raider was critically acclaimed, with critics praising its graphics, gameplay, and characterization. It was the best-selling Xbox One game during Christmas week, and had sold over one million copies by the end of 2015. Additional content was also released, including a new story campaign, a new gameplay mode, as well as new outfits and weapons for Lara.', 'rise_of_the_tomb_raider.jpg', 'https://www.youtube.com/embed/qiYiddjc6cU'),
(23, 'SNIPER ELITE 4', 'Rebellion Developments', 2017, 'Sniper Elite 4 is a third-person tactical shooter stealth video game developed by Rebellion Developments. The sequel to Sniper Elite III, the game was released for Microsoft Windows, PlayStation 4 and Xbox One on 14 February 2017.', 'sniper_elite_4.jpg', 'https://www.youtube.com/embed/lGBRAEvXZ94'),
(24, 'THE WITCHER 3: WILD HUNT', 'CD Projekt', 2015, 'The Witcher 3: Wild Hunt is a 2015 action role-playing video game developed by CD Projekt RED and published by CD Projekt. Based on The Witcher series of fantasy novels by Polish author Andrzej Sapkowski, it is the sequel to the 2011 video game The Witcher 2: Assassins of Kings and the third installment in The Witcher video game series. Played in an open world with a third-person perspective, players control protagonist Geralt of Rivia, a monster hunter known as a Witcher, who seeks to find his missing adopted daughter on the run from the Wild Hunt, an otherworldly force determined to capture and use her powers. Throughout the game, players battle against the world\'s many dangers using weapons and magic, interact with various non-player characters, and complete main story quests and side quests to acquire experience points and gold used to increase Geralt\'s various abilities and gear. The game\'s central story features multiple endings that are determined by Geralt\'s choices made by the player during certain points of the story. Development started in 2011 and lasted a total of three and a half years – of which, over two and a half years were devoted to voice recording. The writing was infused with aspects of real life, in a deliberate attempt to avoid simplification, give authenticity, and reflect Sapkowski\'s novels. Europe served as the basis for designing the open world, with Poland, Amsterdam, and Scandinavia as primary inspirations. REDengine 3 enabled the developer to create a complex story and not compromise the game world, the size of which was aided by the technology of PlayStation 4 and Xbox One. The music was primarily composed by Marcin Przybyłowicz, employing the use of older instruments, and performed in Germany by the Brandenburg State Orchestra. The Witcher 3: Wild Hunt was released worldwide on 19 May 2015 for Microsoft Windows, PlayStation 4, and Xbox One. The game was met with critical acclaim upon release, with praise directed primarily toward its gameplay, narrative, world design, combat, and visuals, although criticism was aimed at certain technical issues, later patched. It became the most awarded game of 2015, receiving numerous Game of the Year awards from gaming publications, critics, and award events, and is regarded by many to be one of the greatest role-playing games of all time. The game was also a commercial success, selling over six million copies within six weeks of its release. Two expansion packs, Hearts of Stone and Blood and Wine, were produced. A Game of the Year edition, which includes the base game, its two expansion packs, and all additional downloadable content, was released in August 2016.', 'the_witcher_3_wild_hunt.jpg', 'https://www.youtube.com/embed/xt_65k-gv1U'),
(25, 'TOM CLANCY\'S THE DIVISION', 'Ubisoft', 2016, 'Tom Clancy\'s The Division is an online-only action role-playing video game developed by Massive Entertainment and published by Ubisoft, with assistance from Red Storm Entertainment, for Microsoft Windows, PlayStation 4 and Xbox One. It was announced during Ubisoft\'s E3 2013 press conference, and was released worldwide on 8 March 2016. It is set in a near future New York City in the aftermath of a smallpox pandemic; the player, who is an agent of the eponymous Strategic Homeland Division, commonly referred to as simply \"The Division\", is tasked with helping the group rebuild its operations in Manhattan, investigate the nature of the outbreak, and combating criminal activity in its wake. The Division is structured with elements of role-playing games, as well as collaborative and player versus player online multiplayer. The game received generally positive reviews, and was a commercial success, with Ubisoft stating that the game broke the company\'s record for highest number of first-day sales. Furthermore, one week after the game\'s release, Ubisoft stated that The Division was the company\'s best-selling game, and the industry\'s biggest first-week launch for a new game franchise, which generated an estimated amount of $330 million globally.', 'tom_clancys_the_division.jpg', 'https://www.youtube.com/embed/uElsBflqgYw'),
(26, 'TOTAL WAR: WARHAMMER', 'Sega', 2016, 'Total War: Warhammer is a turn-based strategy and real-time tactics video game developed by Creative Assembly and published by Sega for Microsoft Windows, Linux and macOS via the Steam gaming platform. The game features the gameplay of the Total War series with factions of Games Workshop\'s Warhammer Fantasy series; it is the first Total War game not to portray a historical setting. It is the 10th title in the Total War series and the first title to be released in the Total War: Warhammer trilogy. Like previous titles in the Total War series, gameplay unfolds both on a scale of kingdoms in a turn-based strategy campaign, managing cities and the movement of armies, and on a smaller scale in real-time tactics skirmishes and sieges, managing the movement and actions of individual units and characters within an army during a battle. The player controls one of several fantasy factions, each with their own units, characters and abilities. These include Dwarves, Human factions, Greenskins and Vampire Counts at launch, with more added as paid downloadable content. Total War: Warhammer was largely well received by critics, and sold over half a million copies in its first few days on sale.', 'total_war_warhammer.jpg', 'https://www.youtube.com/embed/vakF40RDWnU'),
(27, 'WATCH DOGS 2', 'Ubisoft', 2016, 'Watch Dogs 2 (stylized as WATCH_DOGS 2) is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It is the sequel to 2014\'s Watch Dogs and was released worldwide for PlayStation 4, Xbox One and Microsoft Windows in November 2016. Set within a fictionalized version of the San Francisco Bay Area, the game is played from a third-person perspective and its open world is navigated on-foot or by vehicle. Players control Marcus Holloway, a hacker who works with the hacking group DedSec to take down the city\'s advanced surveillance system known as ctOS. There are multiple ways to complete missions, and each successful assignment increases the follower count of DedSec. Cooperative multiplayer allows for competitive one-on-one combat and connecting with other players in order to neutralize a player who is causing havoc. Ubisoft Montreal, the game\'s developer, studied player feedback from the first game to assess what could be improved in Watch Dogs 2 and the setting was researched by making frequent trips to California. Ubisoft Reflections was responsible for overhauling the driving mechanic. Real hackers were consulted to validate scripts and game mechanics for authenticity and references to real life hacktivism were fictionalized, like the Project Chanology protest. The original soundtrack for Watch Dogs 2 was composed by Hudson Mohawke. The game was released to generally favorable reception and praised for improving upon the original Watch Dogs in areas like the hacking, setting, characters and driving. However, character inconsistencies, firearms and frequent technical issues – later patched – were cited as imperfections.', 'watch_dogs_2.jpg', 'https://www.youtube.com/embed/2GIVVsTKTLg');

-- --------------------------------------------------------

--
-- Table structure for table `nav`
--

CREATE TABLE `nav` (
  `nav_id` int(11) NOT NULL,
  `nav_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nav_path` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nav`
--

INSERT INTO `nav` (`nav_id`, `nav_name`, `nav_path`) VALUES
(1, 'Home', 'index.php'),
(2, 'Browse Games', 'index.php?page=1'),
(3, 'Gallery', 'index.php?page=2'),
(4, 'Administrator', 'index.php?page=3'),
(5, 'About', 'index.php?page=4');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `EA` int(100) NOT NULL,
  `BS` int(100) NOT NULL,
  `U` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`EA`, `BS`, `U`) VALUES
(5, 4, 8);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisher_id`, `publisher_name`) VALUES
(1, 'Ubisoft'),
(2, 'Electronic Arts'),
(3, 'Activision'),
(4, '2K Games'),
(5, 'Bandai Namco Entertainment'),
(6, 'Square Enix'),
(7, 'Bethesda Softworks'),
(8, 'Warner Bros. Interactive Entertainment'),
(9, 'Rockstar Games'),
(10, 'Konami Digital Entertainment'),
(11, 'Microsoft Studios'),
(12, 'Capcom'),
(13, 'Rebellion Developments'),
(14, 'CD Projekt'),
(15, 'Sega');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_mail` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_mail`, `user_name`, `user_password`, `user_role`) VALUES
(1, 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator'),
(2, 'user@user.com', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `year_id` int(11) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year`) VALUES
(1, 2015),
(2, 2016),
(3, 2017);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`picture_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `nav`
--
ALTER TABLE `nav`
  ADD PRIMARY KEY (`nav_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `picture_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `nav`
--
ALTER TABLE `nav`
  MODIFY `nav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
