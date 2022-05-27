label mode_infinite:
    menu:
        "Now choose the difficulty. It will influence the prices in the shop and will define how hard would it be to end the game."
        "Easy":
            $ inf_game_mode = 1
            "Have fun!"
        "Normal":
            $ inf_game_mode = 2
            "Good choice ;)"
        "Hardcore":
            $ inf_game_mode = 3
            "Wow... I hope you know what you are doing..."

    $ mode_inf = True
    $ pl1 = 1
    $ pnts = 50

    show bg endless
    show screen cells_inf
    show screen points

    if players == 1:
        show screen pl1_inf
    else:
        show screen pl1_inf
        show screen pl2_inf
    with Dissolve(2.)

    if players == 1:
        $ s1 = renpy.input("Enter your name (default - Sissy)", length=15).strip() or "Sissy"
    else:
        $ s1 = renpy.input("Enter Player-1 name (default - Sissy 1)", length=15).strip() or "Sissy 1"
        $ s2 = renpy.input("Enter Player-2 name (default - Sissy 2)", length=15).strip() or "Sissy 2"

    "Hey there, [s1]!"
    "Welcome to the Endless mode!"
    "Here is some more info about this game mode that you need to know..."
    "For successfully completing a task, you'll be getting 10 points and if you fail a task, 20 points will be removed."
    "Make sure your points amount don't go below 0, or you'll lose the game and will get punished..."
    "I gave you 50 points so you don't start at 0 ;)"
    "Good luck, [s1]!"

label game_inf:
    $ roll_enabled = True
    show screen bt_roll
    call screen bt_shop

label roll:
    $ roll_enabled = False
    hide screen bt_shop

    $ roll = renpy.random.randint(1, dice)

    show screen one
    pause 0.3
    hide screen one
    show screen two
    pause 0.3
    play sound "roll.ogg"
    hide screen two
    show screen three
    pause 0.3
    hide screen three
    show screen roll
    pause
    hide screen roll
    pause .5

    $ pl1 += roll

    if pl1 > 68:
        $ pl1 -= 68

    with Dissolve(1.)
    pause .8

    jump checkrollpl1

label afterrollcheckpl1_inf:
    show screen yourroll with dissolve
    pause
    hide screen yourroll

    jump tasktodocheck_inf

label aftertasktodocheckpl1_inf:
    show screen task with dissolve
    pause
    hide screen task

    if timr == True:
        $ timr = False
        show timebar:
            xpos -1.
        pause 0.0

        play sound "tick.ogg"
        pause 1.5

        if bpm != 0:
            play music "bpm{}.ogg".format(bpm)
        $ bpm = False

        show timebar with MoveTransition([60, 120, 180, renpy.random.randint(1,3) * 60][tmr - 1]):
            xpos 0.

        stop music
        play sound "timerdone.ogg"

        hide timebar

        show screen timerdone with dissolve
        pause
        hide screen timerdone

    call screen aftertaskp1_inf with dissolve

label nop1_inf:
    $ persistent.stat_faildtasks += 1

    show screen fl_pnts
    pause 0.3
    hide screen fl_pnts
    pause 0.3
    show screen fl_pnts
    pause 0.2
    hide screen fl_pnts
    pause 0.2
    show screen fl_pnts
    pause 0.2
    hide screen fl_pnts
    pause 0.2
    show screen fl_pnts
    pause 0.2
    hide screen fl_pnts
    pause 0.2

    play sound "fl.ogg"
    $ pnts -= 20

    if pnts < 0:
        $ persistent.stat_endls_gameslost += 1
        "Oh no! You've lost the game!"
        if inf_game_mode == 1:
            "Now as a punishment, you have to lock up your clitty for the next 7 days!"
        if inf_game_mode == 2:
            "Now as a punishment, you have to lock up your clitty for the next 14 days!"
        if inf_game_mode == 3:
            "Now as a punishment, you have to lock up your clitty for the next 21 days!"
        "Next time make sure not to go below 0 points!"
        "I'm sure after your chastity sentence you'll be really horny ;)"
        "Well... Better luck next time!"
        "GAME OVER"
        return

    jump game_inf

label yesp1_inf:
    $ setattr(persistent, "stat_compltasks_{}".format(task.replace(" ", "").replace("-", "")), getattr(persistent, "stat_compltasks_{}".format(task.replace(" ", "").replace("-", ""))) + 1)
    $ persistent.stat_compltasks += 1

    show screen win_pnts
    pause 0.3
    hide screen win_pnts
    pause 0.3
    show screen win_pnts
    pause 0.2
    hide screen win_pnts
    pause 0.2
    show screen win_pnts
    pause 0.2
    hide screen win_pnts
    pause 0.2
    show screen win_pnts
    pause 0.2
    hide screen win_pnts
    pause 0.2

    play sound "pnts.ogg"
    $ pnts += 10

    jump game_inf

screen aftertaskp1_inf():
    add "task_box.png"
    text "{color=#f8f0fd}Have you been able to complete the task?" size 70 xalign 0.5 yalign 0.5
    button:
        xalign 0.4 yalign 0.65
        text _("Yes") style "my_button"
        action Jump("yesp1_inf")
    button:
        xalign 0.6 yalign 0.65
        text _("No") style "my_button"
        action Jump("nop1_inf")

screen points():
    text "{b}{color=#f2d8e7}[pnts]" size 55 xalign 0.5 yalign 0.21

screen bt_shop():
    imagebutton:
        focus_mask True
        idle "images/bt shop idle.png"
        hover "images/bt shop hover.png"
        activate_sound "bt.ogg"
        sensitive roll_enabled
        action Jump("shop")

screen bt_roll():
    imagebutton:
        focus_mask True
        idle "images/bt roll idle.png"
        hover "images/bt roll hover.png"
        activate_sound "bt.ogg"
        sensitive roll_enabled
        action Jump("roll")

screen win_pnts():
    text "{color=#cbf5c3}+10" size 45 xalign 0.5 yalign 0.17

screen fl_pnts():
    text "{color=#dd2c52}-20" size 45 xalign 0.5 yalign 0.17
