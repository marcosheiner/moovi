-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Abr-2021 às 17:17
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `moovi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `filmes`
--

CREATE TABLE `filmes` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `genero_filme` text NOT NULL,
  `tipo_grupo` text NOT NULL,
  `embed` varchar(500) NOT NULL,
  `link_capa` varchar(500) NOT NULL,
  `sinopse` text NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `filmes`
--

INSERT INTO `filmes` (`id`, `nome`, `genero_filme`, `tipo_grupo`, `embed`, `link_capa`, `sinopse`, `nota`) VALUES
(1, 'Velozes & Furiosos Hobbs & Shaw', 'Ação', 'Filme', 'https://api.topflix.pro/embed/9421487174/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mKRiLf2SCU9ySjByMLMxKYs5c1i.jpg', 'O corpulento policial Luke Hobbs se junta ao fora da lei Deckard Shaw para combater um terrorista geneticamente melhorado que tem força sobre-humana.', 6),
(2, 'Velozes & Furiosos: Desafio em Tóquio', 'Ação', 'Filme', 'https://api.topflix.pro/embed/8325689467/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qexEesWpZgxLFlOrm54Sjn3Z7Y0.jpg', 'Sean Boswell é um piloto de rua que desafia seu rival e bate o carro no fim da corrida. Então, Sean decide se mudar para o Japão em companhia de seu pai para evitar a prisão nos Estados Unidos, já que os rachas não são nada populares com as autoridades. Em Tóquio, ele começa a aprender um excitante e perigoso estilo novo de competir nas ruas. Só que os riscos ficam ainda mais altos quando Sean decide competir com o campeão local e acaba se apaixonando pela namorada dele.', 6),
(3, 'Velozes & Furiosos 8', 'Ação', 'Filme', 'https://api.topflix.pro/embed/7608157195/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/38RVo4cX1O7Ia6k9WXcxkxprHm.jpg', 'Depois que Brian e Mia se aposentaram, e o resto da equipe foi exonerado, Dom e Letty estão em lua de mel e levam uma vida pacata e completamente normal. Mas a adrenalina do passado volta com tudo quando uma mulher misteriosa faz com que Dom retorne ao mundo do crime e da velocidade.', 6),
(4, 'Velozes & Furiosos 7', 'Ação', 'Filme', 'https://api.topflix.pro/embed/2131043575/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vK3EINuibdkBwUe9jOhVUXtLeb6.jpg', 'Após os acontecimentos em Londres, Dom, Brian, Letty e o resto da equipe têm a chance de voltar para os Estados Unidos e recomeçar suas vidas. Mas a tranquilidade do grupo é destruída quando Deckard Shaw, um assassino profissional, quer vingança pelo acidente que deixou seu irmão em coma. Agora, a equipe tem de unir forças para deter um vilão novo e ainda mais perigoso. Dessa vez, não se trata apenas de uma questão de velocidade: a corrida é pela sobrevivência.', 7.1),
(5, 'Velozes & Furiosos 6', 'Ação', 'Filme', 'https://api.topflix.pro/embed/0765138316/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yeF9WQvxHRrJnr5fGEfnzDpn4pA.jpg', 'Desde que o golpe de Dom e Brian no Rio de Janeiro deixou o grupo com 100 milhões de dólares, a equipe se espalhou pelo mundo. Um dia, Hobbs pede a Dom que reúna um grupo de elite em Londres e apreenda uma organização de mercenários nas ruas, cujo mentor é apoiado por Letty, a antiga namorada de Dom que ele acreditava estar morta.', 7),
(6, 'Vingadores: Era de Ultron', 'Ação', 'Filme', 'https://api.topflix.pro/embed/6227210345/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vGIIl89vglo66yUfbuTxzNAs4y5.jpg', 'Ao tentar proteger o planeta de ameaças, Tony Stark constrói um sistema de inteligência artificial que cuidaria da paz mundial. O projeto acaba dando errado e gera o nascimento do Ultron. Com o destino da Terra em jogo, Capitão América, Homem de Ferro, Thor, Hulk, Viúva Negra e Gavião Arqueiro terão que se unir para mais uma vez salvar a raça humana da extinção.', 7.3),
(7, 'Os Vingadores', 'Ação', 'Filme', 'https://api.topflix.pro/embed/4488006233/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/u49fzmIJHkb1H4oGFTXtBGgaUS1.jpg', 'Loki, o irmão de Thor, ganha acesso ao poder ilimitado do cubo cósmico ao roubá-lo de dentro das instalações da S.H.I.E.L.D. Nick Fury, o diretor desta agência internacional que mantém a paz, logo reúne os únicos super-heróis que serão capazes de defender a Terra de ameaças sem precedentes. Homem de Ferro, Capitão América, Hulk, Thor, Viúva Negra e Gavião Arqueiro formam o time dos sonhos de Fury, mas eles precisam aprender a colocar os egos de lado e agir como um grupo em prol da humanidade.', 8),
(8, 'Vingadores: Guerra Infinita', 'Ação', 'Filme', 'https://api.topflix.pro/embed/7593093854/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/89QTZmn34iwXYeCpVxhC9UrT8sX.jpg', 'Homem de Ferro, Thor, Hulk e os Vingadores se unem para combater seu inimigo mais poderoso, o maligno Thanos. Em uma missão para coletar todas as seis pedras infinitas, Thanos planeja usá-las para infligir sua vontade maléfica sobre a realidade.', 8.4),
(9, 'Vingadores: Ultimato', 'Ação', 'Filme', 'https://api.topflix.pro/embed/3673476609/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/q6725aR8Zs4IwGMXzZT8aC8lh41.jpg', 'Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.', 8.4),
(10, 'Capitão América: O Primeiro Vingador', 'Ação', 'Filme', 'https://api.topflix.pro/embed/8347222510/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xYijVAPunk6neVW2KHKE4Lp45ZU.jpg', 'Steve Rogers é um jovem que participa de experiências visando a criação do supersoldado americano. Quando os oficiais militares conseguem transformá-lo em uma arma humana, eles percebem que não podem arriscar a vida do jovem nas batalhas de guerra.', 6.9),
(11, 'Capitão América 2: O Soldado Invernal', 'Ação', 'Filme', 'https://api.topflix.pro/embed/8708582809/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/iBFPjLLHXkBojKpWDluJxnpM24h.jpg', 'Após os eventos catastróficos em Nova York com Os Vingadores, Steve Rogers, também conhecido como Capitão América, segue tentando se ajustar ao mundo moderno. Porém, quando um colega da agência S.H.I.E.L.D. é atacado, Steve se vê preso em uma rede de intrigas que ameaça colocar o mundo em risco. Em parceria com a Viúva Negra e Falcão, seu novo aliado, o Capitão América tem que enfrentar um misterioso e inesperado inimigo, o Soldado Invernal.', 7.7),
(12, 'Capitã Marvel', 'Ação', 'Filme', 'https://api.topflix.pro/embed/4865265470/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hVgLHgnsO46oSHJy5I4ekhqtoYv.jpg', 'Capitã Marvel, parte do exército de elite dos Kree, uma raça alienígena, encontra-se no meio de uma batalha entre seu povo e os Skrulls. Ao tentar impedir uma invasão de larga escala na Terra, em 1995, ela tem memórias recorrentes de uma outra vida, como Carol Danvers, agente da Força Aérea norte-americana. Com a ajuda de Nick Fury, Capitã Marvel precisa descobrir os segredos de seu passado e pôr um fim ao conflito intergalático com os Skrulls.', 6.9),
(13, 'Homem de Ferro 2', 'Ação', 'Filme', 'https://api.topflix.pro/embed/1493864187/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vzROjQbgKWMVf2EldXipCcjpuBL.jpg', 'Em um mundo ciente da existência do Homem de Ferro, o inventor bilionário Tony Stark sofre pressão de todos os lados para compartilhar sua tecnologia com as forças armadas. Ele resiste para divulgar os segredos de sua inigualável armadura, com medo de que estas informações caiam nas mãos erradas. Com a bela Pepper Potts e o amigo \"Rhodey\" Rhodes ao seu lado, Tony precisa forjar novas alianças e confrontar um inimigo poderoso.', 7),
(14, 'Homem de Ferro', 'Ação', 'Filme', 'https://api.topflix.pro/embed/8362758149/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/imYhKyT1tjFX3QLgzwIDa7JZhxi.jpg', 'Tony Stark é um industrial bilionário e inventor brilhante que realiza testes bélicos no exterior, mas é sequestrado por terroristas que o forçam a construir uma arma devastadora. Em vez disso, ele constrói uma armadura blindada e enfrenta seus sequestradores. Ao voltar para os EUA, Stark aprimora a armadura e a utiliza para combater o crime.', 7.9),
(15, 'Thor', 'Ação', 'Filme', 'https://api.topflix.pro/embed/1836924116/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/yI6jOYR9xDpxXPKAO17YuIBfROd.jpg', 'Como filho de Odin, rei dos deuses nórdicos, Thor logo herdará o trono de Asgard de seu idoso pai. Porém, no dia de sua coroação, Thor reage com brutalidade quando os inimigos dos deuses entram no palácio violando o tratado. Como punição, Odin manda Thor para a Terra. Enquanto seu irmão Loki conspira em Asgard, Thor, agora sem seus poderes, enfrenta sua maior ameaça.Como filho de Odin, rei dos deuses nórdicos, Thor logo herdará o trono de Asgard de seu idoso pai. Porém, no dia de sua coroação, Thor reage com brutalidade quando os inimigos dos deuses entram no palácio violando o tratado. Como punição, Odin manda Thor para a Terra. Enquanto seu irmão Loki conspira em Asgard, Thor, agora sem seus poderes, enfrenta sua maior ameaça.', 7),
(16, 'Thor: O Mundo Sombrio', 'Ação', 'Filme', 'https://api.topflix.pro/embed/1659516862/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oip30thvJBpJRveA13Rtd2am5Qg.jpg', 'Thor precisa contar com a ajuda de seus companheiros e até de seu traiçoeiro irmão Loki em um plano audacioso para salvar o universo. Entretanto, os caminhos de Thor se cruzam com Jane Foster e, dessa vez, a vida dela está realmente em perigo.', 6.9),
(17, 'Guardiões da Galáxia', 'Ação', 'Filme', 'https://api.topflix.pro/embed/7843406003/?key=5eac43aceba42c8757b54003a58277b5', 'https://media.fstatic.com/xX_mp_GHKzMbnNttepSJRFdoF_8=/290x478/smart/media/movies/covers/2014/05/guardioes-da-galaxia_t59375_6.jpg', 'O aventureiro do espaço Peter Quill torna-se presa de caçadores de recompensas depois que rouba a esfera de um vilão traiçoeiro, Ronan. Para escapar do perigo, ele faz uma aliança com um grupo de quatro extraterrestres. Quando Quill descobre que a esfera roubada possui um poder capaz de mudar os rumos do universo, ele e seu grupo deverão proteger o objeto para salvar o futuro da galáxia.', 8),
(18, 'Guardiões da Galáxia Vol. 2', 'Ação', 'Filme', 'https://api.topflix.pro/embed/2068347154/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/hXi3ExbRXnZCPbdHQkppQdcdMUF.jpg', 'Os Guardiões da Galáxia lutam para manter sua nova família unida enquanto desvendam os mistérios sobre o verdadeiro pai de Peter Quill.', 7.6),
(19, 'Doutor Estranho', 'Ação', 'Filme', 'https://api.topflix.pro/embed/6282649901/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/t0amAZ8KJFxBQZOxOnWlKVT4STi.jpg', 'Após sua carreira ser destruída, um brilhante, porém arrogante, cirurgião ganha uma nova chance em sua vida quando um feiticeiro o treina para se tornar o Mago Supremo.', 7.8),
(21, 'Uma Noite de Crime: O Ano da Eleição', 'Terror', 'Filme', 'https://api.topflix.pro/embed/9580592803/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2MLDMRWXZEIZsQ1KEelUeX2dUAZ.jpg', 'Em época de eleições, o policial Barnes precisa proteger a senadora Charlie Roan de uma noite anual de crimes, onde todos os delitos são permitidos por 12 horas.', 6),
(22, 'Uma Noite de Crime', 'Terror', 'Filme', 'https://api.topflix.pro/embed/8026392589/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/i9fRoPChc680PJWRvltPAMzri6I.jpg', 'No futuro, uma família rica é mantida refém por abrigar o alvo de um grupo assassino durante a Noite de Crime, um período de 12 horas em que todo e qualquer crime é legalizado.', 5.7),
(23, 'Uma Noite de Crime: Anarquia', 'Terror', 'Filme', 'https://api.topflix.pro/embed/3507037471/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vkJ9MP7yqtwt0pm4LaLIfSxTqm2.jpg', 'O governo dos Estados Unidos sanciona uma lei em que os assassinatos são permitidos durante uma noite, para que os cidadãos liberem seus instintos violentos. Cinco desconhecidos se unem para tentar sobreviver a essa verdadeira noite de terror.', 6.4),
(24, 'Liga da Justiça de Zack Snyder', 'Ação', 'Filme', 'https://api.topflix.pro/embed/8685962424/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/v9XwEXYWpxt2rpkmFBiQ1zeyKUy.jpg', 'mpulsionado pela restauração de sua fé na humanidade e inspirado pelo ato altruísta do Superman, Bruce Wayne convoca sua nova aliada Diana Prince para o combate contra um inimigo ainda maior, recém-despertado. Juntos, Batman e Mulher-Maravilha buscam e recrutam com agilidade um time de meta-humanos, mas mesmo com a formação da liga de heróis sem precedentes o ataque ao planeta ainda pode ser catastrófico.', 8.2),
(25, 'Ouija: O Jogo dos Espíritos', 'Terror', 'Filme', 'https://api.topflix.pro/embed/1456676202/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/7R7AzI5hOQNYIfuZ338admB1Qru.jpg', 'Após a repentina morte de sua melhor amiga, Debbie, Laine encontra um antigo jogo, Ouija, no quarto de Debbie e tenta usá-lo para dizer adeus. Mas, ao invés de contatar a amiga, Laine faz contato com um espírito que se intitula DZ. Quando estranhos eventos começam a ocorrer, Laine recruta seus amigos para desvendarem o que DZ quer. Ao se envolverem mais com o jogo, eles descobrem que a misteriosa morte de Debbie não será única e que vão ter o mesmo destino, caso não fechem o portal que abriram', 4.5),
(26, 'Interestelar', 'Aventura', 'Filme', 'https://api.topflix.pro/embed/9165958757/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/nCbkOyOMTEwlEV0LtCOvCnwEONA.jpg', 'As reservas naturais da Terra estão chegando ao fim e um grupo de astronautas recebe a missão de verificar possíveis planetas para receberem a população mundial, possibilitando a continuação da espécie. Cooper é chamado para liderar o grupo e aceita a missão sabendo que pode nunca mais ver os filhos. Ao lado de Brand, Jenkins e Doyle, ele seguirá em busca de um novo lar.', 8.6),
(27, 'Trolls', 'Animação', 'Filme', 'https://api.topflix.pro/embed/6406897552/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qVbNDmPrbnfgINfEoAMx41N7IfH.jpg', 'Poppy, a líder otimista dos trolls, e Branch, o seu oposto, embarcam em uma aventura que os leva a um mundo que nunca conheceram antes.', 6.5),
(28, 'Super-Heróis: A Liga da Injustiça', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/1146520109/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/3J8XKUfhJiNzwobUZVtizXYPe8b.jpg', 'O mundo está ameaçado por desastres da natureza e outros provocados pelo próprio homem', 1.9),
(29, 'Todo Mundo em Pânico 5', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/8809182542/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/14mLzrL5d9ykeEy0L9RGSit6PXN.jpg', 'Após noite juntos, Charlie é morto por Lindsay, que foi possuída por um demônio, com isso, os três filhos dele desaparecem, sendo encontrados por dois amigos em uma cabana abandonada. Lá duas das crianças passaram a agir de forma estranha, obedecendo as ordens de um ser invisível quem chamam de Mama. Após serem levados para orfanato, os três passam a viver com os tios Dan e Jody. Entretanto, é lá que estranhos eventos acontecem tendo Mama como responsável.', 3.5),
(30, 'Todo Mundo em Pânico 4', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/1233229323/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/odd3a1Tp0qsKVmAZbRbqlSPGppI.jpg', 'Mais uma continuação da franquia de filmes que faz sátiras das produções mais recentes de terror, como Jogos Mortais e O Grito. Desta vez, duas jovens tentam salvar o mundo de uma invasão alienígena.', 5.1),
(31, 'Todo Mundo em Pânico 3', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/1393229352/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/4eGdcLg9dWxUv3dSY7tIz5EX9sz.jpg', 'Depois de a repórter de jornal Cindy assistir acidentalmente uma estranha fita de vídeo que faz com que o espectador morra dentro de uma semana, ela descobre que a fita é apenas um dos muitos acontecimentos estranhos recentes. Os agricultores locais Tom e George relataram círculos enormes que aparecem durante a noite em seus campos. Cindy encontra uma ligação entre a fita e os círculos nas plantações com a ajuda do presidente dos Estados Unidos e uma tia gentil.', 5.5),
(32, 'Todo Mundo em Pânico 2', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/5681899330/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/549UoU38uoikbqgXG09rkkfIEWf.jpg', 'Como sequência do primeiro filme, \"Scary Movie 2\" lança seu olhar satírico sobre esses ícones clássicos como \" O Exorcista\" e \"Poltergeist\", bem como os filmes mais recentes \"Hannibal\" e \"What Lies Beneath\". Além de todas as coisas sobrenaturais, também inclui \"Anjos de Charlie\" e \"Missão Impossível 2\".', 5.3),
(33, 'Todo Mundo em Pânico', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/6603871626/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/p1Z8hvlqgrIRD9GIZvWTo3z0nDl.jpg', 'Depois do assassinato de uma bela colega de classe, um grupo de adolescentes desorientados descobre que há um assassino entre eles. A heroína Cindy Campbell e a sua turma de amigos tentam se proteger do perigo, mas Gail Hailstorm, uma repórter irritante, simplesmente não os deixa em paz.', 6.2),
(34, 'Os Deuses Devem Estar Loucos', 'Comédia', 'Filme', 'https://api.topflix.pro/embed/5159701146/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/zDcEF2jTOj5Enooa1flPyAVpCSb.jpg', 'Uma tribo tem uma vida feliz e tranquila em um remoto deserto da África, mas quando uma garrafa de Coca-Cola cai miraculosamente de um avião a vida da deles se transforma num caos. O líder da tribo, Xi (N!xau), decide devolver o estranho objeto aos deuses para restaurar a paz no local.', 7.3),
(35, 'Kingsman: Serviço Secreto', 'Ação', 'Filme', 'https://api.topflix.pro/embed/0533062159/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wDhy1Ga9BoLwkHOI0jJISQem28v.jpg', 'Uma organização de espionagem recruta um jovem de rua rebelde, mas com um futuro promissor, para um programa de treinamento ultracompetitivo. O elegante agente Harry Hart vê muito potencial no jovem Eggsy, apesar do temperamento. Após passar pela intensa preparação do serviço secreto, Eggsy tem de enfrentar uma ameaça global que emerge de um gênio da tecnologia. O plano do vilanesco Richmond Valentine envolve erradicar o problema do aquecimento global por meio de uma matança em larga escala.', 7.7),
(36, 'Capitão América: Guerra Civil', 'Ação', 'Filme', 'https://embed.querofilmeshd.co/tt3498820', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/lS5XvvUcJy5rJcbmBeX1GPoMnWJ.jpg', 'Depois do ataque de Ultron, os políticos decidem controlar os Vingadores, já que suas ações afetam toda a humanidade. A decisão coloca o Capitão América em rota de colisão com o Homem de Ferro.', 7.8),
(37, '+Velozes +Furiosos', 'Ação', 'Filme', 'https://streamtape.com/e/r4dkqYXVQKfea6', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tMUnCAgfARTdAu8ylPw4Wjh3e5N.jpg', 'Brian O’Conner perdeu o distintivo ao deixar o seu amigo Dom Toretto, líder do submundo das corridas, escapar às malhas da lei. De regresso a Miami na companhia do velho amigo Roman Pearce, resta-lhe agir sob disfarce para evitar as represálias da polícia. A sua missão é colaborar com a fantástica Monica Fuentes na captura de um líder da Máfia de Miami. E lá estará ele de novo ao volante desta vez disputando a própria vida.', 6.4),
(38, 'Homem de Ferro 3', 'Ação', 'Filme', 'https://streamtape.com/e/7wd2ApXpQ8fAZD3', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/C7MZwRTjvEy7gkWcLJeBGZFE1w.jpg', 'Desde o ataque dos chitauri a Nova York, Tony Stark (Robert Downey Jr.) vem enfrentando dificuldades para dormir e, quando consegue, tem terríveis pesadelos. Ele teme não conseguir proteger sua namorada Pepper Potts (Gwyneth Paltrow) dos vários inimigos que passou a ter após vestir a armadura do Homem de Ferro. Um deles, o Mandarim (Ben Kingsley), decide atacá-lo com força total, destruindo sua mansão e colocando a vida de Pepper em risco. Para enfrentá-lo Stark precisará ressurgir do fundo do mar, para onde foi levado junto com os destroços da mansão, e superar seu maior medo: o de fracassar.', 6.9),
(39, 'Thor: Ragnarok', 'Ação', 'Filme', 'https://streamtape.com/e/9POg0ZBJo8cOG9', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/bLpIFiuWF1bKnBqi7LqnJcLHtN.jpg', 'Thor encontra-se preso do outro lado do universo, sem o seu martelo poderoso, numa corrida contra o tempo para voltar a Asgard e impedir Ragnarok - a destruição do seu mundo e o fim da civilização Asgardiana – que se encontra nas mãos de uma nova e poderosa ameaça, a implacável Hela. Mas primeiro, Thor precisa de sobreviver a uma luta mortal de gladiadores, que o coloca contra um seu ex-aliado e companheiro Vingador – Hulk.', 7.6),
(40, 'Homem-Aranha: Longe de Casa', 'Ação', 'Filme', 'https://streamtape.com/e/o9yAGVkAXQiJLW6', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tX0o4AdHpidgniTWwfzK0dNTKrc.jpg', 'Após passar algum tempo com os Vingadores, Peter Parker decide dar uma folga ao fato de Homem-Aranha e juntar-se aos seus amigos para umas férias na Europa. No entanto, os planos vão por água abaixo quando Nick Fury lhe pede ajuda para desvendar o mistério dos vários ataques que andam a causar estragos por todo o continente!', 7.5),
(41, 'Homem-Aranha: De Volta ao Lar', 'Ação', 'Filme', 'https://api.topflix.pro/embed/9093163062/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/9Fgs1ewIZiBBTto1XDHeBN0D8ug.jpg', 'Entusiasmado com a sua recente experiência com os Vingadores, Peter regressa a casa, onde vive com a tia May, sob o olhar vigilante no seu novo mentor, Tony Stark. Peter procura reintegrar-se na sua rotina diária, sempre focado no desejo de provar que não é apenas o super-herói simpático que vive nas redondezas, e, assim sendo, quando Vulture surge como o novo vilão, tudo o que é mais importante para Peter fica ameaçado', 7.4),
(42, 'Homem-Aranha no Aranhaverso', 'Animação', 'Filme', 'https://api.topflix.pro/embed/8326583970/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ybQSBSrINtjWsJQ6Ih8sva8HlEZ.jpg', 'Phil Lord e Christopher Miller, as mentes criativas por detrás de obras como \"Lego, o Filme”, emprestam o seu talento único a uma nova interpretação do universo do Homem-Aranha, que aqui surge num estilo visual inovador e pioneiro. Um filme que nos apresenta Miles Morales, um adolescente de Brooklyn, e as possibilidades ilimitadas do mundo do Homem-Aranha.', 8.4),
(43, 'Tropa de Elite', 'Ação', 'Filme', 'https://api.topflix.pro/embed/2711956082/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eYTZoNEWbHPD2ujjdhdlpvbSYdr.jpg', 'O dia-a-dia do grupo de policiais e de um capitão do BOPE (Wagner Moura), que quer deixar a corporação e tenta encontrar um substituto para seu posto. Paralelamente dois amigos de infância se tornam policiais e se destacam pela honestidade e honra ao realizar suas funções, se indignando com a corrupção existente no batalhão em que atuam.', 8),
(44, 'Tropa de Elite 2: O Inimigo Agora é Outro', 'Ação', 'Filme', 'https://api.topflix.pro/embed/6368399942/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8G7F938AHqBBLc5yJXPUJhSJzN5.jpg', 'Nascimento enfrenta um novo inimigo: as milícias. Ao bater de frente com o sistema que domina o Rio de Janeiro, ele descobre que o problema é muito maior do que imaginava. E não é só. Ele precisa equilibrar o desafio de pacificar uma cidade ocupada pelo crime com as constantes preocupações com o filho adolescente. Quando o universo pessoal e o profissional de Nascimento se encontram, o resultado é explosivo.', 7.9),
(45, 'Abaixo de Zero', 'Ação', 'Filme', 'https://streamtape.com/e/342lbewKpWUdzPd', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rofFkTuMwwIJpWJVQaTRYqfQuoN.jpg', 'Um ônibus penitenciário é atacado e o policial encarregado tem que enfrentar criminosos dentro e fora do veículo, além de um inimigo silencioso: o frio congelante.', 6.5),
(46, 'Esquadrão Suicida', 'Ação', 'Filme', 'https://api.topflix.pro/embed/9248247483/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oKJh6X4kadnfPBKj9DvKwz68Cn.jpg', 'Um time dos mais perigosos e encarcerados supervilões são contratados por uma agência secreta do governo, para combater uma poderosa entidade. No entanto, quando eles percebem que não foram escolhidos apenas para ter sucesso, mas também por sua óbvia culpa quando inevitavelmente falharem, terão que decidir se vale a pena ou não continuar correndo risco de morte.', 5.9),
(47, 'Os Mercenários', 'Ação', 'Filme', 'https://api.topflix.pro/embed/2828869354/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tTfRV9lOBi3YDJpYXqbj4Ai04g2.jpg', 'Um grupo de mercenários, liderado por Barney Ross, e seus homens de confiança aceitam uma missão que parece ser rotineira: uma operação secreta, a mando da Igreja, para invadir o país sul-americano de Vilena e derrubar seu ditador. Não demora muito para o grupo perceber que a missão é uma operação suicida. Presos em uma perigosa teia de traições, mas sabendo que um inocente está em perigo, Barney e seus homens decidem finalizar o trabalho.', 6.5),
(48, 'Os Mercenários 2', 'Ação', 'Filme', 'https://api.topflix.pro/embed/0844655798/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/gEDpD6l2CJ8aLbtYLL2ecQ3yk09.jpg', 'O grupo de mercenários se unem para evitar que um criminoso roube uma grande quantidade de plutônio, que possibilitaria a produção de armas nucleares. Após o assassinato de um amigo e o sumiço do mapa que leva ao plutônio, o grupo sai em busca de vingança.', 6.6),
(49, 'Os Mercenários 3', 'Ação', 'Filme', 'https://api.topflix.pro/embed/9115183082/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vd22faXhHRCr8d1FSiXuFfnpSKv.jpg', 'Barney e sua trupe de mercenários resgatam Doc, um dos integrantes do grupo, que estava preso há oito anos. Ao participarem de uma missão, os mercenários são surpreendidos quando reencontram Conrad, um comerciante de armas impiedoso, que Barney pensava ter matado. Novos membros, mais jovens e mais rápidos, entram para equipe e um novo duelo começa.', 6.2),
(50, 'Invocação do Mal', 'Terror', 'Filme', 'https://api.topflix.pro/embed/5800387304/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/2qbYzwQEwsUE0mCYCbleFi9VriI.jpg', 'Harrisville, Rhode Island, Estados Unidos, 1968. Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar uma família aterrorizada por uma presença sombria em sua fazenda. Forçados a confrontar uma entidade poderosa, os Warrens se vêem presos no caso mais aterrorizante de suas vidas. Baseado numa história real.', 7.5),
(51, 'Invocação do Mal 2', 'Terror', 'Filme', 'https://api.topflix.pro/embed/6693848056/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/16kR95yBmFlf3sveibocl7ND83V.jpg', 'Sete anos após os eventos de Invocação do Mal (2013), Lorraine (Vera Farmiga) e Ed Warren (Patrick Wilson) desembarcam na Inglaterra para ajudar uma família atormentada por uma manifestação poltergeist na filha. A trama é baseada no caso Enfield Poltergeist, registrado no final da década de 1970.', 7.2),
(52, 'Coringa', 'Crime', 'Filme', 'https://api.topflix.pro/embed/5152516746/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/xLxgVxFWvb9hhUyCDDXxRPPnFck.jpg', 'Arthur Fleck trabalha como palhaço para uma agência de talentos e, toda semana, precisa comparecer a uma agente social, devido aos seus conhecidos problemas mentais. Após ser demitido, Fleck reage mal à gozação de três homens em pleno metrô e os mata. Os assassinatos iniciam um movimento popular contra a elite de Gotham City, da qual Thomas Wayne é seu maior representante.', 8.4),
(53, 'Grand Prix (1966)', 'Ação', 'Filme', 'https://api.topflix.pro/embed/9404736947/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/y22YL41N5HjvuEWDA8lOusn9paI.jpg', 'A história fala sobre o confronto de quatro pilotos de primeira classe da Fórmula 1. Cada um dos competidores teve sua própria motivação adicional para se tornar um campeão. O mundo deles é um risco e uma direção extrema e rápida na estrada. O sabor da adrenalina é o que vivem os amantes das corridas. Fora da competição, todos eles vivenciam dramas e convulsões pessoais, e mais importante se torna o título desejado para eles.', 7.1),
(54, 'Ponto Vermelho', 'Drama', 'Filme', 'https://streamtape.com/e/DAdxbe9V31UGa0', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qth9hOnQctaJbyzmAau4DZaUyUG.jpg', 'Com o relacionamento em crise e um bebê a caminho, um casal decide passar uns dias nas montanhas para reacender a paixão, mas acaba na mira de assassinos impiedosos.', 5.9),
(56, 'Dunkirk', 'Drama', 'Filme', 'https://api.topflix.pro/embed/3963696650/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/8TbAQlEpRG2EQsjMNR76IYGNuki.jpg', 'Durante a Segunda Guerra Mundial, a Alemanha avança rumo à França e cerca as tropas aliadas nas praias de Dunkirk. Sob cobertura aérea e terrestre das forças britânicas e francesas, as tropas são lentamente evacuadas da praia.', 7.5),
(57, 'O Lago da Mort‪e', 'Terror', 'Filme', 'https://api.topflix.pro/embed/1273110931/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/pcTq1gst6NH2RQZy5t8iWRIkvcD.jpg', 'Após a misteriosa morte de seu irmão gêmeo, uma jovem viaja com amigos até uma cabana perto do lago onde tudo aconteceu. Rapidamente, eles percebem que lugar tem outros visitantes misteriosos. Inspirado no clássico filme de terror de 1958.', 4.6),
(58, 'Conflicted 2021', 'Drama', 'Filme', 'https://api.topflix.pro/embed/4575664768/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/eDjJbZA6szKFRKwgKj06vqiBd3q.jpg', 'No filme de estreia da Griselda Films, Hunter volta da prisão e tenta colocar sua vida no caminho certo. Será que ele vai ter sucesso ou ser arrastado de volta para o seu passado criminoso? Ele está, como o título sugere, em conflito. E Michael Rapaport está em uma cena.', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `select_genero` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `genero`
--

INSERT INTO `genero` (`id`, `select_genero`) VALUES
(1, 'Ação'),
(2, 'Comédia'),
(3, 'Terror'),
(4, 'Aventura'),
(5, 'Drama'),
(6, 'Ficção'),
(7, 'Fantasia'),
(8, 'Romance'),
(9, 'Musical'),
(10, 'Documentário'),
(11, 'Mistério'),
(12, 'Animação'),
(13, 'Crime');

-- --------------------------------------------------------

--
-- Estrutura da tabela `series`
--

CREATE TABLE `series` (
  `id` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `genero_serie` text NOT NULL,
  `tipo_grupo` text NOT NULL,
  `embed` varchar(500) NOT NULL,
  `link_capa` varchar(500) NOT NULL,
  `sinopse` text NOT NULL,
  `nota` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `series`
--

INSERT INTO `series` (`id`, `nome`, `genero_serie`, `tipo_grupo`, `embed`, `link_capa`, `sinopse`, `nota`) VALUES
(3, 'S.W.A.T.', 'Crime', 'Série', 'https://api.topflix.pro/embed/2643729235/?key=5eac43aceba42c8757b54003a58277b5', 'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/ttzrYMdsKWR8PTRLw7uo4noqaOJ.jpg', 'Dividido entre a corporação e as ruas, o tenente Daniel Harrelson encara a missão de liderar uma unidade do Esquadrão de Armas e Táticas Especiais na comunidade onde cresceu.', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `select_tipo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`id`, `select_tipo`) VALUES
(1, 'Filme'),
(2, 'Série');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'marcos', '$2y$10$Nk23Knis.JI0cAJUN/Llt.navb6RERZqNDhvHTX5UvbyVeReLnAJG', '2021-04-06 20:15:43'),
(3, 'moreura', '$2y$10$g9JMOVh/5NnMF3Azsx.d2upEDyx5itMm.cK2LUGVPR638qyGaTMUy', '2021-04-07 12:17:35'),
(5, 'juvenal', '$2y$10$pmVPIUtl9P4gEuaFNn4Pq.EmSd.rQTpZX4oIULnZBW4FCkonRSYJS', '2021-04-10 16:55:57'),
(6, 'gabriel', '$2y$10$anK2nS/a9DRWe8tsUUEnFexs.6YfBh/G6m2KMhkqnhHGT0qCCykbe', '2021-04-10 17:27:54'),
(7, 'Romão', '$2y$10$02Z0JdDRxTidCuTJTkvMCe0P2YpQXoKK8bu44DvlpWHtNTdZDzPaq', '2021-04-10 18:08:50'),
(8, 'dudu', '$2y$10$wcTaW9tjlGNuxSX38zOmHeGOcpDM0j3BA6cCj06XznoP6WwDqNzNG', '2021-04-10 18:13:59'),
(9, 'admin', '$2y$10$srPcnnCVFsDfJBuaTjhz.u6UNrlhxXENzjxdy1EBOR0dGTm1s0/NG', '2021-04-10 18:32:31');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `filmes`
--
ALTER TABLE `filmes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nomefilme` (`nome`(1024));

--
-- Índices para tabela `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `filmes`
--
ALTER TABLE `filmes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `series`
--
ALTER TABLE `series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
