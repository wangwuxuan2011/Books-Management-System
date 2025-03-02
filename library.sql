-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-09-05 08:41:06
-- 服务器版本： 5.7.18-log
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin`
(
    `admin_id` int(11) NOT NULL,
    `password` varchar(15) DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`admin_id`, `password`)
VALUES (20170001, '111111');

-- --------------------------------------------------------

--
-- 表的结构 `book_info`
--

CREATE TABLE `book_info`
(
    `book_id`      bigint(20)     NOT NULL,
    `name`         varchar(50)    NOT NULL,
    `author`       varchar(50)    NOT NULL,
    `publish`      varchar(30)    NOT NULL,
    `ISBN`         varchar(13)    NOT NULL,
    `introduction` text,
    `language`     varchar(10)    NOT NULL,
    `price`        decimal(10, 2) NOT NULL,
    `pubdate`      date        DEFAULT NULL,
    `class_id`     int(11)     DEFAULT NULL,
    `pressmark`    int(11)     DEFAULT NULL,
    `state`        smallint(6) DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `book_info`
--

INSERT INTO `book_info` (`book_id`, `name`, `author`, `publish`, `ISBN`, `introduction`, `language`, `price`, `pubdate`,
                         `class_id`, `pressmark`, `state`)
VALUES (10000001, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Scribner', '9780743273565',
        '一部关于美国“爵士时代”颓废与过度的经典小说。', '英语', '39.99', '1985-04-10', 1, 05, 1),
       (10000002, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780446310789',
        '一部普利策奖获奖小说，讲述美国南部种族主义和不公正对一个黑人男子的指控。', '英语', '29.99', '1980-07-11', 1, 05,
        0),
       (10000003, '1984', 'George Orwell', 'Secker & Warburg', '9780451524935',
        '一部反乌托邦小说，讲述一个极权政府控制公民生活的故事。', '英语', '19.99', '1999-06-08', 1, 06, 1),
       (10000004, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780486284736',
        '一部浪漫小说，讲述本内特姐妹追求爱情和婚姻的故事。', '英语', '24.99', '1923-01-28', 1, 06, 0),
       (10000005, 'Jane Eyre', 'Charlotte Bronte', 'Smith, Elder & Co.', '9780141441146',
        '一部讲述小女孩简爱成长为自立女性的经典小说。', '英语', '21.99', '1987-10-16', 1, 07, 1),
       (10000006, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '9780316769488',
        '一部关于青少年成长和成熟的小说，深受读者喜爱。', '英语', '28.99', '1991-07-16', 1, 07, 0),
       (10000007, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060883287',
        '一部讲述布恩迭亚家族七代人命运的魔幻现实主义小说。', '西班牙语', '35.99', '1997-05-30', 1, 08, 1),
       (10000008, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347',
        '一部关于疯狂骑士唐吉诃德和他的忠实仆人桑乔·潘萨的冒险故事。', '西班牙语', '42.99', '1905-01-16', 1, 08, 0),
       (10000009, 'The Odyssey', 'Homer', 'N/A', '9780140268867', '一部关于希腊英雄奥德修斯回家的史诗故事。',
        '古希腊语', '31.99', '1905-01-16', 1, 09, 1),
       (10000010, 'The Divine Comedy', 'Dante Alighieri', 'N/A', '9780142437223',
        '一部讲述诗人达芬奇在地狱、炼狱和天堂之间的旅行的诗歌作品。', '意大利语', '29.99', '1990-01-01', 1, 09, 0),
       (10000011, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Ward, Lock and Company', '9780141442464',
        '一部探讨美貌、道德和腐败的哥特式小说。', '英语', '26.99', '1990-07-01', 2, 05, 1),
       (10000012, 'The Count of Monte Cristo', 'Alexandre Dumas', 'Pétion', '9780140449266',
        '一部关于男子在法国复仇的历史冒险小说。', '法语', '38.99', '1994-08-28', 2, 05, 0),
       (10000013, 'The Adventures of Huckleberry Finn', 'Mark Twain', 'Chatto & Windus', '9780141199009',
        '一部讲述男孩哈克和他的朋友吉姆逃离奴隶主的故事。', '英语', '22.99', '1994-12-10', 2, 06, 1),
       (10000014, 'The Adventures of Tom Sawyer', 'Mark Twain', 'American Publishing Company', '9780141321107',
        '一部讲述男孩汤姆的冒险故事。', '英语', '19.99', '1996-12-01', 2, 06, 0),
       (10000015, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780143107637',
        '一部关于一个年轻学生杀害一位贵族的故事，以及他的内疚和惩罚。', '俄语', '33.99', '1996-01-01', 2, 07, 1),
       (10000016, 'Anna Karenina', 'Leo Tolstoy', 'The Russian Messenger', '9780143035008',
        '一部讲述俄罗斯上层社会的女人安娜和她的不道德行为的小说。', '俄语', '28.99', '1997-01-01', 2, 07, 0),
       (10000017, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780140449242',
        '一部讲述三个兄弟之间关系和宗教信仰的小说。', '俄语', '35.99', '1990-11-01', 2, 08, 1),
       (10000018, 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556',
        '一部关于两个家庭之间的仇恨、热情和复仇的小说。', '英语', '24.99', '1997-12-01', 2, 08, 0),
       (10000019, 'Jane Eyre', 'Charlotte Bronte', 'Smith, Elder & Co.', '9780141441146',
        '一部关于女孩简在英国维多利亚时代生活和爱情的小说。', '英语', '21.99', '1997-10-16', 3, 05, 1),
       (10000020, 'Great Expectations', 'Charles Dickens', 'Chapman & Hall', '9780141439563',
        '一部讲述男孩皮普成长和生活的小说。', '英语', '26.99', '1991-08-01', 3, 05, 0),
       (10000021, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780141439518',
        '一部关于女主角伊丽莎白·班纳特和她的婚姻问题的小说。', '英语', '18.99', '1993-01-28', 3, 06, 1),
       (10000022, 'Sense and Sensibility', 'Jane Austen', 'Thomas Egerton, Military Library', '9780141439662',
        '一部关于两个姐妹之间的爱情和婚姻的小说。', '英语', '19.99', '1991-10-30', 3, 06, 0),
       (10000023, 'The Hobbit', 'J.R.R. Tolkien', 'George Allen & Unwin', '9780618260300',
        '一部关于霍比特人比尔博在中土世界的冒险故事。', '英语', '23.99', '1997-09-21', 4, 07, 1),
       (10000024, 'The Lord of the Rings', 'J.R.R. Tolkien', 'Allen & Unwin', '9780544003415',
        '一部讲述魔戒的故事，包括魔戒远征队穿越中土世界的历程。', '英语', '69.99', '1994-07-29', 4, 07, 0),
       (10000025, 'Animal Farm', 'George Orwell', 'Secker and Warburg', '9780141036137',
        '一部讽刺苏联共产主义政治的寓言小说。', '英语', '14.99', '1995-08-17', 4, 08, 1),
       (10000026, '1984', 'George Orwell', 'Secker & Warburg', '9780451524935',
        '一部讲述反乌托邦世界的小说，被认为是现代文学的经典之一。', '英语', '16.99', '199-06-08', 4, 08, 0),
       (10000027, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '9780060850524',
        '一部讲述极度科技化社会下人类生活的小说。', '英语', '20.99', '1992-06-17', 4, 09, 1),
       (10000028, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '9780316769488',
        '一部描写美国青少年的小说。', '英语', '15.99', '1991-07-16', 5, 10, 0),
       (10000029, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780446310789',
        '一部关于一个女孩的视角看待父亲为一名黑人辩护的小说。', '英语', '22.99', '1990-07-11', 5, 10, 1),
       (10000030, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060883287',
        '一部魔幻现实主义的小说，讲述了一百年中布恩迪亚家族的兴衰历程。', '西班牙语', '32.99', '1997-05-30', 6, 11, 0),
       (10000031, 'The Alchemist', 'Paulo Coelho', 'HarperTorch', '9780062315007',
        '一部寓言小说，讲述了一个追求自己梦想的牧羊人的故事。', '英语', '14.99', '1998-06-01', 6, 11, 1),
       (10000032, 'Don Quixote', 'Miguel de Cervantes', 'Francisco de Robles', '9780060934347',
        '一部讲述著名骑士堂吉诃德和他的侍从桑乔·潘萨的冒险故事的小说。', '西班牙语', '28.99', '1995-01-16', 6, 12, 0),
       (10000033, 'Crime and Punishment', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780486415871',
        '一部讲述年轻学生拉斯科尔尼科夫因杀人而引发的思想斗争的小说。', '英语', '18.99', '1996-02-10', 7, 12, 1),
       (10000034, 'War and Peace', 'Leo Tolstoy', 'The Russian Messenger', '9781427030200',
        '一部讲述拿破仑战争期间俄罗斯社会的小说。', '英语', '26.99', '1999-01-01', 7, 13, 0),
       (10000035, 'The Brothers Karamazov', 'Fyodor Dostoevsky', 'The Russian Messenger', '9780374528379',
        '一部讲述父亲和四个儿子之间的关系及其神学和哲学问题的小说。', '英语', '21.99', '1990-11-01', 7, 13, 1),
       (10000036, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9780141439518',
        '一部描写英国上层社会生活的小说，讲述伊丽莎白·班内特与达西先生的爱情故事。', '英语', '12.99', '1993-01-28', 8,
        14, 0),
       (10000037, 'Jane Eyre', 'Charlotte Bronte', 'Smith, Elder & Co.', '9780141441146',
        '一部讲述孤儿简·爱与她的主人罗切斯特先生之间的故事的小说。', '英语', '16.99', '1997-10-16', 8, 14, 1),
       (10000038, 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556',
        '一部讲述希斯克利夫和凯瑟琳之间的爱情和复仇故事的小说。', '英语', '14.99', '1997-12-19', 8, 15, 0),
       (10000041, 'To Kill a Mockingbird', 'Harper Lee', 'J. B. Lippincott & Co.', '9780446310789',
        '一部讲述种族歧视和正义的小说，讲述律师阿提克·菲因在20世纪30年代南方小镇为黑人辩护的故事。', '英语', '15.99',
        '1960-07-11', 9, 16, 1),
       (10000042, 'One Hundred Years of Solitude', 'Gabriel Garcia Marquez', 'Harper & Row', '9780060883287',
        '一部讲述布恩迪亚家族七代人历史的小说，是魔幻现实主义文学的代表作之一。', '英语', '23.99', '1997-05-30', 10, 17,
        0),
       (10000043, 'Love in the Time of Cholera', 'Gabriel Garcia Marquez', 'Random House', '9780307389732',
        '一部讲述年迈的男子费尔明与他一生爱慕的女子费尔米娜之间的爱情故事的小说。', '英语', '18.99', '1995-03-27', 10,
        17, 1),
       (10000044, 'The Hitchhiker’s Guide to the Galaxy', 'Douglas Adams', 'Pan Books', '9780330258647',
        '一部讲述银河系的冒险故事，讲述主人公阿瑟·邦德的经历。', '英语', '14.99', '1999-10-12', 11, 18, 0),
       (10000045, 'Brave New World', 'Aldous Huxley', 'Chatto & Windus', '9780060850524',
        '一部讲述幸福药和遗传工程的小说，探讨科学和技术在现代社会中的作用。', '英语', '17.99', '1999-10-27', 11, 18, 1),
       (10000046, '1984', 'George Orwell', 'Secker & Warburg', '9780451524935',
        '一部讲述一个虚构的极权主义社会的小说，探讨权力、自由和政治控制的问题。', '英语', '16.99', '1999-06-08', 11, 19,
        0),
       (10000048, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', '9780316769488',
        '一部讲述少年霍尔顿的成长经历和对社会现实的反叛的小说，被认为是现代文学的经典之作。', '英语', '13.99',
        '1991-07-16', 12, 20, 0),
       (10000049, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', '9781612930309',
        '一部讲述女主角伊丽莎白·班内特与达西先生之间的爱情故事的小说，是英国文学的经典之作。', '英语', '9.99',
        '1993-01-28', 12, 20, 1),
       (10000050, 'Sense and Sensibility', 'Jane Austen', 'Thomas Egerton, Military Library', '9780486290494',
        '一部讲述女主角伊丽莎白和玛丽安两姐妹的爱情故事的小说，是英国文学的经典之作。', '英语', '10.99', '1991-10-30', 12,
        21, 0),
       (10000051, 'Emma', 'Jane Austen', 'John Murray', '9780141439587',
        '一部讲述女主角爱玛的爱情故事的小说，是英国文学的经典之作。', '英语', '11.99', '1995-12-23', 12, 21, 1),
       (10000052, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Ward, Lock and Company', '9781979624009',
        '一部讲述一个年轻人为了追求美丽和快乐而放纵自己最终导致悲剧结局的小说。', '英语', '16.99', '1990-07-01', 13, 22,
        0),
       (10000053, 'Wuthering Heights', 'Emily Bronte', 'Thomas Cautley Newby', '9780141439556',
        '一部讲述爱与复仇的故事，描写了两个家族之间的情仇纠葛，是英国文学的经典之作。', '英语', '12.99', '1997-12-19', 13,
        22, 1),
       (10000055, '围城', '钱钟书', '人民文学出版社', '9787020002726',
        '一部讲述“围城”内外生活和人物的小说，通过对人物性格的深入剖析和对封建伦理和文化的讽刺批判，反映了中国现代化进程中的种种矛盾。',
        '中文', '29.99', '1997-06-01', 21, 30, 1),
       (10000056, '红楼梦', '曹雪芹', '人民文学出版社', '9787020000418',
        '一部描绘贾宝玉与林黛玉等人物爱恨情仇的长篇小说，被誉为中国古典文学的巅峰之作。', '中文', '39.99', '1991-01-01',
        21, 30, 0),
       (10000057, '鬼谷子', '鬼谷子', '中华书局', '9787101060713',
        '一部汇集了鬼谷子治国安邦和人生哲学的书籍，被誉为古代政治家和军事家的思想宝库。', '中文', '19.99', '1991-01-01',
        22,
        31, 1),
       (10000058, '孙子兵法', '孙武', '中华书局', '9787101053920',
        '一部介绍兵法的典籍，强调兵事胜败的五个因素：道、天、地、将、法，是古代兵家必读之书。', '中文', '12.99', '1991-01-01',
        22,
        31, 0),
       (10000059, '茶花女', '小仲马', '新世界出版社', '9787532759163',
        '一部描写巴黎社交界风情和悲剧爱情的小说，被誉为浪漫主义文学的杰作。', '中文', '24.99', '1998-02-28', 3, 32, 1),
       (10000060, '基督山伯爵', '大仲马', '人民文学出版社', '9787020012664',
        '一部描写复仇的小说，讲述了主人公蒙蒂·克里斯托的复仇故事，被誉为世界文学的经典之作。', '中文', '42.99',
        '1994-08-28', 2, 32, 0),
       (10000061, '沉默的大多数', '王小波', '作家出版社', '9787506341241',
        '王小波的一部小说，描绘了当代社会人们的孤独和沉默，以及对媒体、政治和官僚主义等现象的讽刺和批判。', '中文', '29.99',
        '1997-01-01', 2, 33, 1),
       (10000062, '呐喊', '鲁迅', '人民文学出版社', '9787020009336',
        '鲁迅的一部短篇小说集，通过对社会现象和人性的描写，反映了中国当时社会的黑暗和人们的痛苦。', '中文', '18.99',
        '1993-01-01', 4, 33, 0),
       (10000063, '活着', '余华', '作家出版社', '9787544253995',
        '一部讲述了中国农民家庭在20世纪的历史变革和苦难的小说，通过主人公福贵的经历，反映了中国农民的命运和人性的伟大。',
        '中文', '25.99', '1993-01-01', 5, 34, 1),
       (10000064, '百年孤独', '加西亚·马尔克斯', '南海出版公司', '9787544271746',
        '一部讲述布恩迪亚家族七代人的传奇故事，通过这个家族的兴衰历程，反映了拉丁美洲社会的变革和人性的善恶。', '中文',
        '39.99', '1997-06-01', 5, 34, 0),
       (10000065, '天龙八部', '金庸', '生活·读书·新知三联书店', '9787108039476',
        '一部以宋朝为背景的武侠小说，讲述了主人公降龙十八掌的传说，是金庸武侠小说中最具代表性的作品之一。', '中文',
        '28.99', '1999-01-01', 6, 35, 1),
       (50000001, '大雪中的山庄', '东野圭吾 ', '北京十月文艺出版社', '9787530216835',
        '东野圭吾长篇小说杰作，中文简体首次出版。 一出没有剧本的舞台剧，为什么能让七个演员赌上全部人生.东野圭吾就是有这样过人的本领，能从充满悬念的案子写出荡气回肠的情感，在极其周密曲折的同时写出人性的黑暗与美丽。 一家与外界隔绝的民宿里，七个演员被要求住满四天，接受导演的考验，但不断有人失踪。难道这并非正常排练，而是有人布下陷阱要杀他们。 那时候我开始喜欢上戏剧和音乐，《大雪中的山庄》一书的灵感就来源于此。我相信这次的诡计肯定会让人大吃一惊。——东野圭吾',
        '中文', '35.00', '2017-06-01', 9, 13, 1),
       (50000003, '三生三世 十里桃花', '唐七公子 ', '沈阳出版社', '9787544138000',
        '三生三世，她和他，是否注定背负一段纠缠的姻缘？\r\n三生三世，她和他，是否终能互许一个生生世世的承诺？', '中文',
        '26.80', '2009-01-06', 7, 2, 1),
       (50000004, '何以笙箫默', '顾漫 ', '朝华出版社', '9787505414709',
        '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表达的他终于使她在一次伤心之下远走他乡……',
        '中文', '15.00', '2007-04-03', 7, 2, 1),
       (50000005, '11处特工皇妃', '潇湘冬儿', '江苏文艺出版社', '9787539943893',
        '《11处特工皇妃(套装上中下册)》内容简介：她是国安局军情十一处惊才绝艳的王牌军师——收集情报、策划部署、进不友好国家布置暗杀任务……她运筹帷幄之中，决胜于千里之外，堪称军情局大厦的定海神针。',
        '中文', '74.80', '2011-05-05', 7, 2, 1),
       (50000006, '人类简史', '[以色列] 尤瓦尔·赫拉利 ', '中信出版社', '9787508647357',
        '十万年前，地球上至少有六种不同的人\r\n但今日，世界舞台为什么只剩下了我们自己？\r\n从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，\r\n从雪维洞穴壁上的原始人手印，到阿姆斯壮踩上月球的脚印，\r\n从认知革命、农业革命，到科学革命、生物科技革命，\r\n我们如何登上世界舞台成为万物之灵的？\r\n从公元前1776年的《汉摩拉比法典》，到1776年的美国独立宣言，\r\n从帝国主义、资本主义，到自由主义、消费主义，\r\n从兽欲，到物欲，从兽性、人性，到神性，\r\n我们了解自己吗？我们过得更快乐吗？\r\n我们究竟希望自己得到什么、变成什么？',
        '英文', '68.00', '2014-11-01', 11, 3, 1),
       (50000007, '明朝那些事儿（1-9）', '当年明月 ', '中国海关出版社', '9787801656087',
        '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人物的命运进行全景展示，尤其对官场政治、战争、帝王心术着墨最多。作品也是一部明朝政治经济制度、人伦道德的演义。',
        '中文', '358.20', '2009-04-06', 11, 3, 1),
       (50000010, '经济学原理（上下）', '[美] 曼昆 ', '机械工业出版社', '9787111126768',
        '此《经济学原理》的第3版把较多篇幅用于应用与政策，较少篇幅用于正规的经济理论。书中主要从供给与需求、企业行为与消费者选择理论、长期经济增长与短期经济波动以及宏观经济政策等角度深入浅出地剖析了经济学家们的世界观。',
        '英文', '88.00', '2003-08-05', 6, 5, 1),
       (50000014, '方向', '马克-安托万·马修 ', '后浪丨北京联合出版公司', '9787020125265',
        '《方向》即便在马修的作品中也算得最独特的：不着一字，尽得风流。原作本无一字，标题只是一个→，出版时才加了个书名Sens——既可以指“方向”，也可以指“意义”。 《方向》没有“字”，但有自己的语言——请读者在尽情释放想象力和独立思考之余，破解作者的密码，听听作者对荒诞的看法。',
        '中文', '99.80', '2017-04-01', 9, 13, 1),
       (50000015, '画的秘密', '马克-安托万·马修 ', '北京联合出版公司·后浪出版公司', '9787550265608',
        '一本关于友情的疗伤图像小说，直击人内心最为隐秘的情感。 一部追寻艺术的纸上悬疑电影，揭示命运宇宙中奇诡的真相。 ★ 《画的秘密》荣获欧洲第二大漫画节“瑞士谢尔漫画节最佳作品奖”。 作者曾两度夺得安古兰国际漫画节重要奖项。 ★ 《画的秘密》是一部罕见的、结合了拼贴、镜像、3D等叙事手法的实验型漫画作品。作者巧妙地调度光线、纬度、时间、记忆，在一个悬念重重又温情治愈的故事中，注入了一个有关命运的哲学议题。',
        '中文', '60.00', '2016-01-01', 9, 13, 0),
       (50000017, '造彩虹的人', '东野圭吾 ', '北京十月文艺出版社', '9787530216859',
        '其实每个人身上都会发光，但只有纯粹渴求光芒的人才能看到。 从那一刻起，人生会发生奇妙的转折。功一高中退学后无所事事，加入暴走族消极度日；政史备战高考却无法集中精神，几近崩溃；辉美因家庭不和对生活失去勇气，决定自杀。面对糟糕的人生，他们无所适从，直到一天夜里，一道如同彩虹的光闯进视野。 凝视着那道光，原本几乎要耗尽的气力，源源不断地涌了出来。一切又开始充满希望。打起精神来，不能输。到这儿来呀，快来呀——那道光低声呼唤着。 他们追逐着呼唤，到达一座楼顶，看到一个人正用七彩绚烂的光束演奏出奇妙的旋律。 他们没想到，这一晚看到的彩虹，会让自己的人生彻底转...',
        '中文', '39.50', '2017-06-01', 9, 13, 1),
       (50000018, '控方证人', '阿加莎·克里斯蒂 ', '新星出版社', '9787513325745',
        '经典同名话剧六十年常演不衰； 比利•怀尔德执导同名电影，获奥斯卡金像奖六项提名！ 阿加莎对神秘事物的向往大约来自于一种女性祖先的遗传，在足不出户的生活里，生出对世界又好奇又恐惧的幻想。 ——王安忆 伦纳德•沃尔被控谋杀富婆艾米丽以图染指其巨额遗产，他却一再表明自己的无辜。伦纳德的妻子是唯一能够证明他无罪的证人，却以控方证人的身份出庭指证其确实犯有谋杀罪。伦纳德几乎陷入绝境，直到一个神秘女人的出现…… 墙上的犬形图案；召唤死亡的收音机；蓝色瓷罐的秘密；一只疯狂的灰猫……十一篇神秘的怪谈，最可怕的不是“幽灵”，而是你心中的魔鬼。',
        '中文', '35.00', '2017-05-01', 9, 12, 1),
       (50000019, '少有人走的路', 'M·斯科特·派克 ', '吉林文史出版社', '9787807023777',
        '这本书处处透露出沟通与理解的意味，它跨越时代限制，帮助我们探索爱的本质，引导我们过上崭新，宁静而丰富的生活；它帮助我们学习爱，也学习独立；它教诲我们成为更称职的、更有理解心的父母。归根到底，它告诉我们怎样找到真正的自我。 正如开篇所言：人生苦难重重。M·斯科特·派克让我们更加清楚：人生是一场艰辛之旅，心智成熟的旅程相当漫长。但是，他没有让我们感到恐惧，相反，他带领我们去经历一系列艰难乃至痛苦的转变，最终达到自我认知的更高境界。',
        '中文', '26.00', '2007-01-01', 9, 12, 1),
       (50000020, '追寻生命的意义', '[奥] 维克多·弗兰克 ', '新华出版社', '9787501162734',
        '《追寻生命的意义》是一个人面对巨大的苦难时，用来拯救自己的内在世界，同时也是一个关于每个人存在的价值和能者多劳们生存的社会所应担负职责的思考。本书对于每一个想要了解我们这个时代的人来说，都是一部必不可少的读物。这是一部令人鼓舞的杰作……他是一个不可思议的人，任何人都可以从他无比痛苦的经历中，获得拯救自己的经验……高度推荐。',
        '中文', '12.00', '2003-01-01', 9, 16, 0),
       (50000021, '秘密花园', '乔汉娜·贝斯福 ', '北京联合出版公司', '9787550252585',
        '欢迎来到秘密花园！ 在这个笔墨编织出的美丽世界中漫步吧 涂上你喜爱的颜色，为花园带来生机和活力 发现隐藏其中的各类小生物，与它们共舞 激活创造力，描绘那些未完成的仙踪秘境 各个年龄段的艺术家和“园丁”都可以来尝试喔！',
        '中文', '42.00', '2015-06-01', 9, 18, 1);

-- --------------------------------------------------------

--
-- 表的结构 `class_info`
--

CREATE TABLE `class_info`
(
    `class_id`   int(11)     NOT NULL,
    `class_name` varchar(45) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `class_info`
--

INSERT INTO `class_info` (`class_id`, `class_name`)
VALUES (1, '马克思主义'),
       (2, '哲学'),
       (3, '社会科学总论'),
       (4, '政治法律'),
       (5, '军事'),
       (6, '经济'),
       (7, '文化'),
       (8, '语言'),
       (9, '文学'),
       (10, '艺术'),
       (11, '历史地理'),
       (12, '自然科学总论'),
       (13, ' 数理科学和化学'),
       (14, '天文学、地球科学'),
       (15, '生物科学'),
       (16, '医药、卫生'),
       (17, '农业科学'),
       (18, '工业技术'),
       (19, '交通运输'),
       (20, '航空、航天'),
       (21, '环境科学'),
       (22, '综合');

-- --------------------------------------------------------

--
-- 表的结构 `lend_list`
--

CREATE TABLE `lend_list`
(
    `sernum`    bigint(20) NOT NULL,
    `book_id`   bigint(20) NOT NULL,
    `reader_id` int(11)    NOT NULL,
    `lend_date` date DEFAULT NULL,
    `back_date` date DEFAULT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `lend_list`
--

INSERT INTO `lend_list` (`sernum`, `book_id`, `reader_id`, `lend_date`, `back_date`)
VALUES (2023040139, 10000001, 1901014101, '2023-02-15', '2023-03-16'),
       (2023040140, 10000003, 1901014101, '2023-02-10', '2023-03-02'),
       (2023040141, 10000006, 1901014101, '2023-02-12', '2023-03-02'),
       (2023040142, 50000004, 1901014101, '2023-02-15', '2023-03-03'),
       (2023040143, 50000005, 1901014103, '2023-02-15', NULL),
       (2023040144, 50000010, 1901014104, '2023-02-15', NULL),
       (2023040145, 10000001, 1901014101, '2023-02-02', '2023-03-02');

-- --------------------------------------------------------

--
-- 表的结构 `reader_card`
--

CREATE TABLE `reader_card`
(
    `reader_id`  int(11)     NOT NULL,
    `name`       varchar(16) NOT NULL,
    `passwd`     varchar(15) NOT NULL DEFAULT '111111',
    `card_state` tinyint(4)           DEFAULT '1'
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `reader_card`
--

INSERT INTO `reader_card` (`reader_id`, `name`, `passwd`, `card_state`)
VALUES (1584231690, '张三', '111111', 1),
       (1357128465, '李四', '111111', 1),
       (1210875692, '王五', '111111', 1),
       (1678451023, '赵六', '111111', 1),
       (1084219376, '孙七', '111111', 1),
       (1098576412, '周八', '111111', 1),
       (1867392150, '吴九', '111111', 1),
       (1342109658, '郑十', '111111', 1),
       (1105478963, '陈十一', '111111', 1),
       (1943120567, '黄十二', '111111', 1),
       (1812549037, '罗十三', '111111', 1),
       (1627891450, '苏十四', '111111', 1),
       (1059864213, '康十五', '111111', 1),
       (1593170682, '韩十六', '111111', 1),
       (1210963547, '朱十七', '111111', 1),
       (1569832704, '冯十八', '111111', 1),
       (1740152396, '于十九', '111111', 1),
       (1908764513, '吕二十', '111111', 1),
       (1031758294, '何二十一', '111111', 1),
       (1215968370, '田二十二', '111111', 1),
       (1820134796, '方二十三', '111111', 1),
       (1978562304, '刘二十四', '111111', 1),
       (1659372104, '余二十五', '111111', 1),
       (1190867354, '杨二十六', '111111', 1),
       (1352174608, '邓二十七', '111111', 1),
       (1086173295, '何二十八', '111111', 1),
       (1051936824, '赖二十九', '111111', 1),
       (1961423057, '蔡三十', '111111', 1),
       (1869723450, '魏三十一', '111111', 1),
       (1751439026, '沈三十二', '111111', 1),
       (1209465871, '许三十三', '111111', 1),
       (1490213568, '曾三十四', '111111', 1),
       (1594823760, '丁三十五', '111111', 1),
       (1032167458, '钟三十六', '111111', 1),
       (1249310875, '谢三十七', '111111', 1),
       (1719284650, '钱三十八', '111111', 1),
       (1830941257, '李四十', '111111', 1),
       (1198476023, '张四十一', '111111', 1),
       (1250139684, '刘四十二', '111111', 1),
       (1746352108, '陈四十三', '111111', 1),
       (1196873540, '卢四十四', '111111', 1),
       (1610594273, '叶四十五', '111111', 1),
       (1027138964, '胡四十六', '111111', 1),
       (1907268531, '杨四十七', '111111', 1),
       (1651403279, '柯四十八', '111111', 1),
       (1507184632, '范四十九', '111111', 1),
       (1486019357, '潘五十', '111111', 1),
       (1901014101, '张华', '111111', 1),
       (1901014102, '王小伟', '111111', 1),
       (1901014103, '王莞尔', '111111', 1),
       (1901014104, '张明华', '111111', 1),
       (1901014105, '李一琛', '111111', 1),
       (1901014106, '李二飞', '111111', 1);

-- --------------------------------------------------------

--
-- 表的结构 `reader_info`
--

CREATE TABLE `reader_info`
(
    `reader_id` int(11)     NOT NULL,
    `name`      varchar(16) NOT NULL,
    `sex`       varchar(2)  DEFAULT NULL,
    `birth`     date        DEFAULT NULL,
    `address`   varchar(50) DEFAULT NULL,
    `telcode`   varchar(11) NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;

--
-- 转存表中的数据 `reader_info`
--

INSERT INTO `reader_info` (`reader_id`, `name`, `sex`, `birth`, `address`, `telcode`)
VALUES (1901014101, '张华', '男', '1995-06-10', '天津市', '12345678900'),
       (1901014102, '王小伟', '男', '1996-02-01', '北京市', '12345678909'),
       (1901014103, '王莞尔', '女', '1995-04-15', '浙江省杭州市', '12345678908'),
       (1901014104, '张明华', '男', '1996-08-29', '陕西省西安市', '12345678907'),
       (1901014105, '李一琛', '男', '1996-01-01', '陕西省西安市', '15123659875'),
       (1901014106, '李二飞', '男', '1996-05-03', '山东省青岛市', '15369874123'),
       (1584231690, '张三', '男', '2001-08-23', '陕西省咸阳市', '13943108657'),
       (1357128465, '李四', '男', '1999-03-02', '湖南省常德市', '13257890143'),
       (1210875692, '王五', '女', '2000-05-10', '贵州省黔南布依族苗族自治州', '13798435702'),
       (1678451023, '赵六', '男', '2000-12-15', '云南省曲靖市', '13685724039'),
       (1084219376, '孙七', '女', '2001-10-04', '江苏省连云港市', '13748139527'),
       (1098576412, '周八', '女', '1999-07-17', '四川省成都市', '13879461529'),
       (1867392150, '吴九', '男', '2001-04-20', '广东省深圳市', '13625749031'),
       (1342109658, '郑十', '女', '1999-11-14', '山东省滨州市', '13675034218'),
       (1105478963, '陈十一', '女', '1999-05-29', '湖北省黄石市', '13865024981'),
       (1943120567, '黄十二', '男', '2000-06-05', '河南省驻马店市', '13978156209'),
       (1812549037, '罗十三', '男', '2000-07-28', '河北省沧州市', '13869715086'),
       (1627891450, '苏十四', '女', '1999-10-23', '广西壮族自治区百色市', '13981076542'),
       (1059864213, '康十五', '女', '2000-06-17', '宁夏回族自治区银川市', '13937852106'),
       (1593170682, '韩十六', '女', '2000-02-14', '江西省南昌市', '13675014203'),
       (1210963547, '朱十七', '女', '2001-06-07', '福建省三明市', '13847965028'),
       (1569832704, '冯十八', '男', '2000-03-18', '湖南省岳阳市', '13629785460'),
       (1740152396, '于十九', '男', '2000-12-23', '山西省忻州市', '13650891743'),
       (1908764513, '吕二十', '男', '1999-02-21', '陕西省汉中市', '13628751094'),
       (1031758294, '何二十一', '男', '2000-09-13', '湖南省衡阳市', '18683157463'),
       (1215968370, '田二十二', '女', '1999-04-22', '江西省宜春市', '13698572064'),
       (1820134796, '方二十三', '男', '2001-03-07', '广东省广州市', '13517894632'),
       (1978562304, '刘二十四', '女', '2000-02-01', '河北省保定市', '15021976435'),
       (1659372104, '余二十五', '男', '1999-07-15', '海南省海口市', '13198642058'),
       (1190867354, '杨二十六', '女', '2001-01-28', '四川省成都市', '15974810236'),
       (1352174608, '邓二十七', '男', '1999-11-18', '福建省福州市', '15874931062'),
       (1086173295, '何二十八', '女', '2000-08-08', '湖北省武汉市', '18275839216'),
       (1051936824, '赖二十九', '男', '2001-02-05', '云南省昆明市', '17782410573'),
       (1961423057, '蔡三十', '女', '2000-12-03', '重庆市', '13975286419'),
       (1869723450, '魏三十一', '男', '1999-05-22', '黑龙江省哈尔滨市', '15147832650'),
       (1751439026, '沈三十二', '女', '2000-10-09', '江苏省南京市', '15274903618'),
       (1209465871, '许三十三', '男', '1999-03-30', '浙江省杭州市', '13874901632'),
       (1490213568, '曾三十四', '女', '2000-09-12', '广西省南宁市', '15874125936'),
       (1594823760, '丁三十五', '男', '2001-01-15', '山西省太原市', '18374812035'),
       (1032167458, '钟三十六', '女', '1999-12-30', '贵州省贵阳市', '17783460924'),
       (1249310875, '谢三十七', '男', '2000-06-05', '湖南省长沙市', '15074289367'),
       (1719284650, '钱三十八', '女', '2001-02-22', '浙江省宁波市', '15984027134'),
       (1830941257, '李四十', '男', '1999-08-18', '江苏省苏州市', '18974105823'),
       (1198476023, '张四十一', '男', '2000-11-25', '湖南省长沙市', '13598765432'),
       (1250139684, '刘四十二', '女', '1999-07-08', '北京市海淀区', '13876543210'),
       (1746352108, '陈四十三', '男', '2001-03-17', '广东省深圳市', '13987654321'),
       (1196873540, '卢四十四', '女', '2000-02-29', '江苏省南京市', '13678901234'),
       (1610594273, '叶四十五', '男', '1999-12-03', '浙江省杭州市', '13789012345'),
       (1027138964, '胡四十六', '女', '2001-08-15', '上海市浦东新区', '15876543210'),
       (1907268531, '杨四十七', '男', '2000-05-20', '山东省青岛市', '15098765432'),
       (1651403279, '柯四十八', '女', '1999-10-11', '湖北省武汉市', '15987654321'),
       (1507184632, '范四十九', '男', '2001-01-01', '广西省南宁市', '13789012345'),
       (1486019357, '潘五十', '女', '2000-09-09', '河南省郑州市', '13976543210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
    ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book_info`
--
ALTER TABLE `book_info`
    ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
    ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `lend_list`
--
ALTER TABLE `lend_list`
    ADD PRIMARY KEY (`sernum`);

--
-- Indexes for table `reader_card`
--
ALTER TABLE `reader_card`
    ADD PRIMARY KEY (`reader_id`);

--
-- Indexes for table `reader_info`
--
ALTER TABLE `reader_info`
    ADD PRIMARY KEY (`reader_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `book_info`
--
ALTER TABLE `book_info`
    MODIFY `book_id` bigint(20) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 50000012;

--
-- 使用表AUTO_INCREMENT `lend_list`
--
ALTER TABLE `lend_list`
    MODIFY `sernum` bigint(20) NOT NULL AUTO_INCREMENT,
    AUTO_INCREMENT = 2015040146;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
