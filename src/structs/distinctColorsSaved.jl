

module distinctColorsSaved
export listOfColors, longColorList
"""
set of 18 contrasting colors from https://sashamaps.net/docs/resources/20-colors/ - I excluded black and white from original 20 
also red and yellow were pushed to the end in case pet image will be displayed

"""
listOfColors = [(230, 25, 75), (60, 180, 75), (255, 225, 25), (0, 130, 200)
              , (245, 130, 48), (145, 30, 180), (70, 240, 240), (240, 50, 230)
              , (210, 245, 60), (250, 190, 212), (0, 128, 128), (220, 190, 255)
              , (170, 110, 40), (255, 250, 200), (128, 0, 0), (170, 255, 195), (128, 128, 0)
              , (255, 215, 180), (0, 0, 128), (128, 128, 128)]



"""
set of 256 distinct colors 
taken from 
https://stackoverflow.com/questions/33295120/how-to-generate-gif-256-colors-palette/33295456#33295456
"""
longColorList=[(184,129,131),
(146,35,41),
(90,0,7),
(215,191,194),
(216,106,120),
(255,138,154),
(59,0,10),
(226,0,39),
(148,58,77),
(91,78,81),
(176,91,111),
(254,178,198),
(216,61,102),
(137,85,99),
(255,26,89),
(255,219,229),
(204,7,68),
(203,126,152),
(153,125,135),
(106,58,76),
(255,47,128),
(107,0,44),
(167,69,113),
(198,0,90),
(255,93,167),
(48,0,24),
(184,148,166),
(255,144,201),
(124,101,113),
(163,0,89),
(218,0,124),
(91,17,60),
(64,35,52),
(209,87,160),
(221,182,208),
(136,85,120),
(150,43,117),
(169,115,153),
(210,0,150),
(231,115,206),
(170,81,153),
(231,4,196),
(107,58,100),
(255,160,242),
(111,0,98),
(185,3,170),
(200,149,197),
(255,52,255),
(50,0,51),
(219,213,221),
(238,195,255),
(188,35,255),
(103,17,144),
(32,22,37),
(245,225,255),
(188,101,233),
(215,144,255),
(114,65,143),
(74,59,83),
(149,86,189),
(180,168,189),
(121,0,215),
(160,121,191),
(149,138,159),
(131,115,147),
(100,84,123),
(58,36,101),
(53,51,57),
(188,177,229),
(159,148,240),
(150,149,197),
(0,0,166),
(0,0,53),
(99,99,117),
(0,0,95),
(151,151,158),
(122,123,255),
(60,62,110),
(99,103,169),
(73,75,90),
(59,93,255),
(200,208,246),
(109,128,186),
(143,176,255),
(0,69,210),
(122,135,161),
(50,78,114),
(0,72,156),
(0,96,205),
(120,158,201),
(1,44,88),
(153,173,192),
(0,19,37),
(221,239,255),
(89,115,138),
(0,134,237),
(117,121,124),
(189,201,210),
(62,137,190),
(140,208,255),
(10,163,247),
(107,148,170),
(41,96,124),
(64,78,85),
(0,111,166),
(1,51,73),
(10,166,216),
(101,129,136),
(94,188,209),
(69,109,117),
(0,137,163),
(181,244,255),
(2,82,95),
(28,230,255),
(0,28,30),
(32,59,60),
(163,200,201),
(0,166,170),
(0,198,200),
(0,106,102),
(81,138,135),
(228,255,252),
(102,225,211),
(0,77,67),
(128,150,147),
(21,160,138),
(0,132,111),
(0,194,160),
(0,254,207),
(120,175,161),
(2,104,78),
(194,255,237),
(71,103,93),
(0,216,145),
(0,75,40),
(138,219,180),
(12,189,102),
(84,158,121),
(26,58,42),
(108,143,125),
(0,137,65),
(99,255,172),
(27,225,119),
(0,108,49),
(181,214,195),
(61,79,68),
(75,129,96),
(102,121,109),
(113,187,140),
(4,247,87),
(0,30,9),
(210,220,213),
(0,180,51),
(159,178,164),
(0,49,9),
(163,243,171),
(69,102,72),
(81,160,88),
(131,164,133),
(126,211,121),
(209,247,206),
(161,194,153),
(6,18,3),
(30,110,0),
(94,255,3),
(85,129,59),
(59,151,0),
(79,198,1),
(27,68,0),
(194,255,153),
(120,141,102),
(134,142,126),
(131,171,88),
(55,69,39),
(152,208,88),
(198,220,153),
(164,232,4),
(118,145,47),
(139,180,0),
(52,54,45),
(76,96,1),
(223,251,113),
(106,113,74),
(34,40,0),
(107,121,0),
(58,63,0),
(190,196,89),
(254,255,230),
(163,164,137),
(159,160,100),
(255,255,0),
(97,97,90),
(255,255,254),
(155,151,0),
(207,205,172),
(121,120,104),
(87,83,41),
(255,246,159),
(141,133,70),
(244,215,73),
(126,100,5),
(29,23,2),
(204,170,53),
(204,184,124),
(69,60,35),
(81,58,1),
(255,181,0),
(167,117,0),
(214,142,1),
(183,151,98),
(122,73,0),
(55,33,1),
(136,111,76),
(164,91,2),
(231,171,99),
(250,208,159),
(192,185,178),
(147,138,129),
(163,132,105),
(209,97,0),
(167,111,66),
(91,69,52),
(91,50,19),
(202,131,78),
(255,145,63),
(149,63,0),
(208,172,148),
(125,90,68),
(190,71,0),
(253,232,220),
(119,38,0),
(160,88,55),
(234,139,102),
(57,20,6),
(255,104,50),
(200,98,64),
(41,32,29),
(183,123,104),
(128,108,102),
(255,170,146),
(137,65,46),
(232,48,0),
(168,140,133),
(247,201,191),
(100,49,39),
(233,129,118),
(123,79,75),
(30,2,0),
(156,105,102),
(191,86,80),
(186,9,0),
(255,74,70),
(244,171,170),
(0,0,0),
(69,44,44),
(200,161,161)]


end#distinctColorsSaved