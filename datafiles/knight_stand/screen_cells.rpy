screen cells():
    default pos = [(295, 853), (240, 734), (192, 616), (161, 497), (159, 374), (182, 254), (286, 193), (387, 237), (407, 344), (414, 465), (389, 584), (389, 707), (438, 825), (549, 868), (659, 895),
        (770, 868), (774, 752), (687, 641), (594, 538), (544, 430), (520, 317), (535, 196), (643, 161), (749, 190), (823, 285), (848, 409), (855, 527), (862, 648), (911, 767), (1008, 847), (1116, 891), (1228, 903),
        (1338, 906), (1448, 890), (1560, 868), (1667, 808), (1606, 698), (1499, 685), (1389, 679), (1278, 696), (1166, 686), (1063, 632), (988, 525), (960, 408), (966, 289), (1024, 182), (1130, 151), (1231, 173),
        (1282, 288), (1291, 404), (1335, 508), (1424, 571), (1530, 562), (1636, 545), (1714, 447), (1733, 324), ]

    for i, p in enumerate(pos):
        $ c = getattr(store, "cell{:03d}".format(i + 1))
        add "icon {}.png".format(c) xcenter p[0] ycenter p[1]
