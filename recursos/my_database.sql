-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Tempo de geração: 09/05/2024 às 02:01
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `my_database`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `accesstoken`
--

CREATE TABLE `accesstoken` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `tokenString` text NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `birthday` char(10) DEFAULT NULL,
  `photoUrl` text DEFAULT NULL,
  `biography` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `artist`
--

INSERT INTO `artist` (`id`, `name`, `birthday`, `photoUrl`, `biography`) VALUES
(1, 'Shameik Moore', '1995-05-04', '11', 'Born in Atlanta of Jamaican descent, Shameik Moore booked his first lead role of Malcolm in Rick Famuyiwa\'s Dope (2015), produced by Forest Whitaker and Nina Yang Bongiovi. The film, which is narrated by Forest Whitaker, also stars Tony Revolori, Kiersey Clemons, Zoë Kravitz, Kimberly Elise and A$AP Rocky.\n\nHis strong musical ability was recognized when he recorded several tracks for the film\'s soundtrack with Grammy award-winner Pharrell Williams.\n\nShameik got his start with Nick Cannon as a series regular on his Cartoon Network original live action sketch comedy series Incredible Crew (2012). He guest starred on Tyler Perry\'s House of Pain (2007) and BET\'s Reed Between the Lines (2011) and has a nice role in the Hallmark film The Watsons Go to Birmingham (2013). Shameik\'s big screen debut was in the film Joyful Noise (2012), where he starred alongside Queen Latifah and Dolly Parton.\n\nShameik Moore is a young multifaceted singer, actor and dancer and well on his way to leave his mark in the industry. His debut mix tape I Am Da Beat hosted by DJ Greg Street, debuted in 2012 to over 100,000 downloads. Shameik\'s skillful mastery of his vocal range and his fun, sensual lyrics have developed a strong fan base for this entertainer, who is set to release his new album in 2015.\n\nShameik, better known as Meak when he was a teen, is no stranger to viral love, with over 10 million hits on Youtube and a faithful fan base who faithfully supports him in his rise in the entertainment industry.'),
(2, 'Hailee Steinfeld', '1996-12-11', '12', 'Hailee Steinfeld was born on December 11, 1996 in Tarzana, California, to Cheri (Domasin), an interior designer, and Peter Steinfeld, a personal fitness trainer. She has a brother, Griffin. Her uncle is Jake Steinfeld, a fitness trainer, and her great-uncle is actor Larry Domasin. Her father is of Ashkenazi Jewish descent and her mother\'s ancestry is Filipino, African-American, British Isles, and German. Hailee was raised in Thousand Oaks, California.\n\nAt an early age, she appeared in several short films to gain experience. She played the role of Talia Alden in She\'s a Fox (2009), which received several awards. Her debut in a feature film for theater was True Grit (2010). She played a major role, Mattie Ross, with Jeff Bridges, Josh Brolin, and Matt Damon. She got big attention for her performance in this movie, and she was nominated for the \'Best Supporting Actress\' Academy Award. After a short break, she appeared in several films which were released in 2013. She played the role of Juliet in Shakespeare\'s Romeo & Juliet (2013), which also starred Douglas Booth, and was released in 2013. Also, she appeared in Ender\'s Game (2013) as Petra Arkanian, based on the book written by Orson Scott Card, and this movie was directed by Gavin Hood. She starred with Asa Butterfield and Harrison Ford, and this movie received positive reviews. She appeared in the short film The Magic Bracelet (2013), with Bailee Madison, as Angela.\n\nIn 2014, She appeared in 3 Days to Kill (2014), which was released on February 21, 2014. she played the major role of Zoey Renner, daughter of Kevin Costner. In Hateship Loveship (2013), she played Sabitha with Kristen Wiig. This movie was released on April 11, 2014 in USA. Steinfeld performed the role of Emily Junk in Pitch Perfect 2 (2015). She also starred in Barely Lethal (2015) with Jessica Alba. She filmed the movie, Ten Thousand Saints (2015), as the role of Eliza, again opposite Asa Butterfield.\n\nIn 2016, she starred in the teen dramedy The Edge of Seventeen (2016), for which she received a Golden Globe nomination for Best Actress in a Motion Picture - Comedy or Musical.\n\nShe has been home-schooled since 2008. Hailee says she is very interested to be on the other side of camera and would like to eventually produce and direct.'),
(3, 'Jake Johnson', '1978-05-28', '13', 'Jake Johnson (born Mark Jake Johnson Weinberger; May 28, 1978) is an American actor, comedian and director, most commonly known for playing Nick Miller in the Fox comedy series New Girl opposite Zooey Deschanel, for which he has received a Teen Choice Award nomination among others. Johnson also co-starred in the 2009 film Paper Heart and the 2012 film Safety Not Guaranteed, as well as appearing in Get Him to the Greek, 21 Jump Street. His first starring role in a feature film was Drinking Buddies, and he also starred in the 2014 comedy Let\'s Be Cops, alongside fellow New Girl star Damon Wayans, Jr. Appeared alongside Chris Pratt and Bryce Dallas Howard in Jurassic World (2015). Co-starred with Tom Cruise and Russell Crowe, in the Dark Universe thriller, The Mummy (2017). Starred as gambler Eddie Garrett in Netflix feature film Win It All (2017), alongside Keegan Michael Key and Joe Lo Truglio, directed by friend Joe Swanberg.'),
(4, 'Joaquim Dos Santos', '1977-06-22', '14', 'Joaquim Dos Santos was born on June 22, 1977 in Lisbon, Portugal. He is a producer, known for The Legend of Korra (2012), Spider-Man: Across the Spider-Verse (2023) and Avatar: The Last Airbender (2005).'),
(5, 'Phil Lord', '1975-07-12', '15', 'Philip A. Lord is an American filmmaker, producer and writer who collaborates with Christopher Miller. They both worked on Clone High, a cult classic animated sci-fi teen comedy show, The Lego Movie, 21 Jump Street, 22 Jump Street and Spider-Man: Into the Spider-Verse. Into the Spider-Verse is considered one of the best animated films of the 2010s and won Best Animated Feature.'),
(6, 'Kemp Powers', '1973-10-30', '16', 'Kemp Powers is known for One Night in Miami... (2020), Soul (2020) and Spider-Man: Across the Spider-Verse (2023).'),
(7, 'Christopher Miller', '1975-09-23', '17', 'Christopher Miller is an American filmmaker, producer and writer who collaborates with Philip A. Lord. They both worked on Clone High, a cult classic animated sci-fi teen comedy show, The Lego Movie, Cloudy with a Chance of Meatballs, 21 Jump Street, 22 Jump Street and Spider-Man: Into the Spider-Verse. Into the Spider-Verse is considered one of the best animated films of the 2010s and won Best Animated Feature.'),
(8, 'Justin K. Thompson\n', NULL, '18', 'Justin K. Thompson is known for Spider-Man: Across the Spider-Verse (2023), Spider-Man: Into the Spider-Verse (2018) and Cloudy with a Chance of Meatballs 2 (2013).'),
(9, 'Dave Callaham', '1977-10-24', '19', 'Dave Callaham was born in Fresno, California, USA. Dave is a writer and producer, known for Shang-Chi and the Legend of the Ten Rings (2021), Spider-Man: Across the Spider-Verse (2023) and Jean-Claude Van Johnson (2016). Dave has been married to Bree Tichy since May 9, 2009. They have one child.'),
(10, 'Margot Robbie', '1990-07-02', '20', 'Margot Elise Robbie was born on July 2, 1990 in Dalby, Queensland, Australia to Scottish parents. Her mother, Sarie Kessler, is a physiotherapist, and her father, is Doug Robbie. She comes from a family of four children, having two brothers and one sister. She graduated from Somerset College in Mudgeeraba, Queensland, Australia, a suburb in the Gold Coast hinterland of South East Queensland, where she and her siblings were raised by their mother and spent much of her time at the farm belonging to her grandparents. In her late teens, she moved to Melbourne, Victoria, Australia to pursue an acting career.\n\nFrom 2008-2010, Robbie played the character of Donna Freedman in the long-running Australian soap opera, Neighbours (1985), for which she was nominated for two Logie Awards. She set off to pursue Hollywood opportunities, quickly landing the role of Laura Cameron on the short-lived ABC series, Pan Am (2011). She made her big screen debut in the film, About Time (2013).\n\nRobbie rose to fame co-starring alongside Leonardo DiCaprio, portraying the role of Naomi Lapaglia in Martin Scorsese\'s Oscar nominated film, The Wolf of Wall Street (2013). She was nominated for a Breakthrough Performance MTV Movie Award, and numerous other awards.\n\nIn 2014, Robbie founded her own production company, LuckyChap Entertainment. She also appeared in the World War II romantic-drama film, Suite Française (2014). She starred in Focus (2015) and Z for Zachariah (2015), and made a cameo in The Big Short (2015).\n\nIn 2016, she married Tom Ackerley in Byron Bay, New South Wales, Australia.\n\nShe starred as Jane Porter in The Legend of Tarzan (2016), Tanya Vanderpoel in Whiskey Tango Foxtrot (2016) and as DC comics villain Harley Quinn in Suicide Squad (2016), for which she was nominated for a Teen Choice Award, and many other awards.\n\nShe portrayed figure skater Tonya Harding in the biographical film I, Tonya (2017), receiving critical acclaim and a Golden Globe Award nomination for Best Actress - Motion Picture Comedy or Musical.'),
(11, 'Ryan Gosling', '1980-11-12', '21', 'Born Ryan Thomas Gosling on November 12, 1980, in London, Ontario, Canada, he is the son of Donna (Wilson), a secretary, and Thomas Ray Gosling, a traveling salesman. Ryan was the second of their two children, with an older sister, Mandi. His ancestry is French-Canadian, as well as English, Scottish, and Irish. The Gosling family moved to Cornwall, Ontario, where Ryan grew up and was home-schooled by his mother. He also attended Gladstone Public School, Cornwall Collegiate, and Vocational High School in Cornwall, where he excelled in Drama and Fine Arts. The family then relocated to Burlington, Ontario, where Ryan attended Lester B. Pearson High School.\n\nRyan first performed as a singer at talent contests with Mandi. He attended an open audition in Montreal for the TV series \"The Mickey Mouse Club\" (The All New Mickey Mouse Club (1989)) in January 1993 and beat out 17,000 other aspiring actors for a a spot on the show. While appearing on \"MMC\" for two years, he lived with co-star Justin Timberlake\'s family.\n\nThough he received no formal acting training, after \"MMC,\" Gosling segued into an acting career, appearing on the TV series Young Hercules (1998) and Breaker High (1997), as well as the films The Slaughter Rule (2002), Murder by Numbers (2002), and Remember the Titans (2000). He first attracted serious critical attention with his performance as the Jewish neo-Nazi in the controversial film The Believer (2001), which won the Grand Jury Prize at the 2001 Sundance Film Festival. He was cast in the part by writer-director Henry Bean, who believed that Gosling\'s strict upbringing gave him the insight to understand the character Danny, whose obsessiveness with the Judaism he was born into turns to hatred. He was nominated for an Independent Spirit Award as Best Male Lead in 2002 for the role and won the Golden Aries award from the Russian Guild of Film Critics.\n\nAfter appearing in the sleeper The Notebook (2004) in 2004, Gosling won the dubious honor of being named one of the 50 Hottest Bachelors by People Magazine. More significantly, he was named the Male Star of Tomorrow at the 2004 Show West convention of movie exhibitors.\n\nGosling reached a summit of his profession with his performance in Half Nelson (2006), which garnered him an Academy Award nomination as Best Actor. In a short time, he has established himself as one of the finest actors of his generation. Throughout the subsequent decade, he has become all three of an internet fixation, a box office star, and a critical darling, having headlined Blue Valentine (2010), Crazy, Stupid, Love. (2011), Drive (2011), The Ides of March (2011), The Place Beyond the Pines (2012), The Nice Guys (2016), and La La Land (2016). In 2017, he starred in the long-awaited science fiction sequel Blade Runner 2049 (2017), with Harrison Ford.\n\nRyan has two children with his partner, actress Eva Mendes.'),
(12, 'Dua Lipa', '1995-08-22', '22', 'Dua Lipa is an English singer, songwriter, and model. Her musical career began at age 14, when she began covering songs by other artists on YouTube. In 2015, she was signed with Warner Music Group and released her first single soon after. In December 2016, a documentary about Lipa was commissioned by The Fader magazine, titled See in Blue. In January 2017, Lipa won the EBBA Public Choice Award. Her self-titled debut studio album was released on 2 June 2017. The album spawned seven singles, including two UK top-10 singles \"Be the One\" and \"Idgaf\" and the UK number-one single \"New Rules\", which also reached number six in the US. In 2018, Lipa won two Brit Awards for British Female Solo Artist and British Breakthrough Act.\n\nLipa was born in London, to Albanian parents from Kosovo who had left Pristina in the 1990s. She attended Sylvia Young Theatre School, part-time, before moving to Kosovo with her family in 2008. Lipa grew up listening to her father, singer Dukagjin Lipa. Her given name means \"love\" in Albanian; its atypical nature was cause for distaste in her youth, but she grew to \"enjoy\" it as it eliminated the need for a stage name. At the age of 14, she began posting covers of her favorite songs by artists such as P!nk and Nelly Furtado on YouTube. At the age of 15, she moved back to London with aspirations of becoming a singer. Shortly after, she began working as a model. In 2013, she starred in a television advertisement for The X Factor.\n\nIn 2015, Lipa began working on her debut album for Warner Music Group. In August 2015, she released her first single \"New Love\", produced by Emile Haynie and Andrew Wyatt. She released her second single \"Be the One\", in October 2015. \"Be the One\" achieved success across Europe, reaching number one in Belgium, Poland and Slovakia, as well as charting within the top 10 in over 11 European territories. In Australia and New Zealand, the song became an airplay success, reaching numbers 6 and 20 respectively. Lipa describes her musical style as \"dark pop\". On 30 November 2015, she was revealed as one of the acts on the BBC Sound of...2016 long list. Her first tour in the UK and Europe began in January 2016. In November 2016, Lipa concluded her tour through Europe.\n\nIn January 2018, Lipa received nominations in five categories at the 2018 Brit Awards, more nominations than any other artist that year. She was nominated for British Female Solo Artist, British Breakthrough Act, MasterCard British Album of the Year (Dua Lipa), British Single of The Year (\"New Rules\") and British Video of The Year (\"New Rules\"). This was the first time that a female artist had received five nominations.[36] She performed at the awards ceremony held on 21 February at the O2 Arena in London and collected the awards for British Female Solo Artist and British Breakthrough Act.\n\nLipa announced via social media that she had begun working on new material for her second album. She is working with MNEK, who previously co-wrote her single \"Idgaf\". The singer also collaborated with electronic music producer Whethan on a song called \"High\" for the Fifty Shades Freed soundtrack released in February 2018.'),
(13, 'Greta Gerwig', '1983-08-04', '23', 'Greta Gerwig is an American actress, playwright, screenwriter, and director. She has collaborated with Noah Baumbach on several films, including Greenberg (2010), Frances Ha (2012), for which she earned a Golden Globe nomination, and Mistress America (2015). Gerwig made her solo directorial debut with the critically acclaimed comedy-drama film Lady Bird (2017), which she also wrote, and has also had starring roles in the films Damsels in Distress (2011), Jackie (2016), and 20th Century Women (2016).\n\nGreta Celeste Gerwig was born in Sacramento, California, to Christine Gerwig (née Sauer), a nurse, and Gordon Gerwig, a financial consultant and computer programmer. She has German, Irish, and English ancestry. Gerwig was raised as a Unitarian Universalist, but also attended an all-girls Catholic school. She has described herself as \"an intense child\". With an early interest in dance, she intended to get a degree in musical theatre in New York. She graduated from Barnard College in NY, where she studied English and philosophy, instead. Originally intending to become a playwright, after meeting young film director Joe Swanberg, she became the star of a series of intellectual low budget movies made by first-time filmmakers, a trend dubbed \"mumblecore\".\n\nGerwig was cast in a minor role in Swanberg\'s LOL (2006) in 2006, while still studying at Barnard. She then appeared in many of Swanberg\'s films, and personally co-directed, co-wrote and co-produced one entitled Nights and Weekends (2008). She has worked with good quality directors such as Ti West (The House of the Devil (2009)), Whit Stillman (Damsels in Distress (2011)), or Woody Allen (To Rome with Love (2012)) but success and (international) recognition did not come until Frances Ha (2012), directed by Noah Baumbach, a film she also co-wrote. Both tall and immature, awkward and graceful, blundering and candid, annoying and engaging, Greta has won all hearts in the title role of Frances Ha(liday).\n\nIn 2017, she wrote and directed the highly acclaimed, semi-autobiographical teen movie Lady Bird (2017), set in 2002-2003, and starring Saoirse Ronan, Laurie Metcalf, and Timothée Chalamet.\n\nIn 2011, Gerwig received an award for Acting from the Athena Film Festival for her artistry as one of Hollywood\'s definitive screen actresses of her generation.'),
(14, 'Noah Baumbach', '1969-09-03', '24', 'Born in Brooklyn in 1969 Noah Baumbach is the son of two film critics, Georgia Brown and Jonathan Baumbach (also a writer). His studies at Vassar College were the subject of his first film (made as he was 26 years old), Kicking and Screaming (1995). His second major picture, made ten years later, The Squid and the Whale (2005) was no less autobiographical but went back further in his personal history, back to the time when his parents separated. Recounting this past trauma and its aftermath earned Noah a selection at the Sundance Film Festival, three Golden Globe nominations and a best screenplay Oscar nomination. From then on his career was launched and his output became more regular with Margot at the Wedding (2007) starring Nicole Kidman and his wife Jennifer Jason Leigh, Greenberg (2010), filmed in Los Angeles, with Ben Stiller and Greta Gerwig. Back in New york, where he lives, he was the director (and co-author with his main actress, Greta Gerwig) of the bittersweet art house success Frances Ha (2012). Besides directing films, he also co-writes some with Wes Anderson, a good friend of his, and is the author of humor columns in the New Yorker.'),
(15, 'Michelle Yeoh', '1962-08-06', '25', 'Michelle Yeoh was born in Ipoh, Malaysia. She\'s the daughter of Janet Yeoh & Kian Teik Yeoh. She\'s of Hokkien descent, speaking English and Malay before Chinese. A ballet dancer since 4, she moved to London to study at the Royal Academy as a teen. After a brief dance career, she won the Miss Malaysia beauty pageant title in and the Miss Moomba beauty pageant title in Melbourne, Australia in the early 1980s. Her first on camera work was a 1984 commercial with martial arts star Jackie Chan. In 1985, she began making action movies with D&B Films of Hong Kong. She was first billed as Michelle Khan, then Michelle Yeoh. Never a trained martial artist, she relied on her dance discipline and on-set trainers to prepare for martial arts action scenes.\n\nShe uses many dance moves in her films and does most of her own stunts. In 1988, she married wealthy D&B Films executive Dickson Poon & retired from acting. Even though they divorced in 1992, she\'s close to Poon\'s second wife and a godmother to his daughter. When she returned to acting, she became very popular w/ Chinese audiences. She later became known to Western audiences through role in the James Bond film Tomorrow Never Dies (1997) and in the phenomenally successful Crouching Tiger, Hidden Dragon (2000). She turned down a role in a sequel to The Matrix (1999).\n\nShe has her own production company, Mythical Films. She trained with the Shen Yang Acrobatic team for her role in The Touch (2002), an English-language film she both starred in and produced. She hopes to use her company to discover and nurture new film-making talent. She also aspires to act in roles that combine both action and deeper spiritual themes.'),
(16, 'Stephanie Hsu', '1990-11-25', '26', 'Actress Stephanie Hsu (pronounced \"Shoe\") was born on November 25 in Los Angeles, California. She\'s known for her breakout performance as Joy/Jobu Tupaki in A24 & Daniels\' \"Everything Everywhere All at Once,\" as well as her work as Mei on Season 3 and 4 of \"The Marvelous Mrs. Maisel,\" Joy on Hulu\'s cult drama \"The Path\", and MTV\'s \"Girl Code.\" She made her start in experimental, downtown theater in New York, which eventually led her to Broadway as Karen the Computer in \"SpongeBob The Musical,\" and as Christine Canigula in the viral sensation \"Be More Chill.\" She is a graduate of NYU Tisch School of the Arts, where she studied at the Atlantic Theater Company and the Experimental Theater Wing.'),
(17, 'Jamie Lee Curtis', '1958-11-22', '27', 'Jamie Lee Curtis was born on November 22, 1958 in Los Angeles, California, the daughter of legendary actors Janet Leigh and Tony Curtis. She got her big break at acting in 1978 when she won the role of Laurie Strode in Halloween (1978). After that, she became famous for roles in movies like Trading Places (1983), Perfect (1985) and A Fish Called Wanda (1988). She starred in one of the biggest action films ever, True Lies (1994), for which she won a Golden Globe Award for her performance. Curtis also appeared on Buck Rogers in the 25th Century (1979), and starred in Death of a Centerfold: The Dorothy Stratten Story (1981) as the title role. Her first starring role was opposite Richard Lewis on the ABC situation comedy Anything But Love (1989). In 1998, she starred in Halloween H20: 20 Years Later (1998) in which she reprised her role that made her famous back in 1978.\n\nJamie Lee served as an honorary chairperson for the Building Resilience for Young Children Dealing with Trauma program held at the Shakespeare Theatre - Harman Center for the Arts in Washington, D.C. She was an inspiration for the youth that were celebrated. Curtis was also given an award from US Department of Health and Human Services Kathleen Sebelius and National Endowment for the Arts Chairman Rocco Landesman for her work on behalf of children through her charities and children\'s books.'),
(18, 'Daniel Kwan', '1988-02-10', '28', 'Daniel Kwan with Daniel Scheinert, collectively known as Daniels, are a duo of film directors and writers. They began their career as directors of music videos, including the popular DJ Snake promotional for the single \"Turn Down for What\" (2013). They have since ventured into film, having written and directed the surreal comedy-drama Swiss Army Man (2016) and the science-fiction action comedy Everything Everywhere All at Once (2022), the latter became A24\'s highest-grossing film of all time.'),
(19, 'Daniel Scheinert', '1987-06-07', '29', 'Daniel Scheinert was born on June 7, 1987 in Birmingham, Alabama, USA. He is a director and actor, known for Everything Everywhere All at Once (2022), Swiss Army Man (2016) and Foster the People: Houdini (2012).'),
(20, 'Rosie Perez', '1964-09-06', '30', 'Rosie Perez was born in Bushwick, Brooklyn, New York City, to Lydia Perez and Ismael Serrano, a merchant marine. She is of Puerto Rican descent. Rosie attended Grover Cleveland High School in Ridgewood, Queens, New York, and later enrolled at Los Angeles City College in Los Angeles, California. Rosie Perez was in her second year of college, and just about to move back to New York from Los Angeles. Her friends had given her a going-away party. When Spike Lee proposed that she work in his film Do the Right Thing (1989), she accepted. It would be her first major acting role. She went on play the supporting role of Carla Rodrigo in Peter Weir\'s Fearless (1993), for which she was nominated for an Academy Award for Best Supporting Actress. (She lost to Anna Paquin for The Piano (1993).)'),
(21, 'Mary Elizabeth Winstead', '1984-11-28', '31', 'Mary Elizabeth Winstead is an actress known for her versatile work in a variety of film and television projects. Possibly most known for her role as Ramona Flowers in Scott Pilgrim vs. the World (2010), she has also starred in critically acclaimed independent films such as Smashed (2012), for which she received an Independent Spirit Award nomination, as well as genre fare like Final Destination 3 (2006) and Quentin Tarantino\'s Death Proof (2007).\n\nWinstead was born in Rocky Mount, North Carolina but largely raised in Sandy, Utah, which is where she discovered a love for the performing arts. She grew up training to be a ballerina and attended the Joffrey Ballet School training program at the age of 12. It was also around this time that she began to pursue a career in acting and soon started working steadily in television and film.\n\nWinstead is also a recordin'),
(22, 'Cathy Yan', NULL, '32', 'Cathy Yan is known for Birds of Prey (2020), Dead Pigs (2018) and According to My Mother (2016).'),
(23, 'Christina Hodson', NULL, '33', 'Christina Hodson is a Taiwanese-British film screenwriter from London, England who is known for writing the films Birds of Prey (and the Fantabulous Emancipation of One Harley Quinn) and Bumblebee. She also wrote the scrapped DC film Batgirl, the upcoming DC film The Flash, the psychological thriller Shut In and the drama thriller film Unforgettable.'),
(24, 'Paul Dini', '1957-08-07', '34', 'Paul Dini is an American animator and writer known for his contributions to DC Comics, including Batman: The Animated Series, Gotham Girls and fan favorite character Harley Quinn. He also worked on Batman: Arkham Asylum and it\'s sequel Batman: Arkham City as well as a 2003 animated pilot based on Zatanna starring Tara Strong. He is seen as the curator of the DC Animated Universe alongside Bruce Timm.'),
(25, 'Bruce Timm', '1961-02-05', '35', 'Bruce Timm is an American animator, writer, voice actor and director. He is known for creating Batman: The Animated Series, Superman: The Animated Series, Justice League and various installments of the DC Animated Universe. He co-created several DC characters including Harley Quinn and Livewire. He also worked on various DC animated films including Batman and Harley Quinn and Batman: Gotham by Gaslight.'),
(26, 'Rosemarie DeWitt', '1971-08-26', '36', 'Rosemarie Braddock DeWitt, who is also known as Rosemarie DeWitt, is one of the most popular American actresses. She was born on October 26, 1971 in Flushing, Queens that lies in New York, USA. Her parents are Rosemarie Baddock and Kenny DeWitt. She has been featured in various roles in a number of movies and TV shows. She was raised in Hanover Township, New Jersey and she graduated from Whippany Park High School. She also used to perform in many high school productions. She is a granddaughter of former World Heavyweight Champion Jimmy Braddock, and played the role of neighbor Sara Wilson in the movie Cinderella Man (2005), which depicted Jimmy Braddock\'s life. DeWitt performed in numerous off Broadway plays. Most notably, she starred in John Patrick Shanley\'s Danny and the Deep Blue Sea at the Second Stage Theatre; George S. Kaufman\'s The Butter and Egg Man at the Atlantic Theater Company; and Craig Lucas\' Small Tragedy, for which the entire cast won an Obie Award. From May 4-23, 2010, DeWitt appeared in MCC Theater\'s Off Broadway play Family Week, written by Beth Henley and directed by Jonathan Demme. In its review of the play, the New York Times stated that DeWitt\'s lead performance has many affecting moments as the beleaguered Claire. DeWitt appeared in Showtime\'s series United States of Tara (2009) as Tara\'s sister, Charmaine. She appeared in Season 1 of the AMC series Mad Men (2007) as Midge Daniels, lead character Don Draper\'s bohemian mistress, and returned for one episode in Season 4. She co-starred with Ron Livingston in the 2006-2007 Fox series Standoff (2006). She played FBI hostage negotiator Emily Lehman. DeWitt has also appeared on television in Law & Order: Special Victims Unit (1999), Sex and the City (1998), Rescue Me (2004), and Love Monkey (2006). DeWitt is featured in the film Margaret (2011), opposite Anna Paquin and Mark Ruffalo. Additional film credits include Purple Violets (2007), Off the Black (2006), The Wedding Weekend (2006), The Great New Wonderful (2005), The Commuters (2005) and How I Got Lost (2009). She plays the role of Rachel in the Jonathan Demme-directed movie Rachel Getting Married (2008) alongside Anne Hathaway, for which she won several critics\' awards and a Satellite Award for Best Supporting Actress. DeWitt played Ben Affleck\'s character\'s wife in the corporate drama The Company Men (2010). In 2011 she played Hannah, one of the three lead characters in the critically acclaimed Your Sister\'s Sister (2011), opposite Emily Blunt and Mark Duplass. In 2011, she played Renee Blair in the film A Little Bit of Heaven (2011) starring Kate Hudson. In 2012, she played Alice in Gus Van Sant\'s film Promised Land (2012), released on December 28, 2012. In 2016 she appeared in the multi-award-winning La La Land (2016) as Laura, the sister of Ryan Gosling\'s character Sebastian.'),
(27, 'Emma Stone', '1988-11-06', '37', 'Emily Jean \"Emma\" Stone was born on November 6, 1988 in Scottsdale, Arizona to Krista Jean Stone (née Yeager), a homemaker & Jeffrey Charles \"Jeff\" Stone, a contracting company founder and CEO. She is of Swedish, German & British Isles descent. Stone began acting as a child as a member of the Valley Youth Theatre in Phoenix, Arizona, where she made her stage debut in a production of Kenneth Grahame\'s \"The Wind in the Willows\". She appeared in many more productions through her early teens until, at the age of fifteen, she decided that she wanted to make acting her career.\n\nThe official story is that she made a PowerPoint presentation, backed by Madonna\'s \"Hollywood\" and itself entitled \"Project Hollywood\", in an attempt to persuade her parents to allow her to drop out of school and move to Los Angeles. The pitch was successful and she and her mother moved to LA with her schooling completed at home while she spent her days auditioning.\n\nShe had her TV breakthrough when she won the part of Laurie Partridge in the VH1 talent/reality show In Search of the Partridge Family (2004) which led to a number of small TV roles in the following years. Her movie debut was as Jules in Superbad (2007) and, after a string of successful performances, her leading role as Olive in Easy A (2010) established her as a star.'),
(28, 'Damien Chazelle', '1985-01-19', '38', 'Damien Chazelle is an American director and screenwriter. His directorial debut was the musical Guy and Madeline on a Park Bench (2009), his breakthrough came when he wrote and directed his second feature film, Whiplash (2014), which was based on his award-winning 2013 short film of the same name. The film received five Academy Award nominations, including Best Picture and Best Adapted Screenplay for Chazelle.\n\nIn 2016 his film La La Land received critical and commercial acclaim, winning all 7 of its Golden Globe nominations, including Best Director, and Best Original Screenplay. It also received a record-tying 14 Academy Award nominations, winning six including Best Director for Chazelle who became the youngest person in history to win a Oscar for Best Director at the age of 32.\n\nChazelle also co-wrote 10 Cloverfield Lane (2016).');

