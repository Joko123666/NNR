screen settings():

    default cd = ['oral', 'body writing', 'dress up', 'fingering', 'hypno', 'edging', 'piss', 'make-up', 'bondage', 'humiliation', 'exposure', 'chastity', 'pain', 'anal', 'plug', 'cum']

    add "scrn"
    add "settings"

    imagebutton:
        focus_mask True
        idle "images/bt start idle.png"
        hover "images/bt start hover.png"
        activate_sound "bt.ogg"
        action Jump("pregame")

    for d in range(4,9):
        imagebutton:
            focus_mask True
            idle "images/bt {} idle.png".format(d)
            hover "images/bt {} hover.png".format(d)
            selected_idle "images/bt {} selected_idle.png".format(d)
            activate_sound "bt.ogg"
            action SetVariable("dice", d)

    imagebutton:
        focus_mask True
        idle "images/bt timer idle.png"
        hover "images/bt timer hover.png"
        selected_idle "images/bt timer selected.png"
        anchor (0.5, 0.5)
        xpos 367
        ypos 913
        activate_sound "bt.ogg"
        action SetVariable("tmr", 1)

    imagebutton:
        focus_mask True
        idle "images/bt timer idle.png"
        hover "images/bt timer hover.png"
        selected_idle "images/bt timer selected.png"
        anchor (0.5, 0.5)
        xpos 367
        ypos 977
        activate_sound "bt.ogg"
        action SetVariable("tmr", 2)

    imagebutton:
        focus_mask True
        idle "images/bt timer idle.png"
        hover "images/bt timer hover.png"
        selected_idle "images/bt timer selected.png"
        anchor (0.5, 0.5)
        xpos 628
        ypos 913
        activate_sound "bt.ogg"
        action SetVariable("tmr", 3)

    imagebutton:
        focus_mask True
        idle "images/bt timer idle.png"
        hover "images/bt timer hover.png"
        selected_idle "images/bt timer selected.png"
        anchor (0.5, 0.5)
        xpos 628
        ypos 977
        activate_sound "bt.ogg"
        action SetVariable("tmr", 4)

    for (idx, v) in enumerate(cd):
    
        imagebutton:
            focus_mask True
            idle "images/bt idle.png"
            hover "images/bt hover.png"
            selected_idle "images/bt selected.png"
            anchor (0.5, 0.5)
            xpos 327 + idx * 90
            ypos 264
            activate_sound "bt.ogg"
            action SetCell(idx, (v, 100))

        imagebutton:
            focus_mask True
            idle "images/bt idle.png"
            hover "images/bt hover.png"
            selected_idle "images/bt selected.png"
            anchor (0.5, 0.5)
            xpos 327 + idx * 90
            ypos 377
            activate_sound "bt.ogg"
            action SetCell(idx, (v, 75))

        imagebutton:
            focus_mask True
            idle "images/bt idle.png"
            hover "images/bt hover.png"
            selected_idle "images/bt selected.png"
            anchor (0.5, 0.5)
            xpos 327 + idx * 90
            ypos 489
            activate_sound "bt.ogg"
            action SetCell(idx, (v, 50))

        imagebutton:
            focus_mask True
            idle "images/bt idle.png"
            hover "images/bt hover.png"
            selected_idle "images/bt selected.png"
            anchor (0.5, 0.5)
            xpos 327 + idx * 90
            ypos 602
            activate_sound "bt.ogg"
            action SetCell(idx, (v, 25))

        imagebutton:
            focus_mask True
            idle "images/bt idle.png"
            hover "images/bt hover.png"
            selected_idle "images/bt selected.png"
            anchor (0.5, 0.5)
            xpos 327 + idx * 90
            ypos 714
            activate_sound "bt.ogg"
            action SetCell(idx, (v, 0))