-- --------------------------------------------------------

--
-- Estrutura para tabela `credit`
--

CREATE TABLE `credit` (
  `id` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `artistId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `credit`
--

INSERT INTO `credit` (`id`, `movieId`, `artistId`, `roleId`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 3),
(5, 1, 5, 2),
(6, 1, 6, 3),
(7, 1, 7, 2),
(8, 1, 8, 3),
(9, 1, 9, 2),
(10, 2, 10, 1),
(11, 2, 11, 1),
(12, 2, 12, 1),
(13, 2, 13, 2),
(14, 2, 14, 2),
(15, 2, 13, 3),
(16, 3, 15, 1),
(17, 3, 16, 1),
(18, 3, 17, 1),
(19, 3, 18, 2),
(20, 3, 19, 2),
(21, 3, 18, 3),
(22, 3, 19, 3),
(23, 4, 10, 1),
(24, 4, 20, 1),
(25, 4, 21, 1),
(26, 4, 23, 2),
(27, 4, 24, 2),
(28, 4, 25, 2),
(29, 4, 22, 3),
(30, 5, 11, 1),
(31, 5, 26, 1),
(32, 5, 27, 1),
(33, 5, 28, 2),
(34, 5, 28, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `genre`
--

INSERT INTO `genre` (`id`, `title`) VALUES
(1, 'Sci Fi'),
(2, 'Action'),
(3, 'Comedy'),
(4, 'Romance');

-- --------------------------------------------------------

--
-- Estrutura para tabela `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `genreId` int(11) NOT NULL,
  `title` text NOT NULL,
  `synopsis` text DEFAULT NULL,
  `durationMinutes` int(11) DEFAULT NULL,
  `releaseDate` char(10) DEFAULT NULL,
  `posterUrl` text DEFAULT NULL,
  `trailerUrl` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `movie`
--

INSERT INTO `movie` (`id`, `genreId`, `title`, `synopsis`, `durationMinutes`, `releaseDate`, `posterUrl`, `trailerUrl`) VALUES
(1, 2, 'Spider-Man: Across the Spider-Verse', 'Miles Morales catapults across the Multiverse, where he encounters a team of Spider-People charged with protecting its very existence. When the heroes clash on how to handle a new threat, Miles must redefine what it means to be a hero.', 140, '2023-06-01', '1', '2'),
(2, 3, 'Barbie', 'To live in Barbie Land is to be a perfect being in a perfect place. Unless you have a full-on existential crisis. Or you\'re a Ken.', 114, '2023-07-20', '3', '4'),
(3, 1, 'Everything Everywhere All at Once', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.', 139, '2022-06-23', '5', '6'),
(4, 2, 'Birds of Prey', 'After splitting with the Joker, Harley Quinn joins superheroines Black Canary, Huntress, and Renee Montoya to save a young girl from an evil crime lord.', 109, '2020-02-06', '7', '8'),
(5, 4, 'La La Land', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 128, '2017-01-19', '9', '10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `movieId` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `stars` int(11) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `review`
--

INSERT INTO `review` (`id`, `userId`, `movieId`, `content`, `stars`, `createdAt`) VALUES
(1, 1, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam faucibus dapibus tellus, in interdum neque laoreet hendrerit. Ut eget venenatis odio. Praesent tincidunt fermentum dui, nec sollicitudin nisi rhoncus tristique. Nam condimentum ipsum eu semper feugiat. Aenean semper fringilla velit, ut tincidunt quam euismod eu. Morbi gravida tortor sed nulla placerat facilisis id vel massa. Donec vitae luctus lacus. Maecenas accumsan, nisi sed convallis euismod, nulla quam condimentum orci, et tristique erat dolor eget justo. Nulla sit amet nisl nibh.', 10, '2023-06-21 20:44:15'),
(2, 2, 1, 'Sed at justo cursus erat consectetur dapibus. Praesent commodo venenatis justo sit amet convallis. Nunc porttitor eros id arcu consectetur imperdiet. Maecenas ac tempor ante, ac accumsan purus. Fusce ullamcorper, quam a suscipit euismod, massa ipsum ullamcorper tortor, eu sodales velit lorem quis leo. Praesent ac mauris ac arcu tempus rutrum et et turpis. Integer eu libero vel quam placerat posuere. Vivamus non ante magna.', 10, '2023-06-21 21:55:15'),
(3, 3, 1, 'Mauris tincidunt id tellus sed varius. Aliquam tristique massa dolor, vel condimentum tellus finibus sit amet. Maecenas ac lacus eget orci commodo accumsan eu id odio. Vestibulum venenatis interdum enim, sed semper leo varius et. Donec neque metus, ultricies sed ultrices sed, pulvinar nec lectus. Proin fermentum dolor ex, non pharetra justo efficitur sed. Donec id posuere velit, at viverra urna. Cras a justo rutrum, scelerisque orci at, fermentum nisl.', 10, '2023-06-21 21:45:15'),
(4, 4, 1, 'Pellentesque ornare eget enim nec efficitur. Vestibulum lacinia nisi vestibulum quam condimentum, eget molestie sapien sollicitudin. Interdum et malesuada fames ac ante ipsum primis in faucibus. Integer sit amet arcu hendrerit, maximus turpis sed, pulvinar neque. Donec malesuada laoreet lectus, et cursus augue semper vitae. Duis vulputate, sapien nec pulvinar vulputate, est turpis dapibus nibh, eget suscipit eros ligula eu velit. Nam bibendum convallis nibh, finibus fringilla ligula tristique a. Praesent convallis, magna eu varius semper, dolor libero malesuada leo, nec aliquet diam nunc at turpis. Nullam venenatis, purus a tincidunt convallis, mi leo accumsan ligula, at suscipit dui nisl nec odio. Aenean libero metus, dignissim condimentum consequat non, posuere sit amet velit. Quisque convallis nisi neque, a suscipit mi blandit vitae. Praesent in dolor ut orci lobortis vulputate sed quis eros. Sed convallis ac libero ut malesuada. Suspendisse ut leo sit amet ipsum semper fringilla ut vitae felis.\n\n', 10, '2023-06-21 21:50:15'),
(5, 1, 2, 'Donec sed tincidunt tellus, eget egestas ante. Proin nec tincidunt felis. Vivamus aliquam eros lacus, sit amet fermentum metus luctus nec. Curabitur vitae erat felis. Aenean commodo vitae felis at scelerisque. Vivamus dignissim ex urna, commodo ultrices turpis posuere quis. Curabitur ac commodo neque. Nunc accumsan nunc metus. Curabitur non leo nec ligula euismod rhoncus ut et tortor. Phasellus et odio in nulla pretium accumsan et ac urna. Ut tempus ullamcorper ante, vel mattis enim pulvinar ut. Donec nec purus nec odio pretium consequat ac volutpat ipsum. Etiam eget euismod lacus, eget consequat neque. Phasellus congue volutpat tortor, accumsan iaculis metus posuere nec. Donec ac arcu vel dui varius sollicitudin sed at leo. Vestibulum pulvinar at erat a laoreet.\n\n', 6, '2023-06-21 21:55:15'),
(6, 2, 2, 'Pellentesque id blandit metus. Cras et ornare metus. Praesent nibh felis, lobortis in turpis non, egestas mollis felis. In libero justo, imperdiet ac posuere in, interdum tincidunt magna. Ut facilisis porta est a varius. Nunc semper commodo libero, at consectetur magna egestas vitae. Cras ac felis malesuada, tempor lacus ut, sollicitudin felis. Nulla euismod turpis non dolor imperdiet dictum. Maecenas ullamcorper erat tellus, sed ultrices urna commodo ut. Cras id consequat velit, quis placerat nisi. Quisque vulputate risus vitae tempus egestas. Etiam lectus ligula, feugiat sit amet diam a, egestas hendrerit lorem.\n\n', 4, '2023-06-21 22:44:15'),
(7, 3, 2, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed eu tortor porttitor, posuere tellus ut, bibendum risus. Duis mattis quis nisl vel consequat. Suspendisse potenti. Integer non pharetra tortor. Sed at arcu ut quam vehicula luctus quis sit amet justo. Mauris vel elementum elit, nec posuere dolor. Duis elit ante, euismod id fermentum sit amet, facilisis vitae lorem. Etiam lobortis purus nec dignissim ultricies. Donec lobortis libero tortor, ac blandit ex venenatis sed. Phasellus at suscipit arcu, ac tempus lorem. Nam posuere interdum magna sed interdum. Aliquam nec dui justo. Integer finibus ipsum sapien, eu dapibus ipsum sagittis in. Duis in urna quam. Morbi rutrum, dui ac maximus maximus, mauris nibh eleifend dui, vel tincidunt purus dui pharetra leo.\n\n', 7, '2023-06-21 22:49:15'),
(8, 4, 2, 'Sed ac blandit augue. Sed tincidunt sem id eleifend lobortis. Donec a tellus pulvinar, facilisis nulla nec, mattis elit. Vestibulum ac accumsan dui. Phasellus sodales orci sit amet nibh lobortis mollis. Aliquam auctor, orci a lobortis fermentum, erat enim laoreet tortor, vel posuere felis lectus in risus. Ut sagittis sem a neque sagittis ultrices. Suspendisse quis purus semper, tincidunt sem a, fermentum nisl. Vivamus eget auctor est. Aliquam ac risus vel leo maximus feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus ullamcorper felis risus, dictum luctus lacus vehicula rutrum. Fusce tincidunt consequat diam. Etiam at tellus erat. Morbi volutpat, est tempus pretium pharetra, eros dolor lobortis enim, non condimentum libero erat a risus.\n\n', 3, '2023-06-21 22:55:15'),
(9, 1, 3, 'Duis quis odio quis tellus ullamcorper accumsan. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus dictum pharetra neque. Fusce facilisis dui neque, a mattis mi venenatis ut. Proin molestie tincidunt accumsan. Donec condimentum eu erat non ornare. Fusce feugiat, metus id consectetur fermentum, nunc turpis maximus odio, vel gravida nunc nisl sed nulla. In turpis libero, ultrices eu sapien eu, imperdiet mollis elit. Aenean facilisis dapibus aliquam. Maecenas tristique lorem sit amet auctor aliquet. Duis vitae urna erat. Nam euismod sapien nec eros tincidunt, non tempus ante auctor. Cras et erat et ligula fermentum dignissim a sit amet lorem. Duis vel orci placerat felis lobortis lobortis.\n\n', 5, '2023-06-21 23:49:15'),
(10, 2, 3, 'Curabitur mattis semper nisl ac luctus. Etiam auctor, felis eget faucibus lobortis, libero nisl iaculis tortor, et dictum metus dolor sit amet est. Praesent ultricies in libero vel hendrerit. Donec sit amet mauris sapien. Vivamus luctus felis a maximus gravida. Nullam congue tempus imperdiet. Sed iaculis tortor ut urna ultrices mattis. Vivamus aliquam, arcu eget sodales bibendum, odio ipsum aliquam sem, ac pretium nisl diam ut ipsum.\n\n', 9, '2023-06-21 23:55:15'),
(11, 3, 3, 'Ut mollis, lacus dapibus tempus consectetur, mauris libero pretium nibh, at rutrum neque mauris at risus. Sed porta massa id neque porttitor, sit amet pharetra massa molestie. Vestibulum fringilla egestas felis, non iaculis lacus tristique quis. Proin consectetur lacus vel est tincidunt, a pharetra velit iaculis. Donec quis tristique orci. Suspendisse tincidunt elit a consectetur tempus. Sed luctus posuere dolor ac sodales. In pellentesque ultricies sapien, vitae imperdiet orci. Nullam mattis semper fringilla. Suspendisse potenti. Nunc porta, felis non viverra bibendum, dui orci efficitur magna, non lacinia magna eros vel augue. Nullam luctus nunc neque, vel mattis sem vestibulum id. Aenean accumsan justo et urna porta, eget volutpat velit vestibulum. Suspendisse auctor, leo vel placerat sagittis, eros ante mattis orci, sed aliquam nisl libero quis enim. Donec lacinia magna eu ipsum viverra blandit.\n\n', 8, '2023-06-22 00:49:15'),
(12, 4, 3, 'Sed congue pulvinar ex, et iaculis dui. Vivamus blandit nunc ac lectus consequat luctus. Phasellus non enim sit amet eros placerat facilisis. Mauris blandit purus at libero convallis, ut accumsan quam commodo. Proin faucibus sapien neque, et iaculis nibh semper vel. Nullam egestas sapien in purus gravida, a fermentum justo hendrerit. Quisque nec libero ut lacus ultrices gravida.\n\n', 10, '2023-06-22 00:55:15'),
(13, 1, 4, 'Suspendisse a nibh ac arcu elementum pharetra non sit amet est. Ut sed commodo lacus. Nunc fringilla felis volutpat felis gravida feugiat. Curabitur viverra mi fermentum nisi malesuada consequat. Aenean ornare orci egestas, lobortis neque ac, posuere diam. Sed quis neque varius, posuere sapien non, accumsan dolor. Pellentesque a bibendum magna. Ut non felis nec magna gravida scelerisque. Aenean viverra sem eget est placerat iaculis et sit amet leo. Maecenas sit amet enim eros. Aliquam tincidunt fermentum eros, scelerisque bibendum est imperdiet at.\n\n', 1, '2023-06-22 01:49:15'),
(14, 2, 4, 'Nam ut turpis ullamcorper, rutrum nulla condimentum, rutrum metus. Praesent fermentum, justo at scelerisque pellentesque, diam enim pretium leo, scelerisque varius libero libero non turpis. Cras elementum, elit vitae accumsan blandit, ante quam faucibus nibh, id tempus tellus urna ut eros. Vestibulum sodales mi quis leo ultricies, vitae mollis felis volutpat. Fusce gravida, nisi vel egestas tincidunt, mi purus tempor eros, quis eleifend erat eros sed turpis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla eget pulvinar diam, id facilisis nisl. Aliquam erat volutpat. Nulla rutrum convallis pulvinar. Nulla porttitor diam sit amet gravida varius.\n\n', 2, '2023-06-22 01:54:15'),
(15, 3, 4, 'Proin ac ornare odio. Morbi auctor eu arcu mollis hendrerit. Praesent aliquam finibus turpis, quis placerat nunc posuere vel. Nunc turpis massa, cursus a imperdiet at, tincidunt vitae tortor. Duis ut urna sem. Quisque turpis metus, semper in lectus blandit, sagittis dignissim est. Praesent quis dui dolor. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.\n\n', 6, '2023-06-22 02:49:15'),
(16, 4, 4, 'Fusce laoreet orci ac lectus congue, et sollicitudin est feugiat. Aliquam mattis nisl venenatis velit fermentum placerat. Pellentesque a nunc urna. Sed urna sem, dictum rhoncus euismod eu, ultricies vel leo. Donec viverra, ligula commodo luctus aliquet, justo sem tempus orci, non vehicula turpis quam vitae nisl. Praesent non nulla diam. Duis erat tellus, cursus et lobortis id, aliquam nec ipsum. Pellentesque ultrices laoreet risus sed luctus. Aenean fermentum urna quam, eget scelerisque tortor sagittis vitae. Etiam cursus condimentum gravida. Aliquam bibendum dolor sed purus efficitur egestas. In viverra urna nisi, vel sollicitudin ligula suscipit eu. Maecenas at euismod nisi.\n\n', 8, '2023-06-22 02:54:15'),
(17, 1, 5, 'Aenean sit amet libero convallis, eleifend risus vel, bibendum nisi. Nam auctor, nunc at iaculis tristique, leo nulla efficitur lorem, eget consectetur neque dolor imperdiet nibh. Morbi vel urna sed quam faucibus commodo. Sed interdum, arcu sit amet ultricies finibus, orci eros posuere lectus, sed mattis sem sapien quis quam. Sed fringilla pretium nunc, sit amet malesuada nulla laoreet a. Sed sit amet accumsan arcu, vitae posuere quam. Vivamus eleifend arcu leo, quis pellentesque diam porta nec. Quisque tempus arcu id ex accumsan molestie. Morbi rutrum, quam eget condimentum lacinia, massa lacus interdum leo, at condimentum nisl nisl eget justo. Sed in velit justo.\n\n', 3, '2023-06-22 03:44:15'),
(18, 2, 5, 'Pellentesque dictum tempor diam vel pulvinar. Duis tempor, ipsum ut interdum ultricies, lorem leo elementum nibh, quis tempor velit nisl sed ante. Ut faucibus enim nec sapien laoreet, vel fermentum libero aliquet. Pellentesque pellentesque elit vitae erat porttitor, in euismod tortor auctor. Vestibulum a fermentum nulla, at scelerisque turpis. Vivamus lacinia magna sit amet euismod euismod. Nunc quis fringilla urna. Phasellus molestie facilisis mauris, nec eleifend metus tempus et. Praesent consequat consectetur risus, a hendrerit tellus lacinia quis.\n\n', 10, '2023-06-22 03:50:15'),
(19, 3, 5, 'Vivamus dignissim, enim eu suscipit faucibus, nunc leo rhoncus leo, et tincidunt nulla dui quis felis. Fusce scelerisque vulputate est, at pharetra tortor malesuada et. Donec porttitor lobortis mattis. Proin non ornare orci, id aliquet tortor. Morbi varius congue eleifend. Nullam pulvinar massa vel semper aliquet. Integer porttitor fermentum massa vel dignissim. Nulla commodo sem vitae ante posuere, facilisis consectetur sem consequat. Sed eu sollicitudin sem. Nam laoreet a arcu sed auctor. Suspendisse sed vulputate risus. Integer eget vulputate felis. Aliquam eros odio, finibus at enim vel, venenatis placerat magna. Morbi porttitor, turpis eget imperdiet lobortis, diam est luctus purus, sit amet vehicula nisl diam in sapien.\n\n', 1, '2023-06-22 03:56:15'),
(20, 4, 5, 'Sed lacinia vitae nisl quis commodo. Aenean arcu turpis, congue ut libero id, pulvinar mattis lacus. Sed lacus enim, faucibus sit amet blandit id, rhoncus sed purus. Maecenas viverra egestas dignissim. Ut dapibus magna a tortor bibendum, et tempor justo maximus. Phasellus ac dignissim mauris. Integer nisi dui, laoreet vitae malesuada eget, vestibulum at tortor. Cras aliquet, risus id lobortis posuere, elit augue tristique velit, nec euismod sapien orci ut magna. Donec quis mauris sed tortor pretium interdum quis facilisis ipsum. Morbi eget feugiat dolor, at scelerisque justo. Duis tincidunt ipsum pellentesque porttitor bibendum.\n\n', 7, '2023-06-22 04:44:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reviewevaluation`
--

CREATE TABLE `reviewevaluation` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `reviewId` int(11) NOT NULL,
  `positive` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `reviewevaluation`
--

INSERT INTO `reviewevaluation` (`id`, `userId`, `reviewId`, `positive`) VALUES
(1, 2, 1, b'0'),
(2, 3, 1, b'1'),
(3, 4, 1, b'1'),
(4, 1, 2, b'0'),
(5, 3, 2, b'1'),
(6, 4, 2, b'1'),
(7, 1, 3, b'1'),
(8, 2, 3, b'0'),
(9, 4, 3, b'0'),
(10, 1, 4, b'0'),
(11, 2, 4, b'0'),
(12, 3, 4, b'0'),
(13, 2, 5, b'0'),
(14, 3, 5, b'0'),
(15, 4, 5, b'1'),
(16, 1, 6, b'0'),
(17, 3, 6, b'0'),
(18, 4, 6, b'0'),
(19, 1, 7, b'0'),
(20, 2, 7, b'0'),
(21, 4, 7, b'0'),
(22, 1, 8, b'0'),
(23, 2, 8, b'0'),
(24, 3, 8, b'1'),
(25, 2, 9, b'1'),
(26, 3, 9, b'1'),
(27, 4, 9, b'0'),
(28, 1, 10, b'1'),
(29, 3, 10, b'1'),
(30, 4, 10, b'0'),
(31, 1, 11, b'0'),
(32, 2, 11, b'1'),
(33, 4, 11, b'1'),
(34, 1, 12, b'0'),
(35, 2, 12, b'1'),
(36, 3, 12, b'1'),
(37, 2, 13, b'1'),
(38, 3, 13, b'0'),
(39, 4, 13, b'1'),
(40, 1, 14, b'0'),
(41, 3, 14, b'0'),
(42, 4, 14, b'0'),
(43, 1, 15, b'1'),
(44, 2, 15, b'0'),
(45, 4, 15, b'0'),
(46, 1, 16, b'0'),
(47, 2, 16, b'1'),
(48, 3, 16, b'0'),
(49, 2, 17, b'1'),
(50, 3, 17, b'0'),
(51, 4, 17, b'1'),
(52, 1, 18, b'0'),
(53, 3, 18, b'1'),
(54, 4, 18, b'1'),
(55, 1, 19, b'1'),
(56, 2, 19, b'0'),
(57, 4, 19, b'0'),
(58, 1, 20, b'0'),
(59, 2, 20, b'0'),
(60, 3, 20, b'1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `role`
--

INSERT INTO `role` (`id`, `title`) VALUES
(1, 'Actor/Actress'),
(2, 'Writer'),
(3, 'Director');

-- --------------------------------------------------------

--
-- Estrutura para tabela `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'User 1', 'user1@email.com', 'uz3r_1', '$2y$13$1e580QnCRitnJ3cwA8TgbO4KJKGRlBZWjABshlqoV0Ax6D/l1/PcO'),
(2, 'User 2', 'user2@email.com', 'uz3r_2', 'upass2'),
(3, 'User 3', 'user3@email.com', 'uz3r_3', 'upass3'),
(4, 'User 4', 'user4@email.com', 'uz3r_4', 'upass4');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accessToken_user_id_fk` (`userId`);

--
-- Índices de tabela `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `credit`
--
ALTER TABLE `credit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Credit_artist_id_fk` (`artistId`),
  ADD KEY `Credit_movie_id_fk` (`movieId`),
  ADD KEY `Credit_role_id_fk` (`roleId`);

--
-- Índices de tabela `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Genre_pk2` (`title`) USING HASH;

--
-- Índices de tabela `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Movie_pk2` (`title`) USING HASH,
  ADD KEY `Movie_genre_id_fk` (`genreId`);

--
-- Índices de tabela `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Review_movie_id_fk` (`movieId`),
  ADD KEY `Review_user_id_fk` (`userId`);

--
-- Índices de tabela `reviewevaluation`
--
ALTER TABLE `reviewevaluation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ReviewEvaluation_review_id_fk` (`reviewId`),
  ADD KEY `ReviewEvaluation_user_id_fk` (`userId`);

--
-- Índices de tabela `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Role_pk2` (`title`) USING HASH;

--
-- Índices de tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_pk` (`email`) USING HASH,
  ADD UNIQUE KEY `user_pk2` (`username`) USING HASH;

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `accesstoken`
--
ALTER TABLE `accesstoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `credit`
--
ALTER TABLE `credit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `reviewevaluation`
--
ALTER TABLE `reviewevaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `accesstoken`
--
ALTER TABLE `accesstoken`
  ADD CONSTRAINT `accessToken_user_id_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `credit`
--
ALTER TABLE `credit`
  ADD CONSTRAINT `Credit_artist_id_fk` FOREIGN KEY (`artistId`) REFERENCES `artist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Credit_movie_id_fk` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Credit_role_id_fk` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `Movie_genre_id_fk` FOREIGN KEY (`genreId`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `Review_movie_id_fk` FOREIGN KEY (`movieId`) REFERENCES `movie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Review_user_id_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `reviewevaluation`
--
ALTER TABLE `reviewevaluation`
  ADD CONSTRAINT `ReviewEvaluation_review_id_fk` FOREIGN KEY (`reviewId`) REFERENCES `review` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ReviewEvaluation_user_id_fk` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
