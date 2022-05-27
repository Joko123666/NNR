init python:
    class NonUniformRandom(object):
        def __init__(self, list_of_values_and_probabilities):
            """
            expects a list of [ (value, probability), (value, probability),...]
            """
            self.the_list = list_of_values_and_probabilities
            self.the_sum = sum([ v[1] for v in list_of_values_and_probabilities])
        
        def pick(self):
            """
            return a random value taking into account the probabilities
            """
            r = renpy.random.uniform(0, self.the_sum)
            s = 0.0
            for k, w in self.the_list:
                s += w
                if r < s: return k
            return k

default persistent.stat_compltasks = 0
default persistent.stat_faildtasks = 0
default persistent.stat_endls_gameslost = 0
default persistent.stat_endls_gamescompl = 0
default persistent.stat_strtfnsh_gamescompl = 0
default persistent.stat_compltasks_oral = 0
default persistent.stat_compltasks_bodywriting = 0
default persistent.stat_compltasks_dressup = 0
default persistent.stat_compltasks_fingering = 0
default persistent.stat_compltasks_hypno = 0
default persistent.stat_compltasks_edging = 0
default persistent.stat_compltasks_piss = 0
default persistent.stat_compltasks_makeup = 0
default persistent.stat_compltasks_bondage = 0
default persistent.stat_compltasks_humiliation = 0
default persistent.stat_compltasks_exposure = 0
default persistent.stat_compltasks_chastity = 0
default persistent.stat_compltasks_pain = 0
default persistent.stat_compltasks_anal = 0
default persistent.stat_compltasks_plug = 0
default persistent.stat_compltasks_cum = 0
default persistent.stat_compltasks_couple = 0
default persistent.achivm_finish = False
default persistent.achivm_endls_locked = False
default persistent.achivm_endls_shop_denied = False
default persistent.achivm_endls_shop_ruin = False
default persistent.achivm_endls_shop_eatcum = False
default persistent.achivm_endls_shop_analcum = False
default persistent.achivm_endls_shop_howyoulike = False
default persistent.achivm_endls_shop_randomend = False
default persistent.achivm_endls_shop_analorgasm = False
default persistent.achivm_oral100 = False
default persistent.achivm_bodywriting100 = False
default persistent.achivm_dressup100 = False
default persistent.achivm_fingering100 = False
default persistent.achivm_hypno100 = False
default persistent.achivm_edging100 = False
default persistent.achivm_piss100 = False
default persistent.achivm_makeup100 = False
default persistent.achivm_bondage100 = False
default persistent.achivm_humiliation100 = False
default persistent.achivm_exposure100 = False
default persistent.achivm_chastity100 = False
default persistent.achivm_pain100 = False
default persistent.achivm_anal100 = False
default persistent.achivm_plug100 = False
default persistent.achivm_cum100 = False
default mode_inf = False
default inf_game_mode = 1
default pl1 = 0
default pl2 = 0
default players = 1
default tmr = 2
default bpm = False
default dice = 6
default timr = False
default cell_description = [('oral', 50), ('body writing', 50), ('dress up', 50), ('fingering', 50), ('hypno', 50), ('edging', 50), ('piss', 50), ('make-up', 50), ('bondage', 50), ('humiliation', 50), ('exposure', 50), ('chastity', 50), ('pain', 50), ('anal', 50), ('plug', 50), ('cum', 50), ('couple', 0)]

label start:
    $ quick_menu = False

    show bg 1 with Dissolve(2.)

    call screen intro1 with dissolve
    call screen intro2 with dissolve

    menu:
        "Would you like to run the tasks editor?"
        "Yes":
            call screen task_ed_main with dissolve
        "No":
            pass

    call screen settings with dissolve

label pregame:
    if sum([p for (n, p) in cell_description]) == 0:
        show screen settings
        call screen msg("You need to choose at least one task category.", called=True)
        call screen settings with dissolve

    python hide:
        l = ""
        i = 0
        s = sum([bool(p) for (n, p) in cell_description if p > 0]) > 1
        while i < 100:
            p = NonUniformRandom(cell_description).pick()
            if l == p and s:
                continue
            setattr(store, "cell{:03d}".format(i), p)
            l = p
            i += 1

    $ quick_menu = True

    menu:
        "Choose the Game Mode"
        "From Start to Finish":
            pass
        "Endless":
            jump mode_infinite

    call screen choosebg with dissolve

    show expression "bg {}".format(_return)
    show track
    show screen cells

    if players == 2:
        show screen pl1
        show screen pl2
    if players == 1:
        show screen pl1

    with Dissolve(2.)

    if players == 1:
        python:
            s1 = renpy.input("Enter your name (default - Sissy)", length=15)
            s1 = s1.strip()
            if not s1:
                s1 = "Sissy"
    else:
        python:
            s1 = renpy.input("Enter Player-1 name (default - Sissy 1)", length=15)
            s1 = s1.strip()
            if not s1:
                s1 = "Sissy 1"
        python:
            s2 = renpy.input("Enter Player-2 name (default - Sissy 2)", length=15)
            s2 = s2.strip()
            if not s2:
                s2 = "Sissy 2"

label game:
    if persistent.stat_compltasks_oral == 100:
        if persistent.achivm_oral100 == False:
            $ persistent.achivm_oral100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Put It In My Mouth!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_bodywriting == 100:
        if persistent.achivm_bodywriting100 == False:
            $ persistent.achivm_bodywriting100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Written All Over\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_dressup == 100:
        if persistent.achivm_dressup100 == False:
            $ persistent.achivm_dressup100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Dressed Up and Sexy\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_fingering == 100:
        if persistent.achivm_fingering100 == False:
            $ persistent.achivm_fingering100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Can Fit All of Them Now\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_hypno == 100:
        if persistent.achivm_hypno100 == False:
            $ persistent.achivm_hypno100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Brainwashed\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_edging == 100:
        if persistent.achivm_edging100 == False:
            $ persistent.achivm_edging100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Sweet Torture\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_piss == 100:
        if persistent.achivm_piss100 == False:
            $ persistent.achivm_piss100 = True
            play sound "achievement.ogg"
            $ achievement = "\"I Love That Taste!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_makeup == 100:
        if persistent.achivm_makeup100 == False:
            $ persistent.achivm_makeup100 = True
            play sound "achievement.ogg"
            $ achievement = "\"I'm So Pretty!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_bondage == 100:
        if persistent.achivm_bondage100 == False:
            $ persistent.achivm_bondage100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Hogtied\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_humiliation == 100:
        if persistent.achivm_humiliation100 == False:
            $ persistent.achivm_humiliation100 = True
            play sound "achievement.ogg"
            $ achievement = "\"I'm a Dumb Sissy Whore\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_exposure == 100:
        if persistent.achivm_exposure100 == False:
            $ persistent.achivm_exposure100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Look at Me!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_chastity == 100:
        if persistent.achivm_chastity100 == False:
            $ persistent.achivm_chastity100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Locked up!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_pain == 100:
        if persistent.achivm_pain100 == False:
            $ persistent.achivm_pain100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Masochist\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_anal == 100:
        if persistent.achivm_anal100 == False:
            $ persistent.achivm_anal100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Breed Me!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_plug == 100:
        if persistent.achivm_plug100 == False:
            $ persistent.achivm_plug100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Plugged!\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_cum == 100:
        if persistent.achivm_cum100 == False:
            $ persistent.achivm_cum100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Cumslut\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    if persistent.stat_compltasks_couple == 100:
        if persistent.achivm_couple100 == False:
            $ persistent.achivm_couple100 = True
            play sound "achievement.ogg"
            $ achievement = "\"Couple\""
            show screen achievement
            pause
            hide screen achievement
            with dissolve

    show screen s1roll with dissolve
    pause
    hide screen s1roll

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

    with Dissolve(1.)
    pause .5

    if players == 2:

        if pl1 >= 57:
            jump pl1win

    if players == 1:
        if pl1 >= 57:
            jump finish

    jump checkrollpl1

label afterrollcheckpl1:
    show screen yourroll with dissolve
    pause
    hide screen yourroll

    $ pl1roll = True
    $ pl2roll = False

    jump tasktodocheck_inf

label aftertasktodocheckpl1:
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

    call screen aftertaskp1 with dissolve

label nop1:
    $ persistent.stat_faildtasks += 1

    $ roll = renpy.random.randint(1,dice)

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

    if pl1 <= roll:
        $ pl1 = 0
    else:
        $ pl1 -= roll

    with Dissolve(1.)
    pause .5

label yesp1:
    $ setattr(persistent, "stat_compltasks_{}".format(task.replace(" ", "").replace("-", "")), getattr(persistent, "stat_compltasks_{}".format(task.replace(" ", "").replace("-", ""))) + 1)
    $ persistent.stat_compltasks += 1

    if players == 1:
        jump game

    show screen s2roll with dissolve
    pause
    hide screen s2roll with dissolve

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

    $ pl2 += roll

    with Dissolve(1.)
    pause .5

    if pl2 >= 57:
        jump pl2win

    jump checkrollpl2

label afterrollcheckpl2:
    show screen yourroll with dissolve
    pause
    hide screen yourroll

    $ pl1roll = False
    $ pl2roll = True

    jump tasktodocheck

label aftertasktodocheckpl2:
    show screen task with dissolve
    pause
    hide screen task

    call screen aftertaskp2 with dissolve

label nop2:
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

    if pl2 <= roll:
        $ pl2 = 0
    else:
        $ pl2 -= roll

    with Dissolve(1.)
    pause .5

label yesp2:
    jump game

label pl1win:
    hide track
    hide screen cells
    hide screen pl1
    hide screen pl2
    play sound "win.ogg"
    call screen pl1win with dissolve
    "See you next time ;)"
    return

label pl2win:
    hide track
    hide screen cells
    hide screen pl1
    hide screen pl2
    play sound "win.ogg"
    call screen pl2win with dissolve
    "See you next time ;)"
    return

label finish:
    if persistent.achivm_finish == False:
        $ persistent.achivm_finish = True
        play sound "achievement.ogg"
        $ achievement = "\"Finish Line\""
        show screen achievement
        pause
        hide screen achievement
        with dissolve
    $ persistent.stat_strtfnsh_gamescompl += 1

    hide track
    hide screen cells
    hide screen pl1
    hide screen pl2
    play sound "win.ogg"
    call screen finish with dissolve
    "See you next time ;)"
    return

screen intro():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "intro":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd} Hello there, sissy! I've created this game so you can have some fun, and do it the way {i}you{/i} like it. This is a simple \"board\" game, you roll the dice, move along the board and do the tasks you land on. You have to complete the tasks given to move forward. If you fail to complete a task, you will be moved backwards. You have a reward waiting for you, if you make it to the end... After this introduction you'll see a settings screen, use it to choose the 'task categories' that fit your sissy needs to make the game as enjoyable as possible. After that, the game board will be randomly generated with the tasks that you've chosen. You can replay the game as many times as you want to and each time can be completely different from the last. Make sure you have everything required for the task categories, for example if you choose anal tasks to be present in the game, make sure you have your dildo(s) ready and that your little hole is ready for penetration. Same goes for other categories, for \"Chastity\" tasks you'll obviously need a chastity cage that fits your clitty, a butt plug for \"Plug\" tasks and so on. For \"Cum\" tasks you'll need some pre-saved (frozen) cum or some fake (edible) cum. Make sure that you are always safe and DO NOT do anything that you can't safely handle. Remember, it's just a game. All the dildo sizes are relative, so the big size might be completely different for you and for some other sissy. Also make sure you are safe and careful during all the bondage tasks. Don't go over the top and tie your hands the way so you won't be able to get free without someone's help for example. You can also choose how many sides the dice will have, that will define the largest number you can roll during the game. The larger the number, the faster you can move along the board. So, choose \"4\" if you want to play a nice long game and \"8\" if you want a quick one. Or something in-between depending what you want. During some of the tasks there will be a timer (you'll be able to see a bar at the top of the screen, that will fill up indicating how much time has passed) and a beat, make sure to match it whenever you hear it. Also, feel free to play some of your favorite porn on the background/another screen to get you in the right mood. I do not recommend you to play with your clitty, unless you are told to, so you don't accidentally cum before you are allowed to, but if you think you can handle it, feel free to do so (unless of course you have to wear a cage). If you do cum before you complete the game and earn your reward, you are not allowed to cum again until you complete the game 3 times on the dice setting \"4\" and timer set to \"3 min\"! Now you know the rules, let's begin! But if you still have any questions left, you can ask them on the {a=https://discord.gg/s2PNYZN}discord server{/a} or send me a message on {a=https://www.patreon.com/sissydreams}patreon{/a}." size (50 if SMALL else 37)
        vbar value YScrollValue("intro") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

screen intro1():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "intro1":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd} Hello there, sissy! I've created this game so you can have some fun, and do it the way {i}you{/i} like it. This is a simple \"board\" game, you roll the dice, move along the board and do the tasks you land on. There are two available game modes in the game: \"From Start to Finish\" mode and an \"Endless\" mode. If you choose to play \"From Start to Finish\" mode, you'll have to complete the tasks given to move along the board until you reach Finish. And if you fail to complete a task, you will be moved backwards. You have a reward waiting for you, if you make it to the end. And if you choose an \"Endless\" game mode, you'll be moving around the board over and over and you'll earn Game Points for completing the tasks that you land on (if you fail a task, some points will be removed). To complete the game you'll have to \"buy\" one of the endings presented in the \"Shop\", the more points you'll earn while you play, the better the ending you'll be able to get. After this introduction you'll see a settings screen, use it to choose the 'task categories' that fit your sissy needs to make the game as enjoyable as possible. And then, the game board will be randomly generated with the tasks that you've chosen. You can replay the game as many times as you want to and each time can be completely different from the last. Make sure you have everything required for the task categories, for example if you choose anal tasks to be present in the game, make sure you have your dildo(s) ready and that your little hole is ready for penetration. Same goes for other categories, for \"Chastity\" tasks you'll obviously need a chastity cage that fits your clitty, a butt plug for \"Plug\" tasks and so on. For \"Cum\" tasks you'll need some pre-saved (frozen) cum or some fake (edible) cum. " size (50 if SMALL else 37)
        vbar value YScrollValue("intro1") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

screen intro2():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "intro2":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd} Make sure that you are always safe and DO NOT do anything that you can't safely handle. Remember, it's just a game. All the dildo sizes are relative, so the big size might be completely different for you and for some other sissy. Also make sure you are safe and careful during all the bondage tasks. Don't go over the top and tie your hands the way so you won't be able to get free without someone's help for example. You can also choose how many sides the dice will have, that will define the largest number you can roll during the game. The larger the number, the faster you can move along the board. So, choose \"4\" if you want to play a nice long game and \"8\" if you want a quick one. Or something in-between depending what you want (irrelevant for the Endless mode). During some of the tasks there will be a timer (you'll be able to see a bar at the top of the screen, that will fill up, indicating how much time has passed) and a beat, make sure to match it whenever you hear it. Also, feel free to play some of your favorite porn on the background/another screen to get you in the right mood. I do not recommend you to play with your clitty, unless you are told to, so you don't accidentally cum before you are allowed to, but if you think you can handle it, feel free to do so (unless of course you have to wear a cage). Now you know the rules, let's begin! But if you still have any questions left, you can ask them on the {a=https://discord.gg/s2PNYZN}discord server{/a} or send me a message on {a=https://www.patreon.com/sissydreams}patreon{/a}. There is also a Tasks Editor in the game, if you'd like to add your own tasks or if you'd like to change any of the tasks that are present in the game." size (50 if SMALL else 37)
        vbar value YScrollValue("intro2") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

screen pl1win():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "pl1win":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd}Congratulations, [s1], you've won the game! Now, [s2] has to do anything you wish to help you reach an orgasm and you get to cum however and wherever you want. [s2], you have to eat every drop of [s1]'s cum if she wishes you to do so. Also you are not allowed to cum for the next 24 hours! And now, a small extra bonus for you, [s1], you get to choose a punishment for [s2] for being such a looser and she has to do it no matter what! You have three options to choose from: 1) [s2] has to spend the next 24 hours wearing a chastity cage; 2) she has to wear a butt plug for the next 12 hours; or 3) she has to wear panties during the day & night for the next 7 days. As soon as you choose a punishment for her, you can have your well deserved orgasm. You are a good sissy girl!" size (50 if SMALL else 37)
        vbar value YScrollValue("pl1win") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

screen pl2win():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "pl2win":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd}Congratulations, [s2], you've won the game! Now, [s1] has to do anything you wish to help you reach an orgasm and you get to cum however and wherever you want. [s1], you have to eat every drop of [s2]'s cum if she wishes you to do so. Also you are not allowed to cum for the next 24 hours! And now, a small extra bonus for you, [s2], you get to choose a punishment for [s1] for being such a looser and she has to do it no matter what! You have three options to choose from: 1) [s1] has to spend the next 24 hours wearing a chastity cage; 2) she has to wear a butt plug for the next 12 hours; or 3) she has to wear panties during the day & night for the next 7 days. As soon as you choose a punishment for her, you can have your well deserved orgasm. You are a good sissy girl!" size (50 if SMALL else 37)
        vbar value YScrollValue("pl2win") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

screen finish():
    add "task_box.png"
    side "c r":
        xalign 0.5
        yalign 0.5 yoffset -5
        viewport id "finish":
            draggable True
            mousewheel True
            side_xalign 0.5
            xsize 1690
            ymaximum 840
            xalign 0.5
            yalign 0.5
            text "{color=#f8f0fd}You're such a good girl, [s1], you've won the game! And you've earned your sweet reward! I hope you weren't cheating and completed the tasks properly ;) Now I want you to take your chastity cage off (if you are wearing one), lie on your back, flip your legs behind your head and fuck yourself really nice with your favourite dildo, trying to stimulate your p-spot as hard as possible. You can play with your little clitty if you can't cum from p-spot stimulation only. As soon as you feel that you are about to cum, open your mouth, stick your tongue out and try to catch all the yummy treat in your mouth. Start swallowing right away as soon as your warm, delicious cum hits your tongue, even if you haven't finished cumming yet! After you are done, make sure that you collect all the extra cum that didn't get into your mouth and swallow it all as well ;)" size (50 if SMALL else 37)
        vbar value YScrollValue("finish") xoffset 20 unscrollable "hide"
    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return()

style my_button is gui_button
style my_button1 is my_button

style my_button_text is gui_button_text:
    size 70
    idle_color "#f8f0fd"
    hover_color  "#d82980"

style my_button1_text is my_button_text:
    size 50

screen s1roll():
    add "roll_box.png"
    text "{color=#f8f0fd}Roll the dice, [s1]" size 130 xalign 0.5 yalign 0.5

screen s2roll():
    add "roll_box.png"
    text "{color=#f8f0fd}Roll the dice, [s2]" size 130 xalign 0.5 yalign 0.5

screen roll():
    add "roll_box.png"
    text "{color=#f8f0fd}Your roll is [roll]" size 130 xalign 0.5 yalign 0.5

screen one():
    add "roll_box.png"
    text "{color=#f8f0fd}." size 130 xalign 0.5 yalign 0.5

screen two():
    add "roll_box.png"
    text "{color=#f8f0fd}.." size 130 xalign 0.5 yalign 0.5

screen three():
    add "roll_box.png"
    text "{color=#f8f0fd}..." size 130 xalign 0.5 yalign 0.5

screen yourroll():
    add "roll_box.png"
    text "{color=#f8f0fd}You've landed on the [task] task!" size 70 xalign 0.5 yalign 0.5

screen task():
    add "task_box.png"
    text "{color=#f8f0fd}[tasktodo]" size 65 xalign 0.5 yalign 0.5 xmaximum 1700

screen aftertaskp1():
    add "task_box.png"
    text "{color=#f8f0fd}Have you been able to complete the task?" size 70 xalign 0.5 yalign 0.5
    textbutton  _("Yes"):
        style "my_button"
        xalign 0.4 yalign 0.65
        action Jump("yesp1")
    textbutton _("No"):
        style "my_button"
        xalign 0.6 yalign 0.65
        action Jump("nop1")

screen aftertaskp2():
    add "task_box.png"
    text "{color=#f8f0fd}Have you been able to complete the task?" size 70 xalign 0.5 yalign 0.5
    textbutton  _("Yes"):
        style "my_button"
        xalign 0.4 yalign 0.65
        action Jump("yesp2")
    textbutton _("No"):
        style "my_button"
        xalign 0.6 yalign 0.65
        action Jump("nop2")

screen timerdone():
    add "roll_box.png"
    text _("{color=#f8f0fd}{size=150}{b}Time's up!{/b}{/size}"):
        xalign .5 yalign .5

screen choosebg():

    default i = 1

    add "bg {}".format(i)

    textbutton _("Continue"):
        style "my_button1"
        xalign 0.5 yalign 0.965
        action Return(i)

    for ii in range(1, 10):
        imagebutton:
            focus_mask True
            idle "images/bt bg{}.png".format(ii)
            hover "images/bt bg{} h.png".format(ii)
            activate_sound "bt.ogg"
            action [SetScreenVariable("i", ii), With(dissolve)]

screen achievement:
    hbox xpos 50 ycenter 92 spacing 30:
        at transform:
            on show:
                alpha 0.
                easeout .5 alpha 1.
                .5
                easein .5 alpha 0.
                .5
                easeout .5 alpha 1.
                .5
                easein .5 alpha 0.
                .5
                easeout .5 alpha 1.
        add "images/star.png" yalign .5
        text "{color=#f8f0fd}[achievement] achievement unlocked!" size gui.text_size + 2 outlines [(absolute(1), "#000", absolute(0), absolute(0))] yalign .5

screen stats():
    tag menu

    use game_menu(_("Statistics")):

        style_prefix "stats"

        textbutton _("Reset Statistics") action [Confirm("Are you sure? You won't be able to undo this action.", [ResetStats(), With(dissolve)], With(dissolve)), With(dissolve)] align (.9, -.1)

        viewport id "stats":
            xoffset 40
            xsize 1310
            scrollbars "vertical"
            mousewheel True
            draggable True
            pagekeys True

            side_yfill True

            has vbox
            hbox:
                vbox xsize 800:
                    text "Tasks completed - "
                    text "Tasks failed - "
                    text "Normal games won - "
                    text "Endless games won - "
                    text "Endless games lost - "
                    text "Oral tasks completed - "
                    text "Body writing tasks completed - "
                    text "Dress up tasks completed - "
                    text "Fingering tasks completed - "
                    text "Hypno tasks completed - "
                    text "Edging tasks completed - "
                    text "Piss tasks completed - "
                    text "Make-up tasks completed - "
                    text "Bondage tasks completed - "
                    text "Humiliation tasks completed - "
                    text "Exposure tasks completed - "
                    text "Chastity tasks completed - "
                    text "Pain tasks completed - "
                    text "Anal tasks completed - "
                    text "Plug tasks completed - "
                    text "Cum tasks completed - "
                vbox:
                    style_prefix "stats1"
                    text "[persistent.stat_compltasks]"
                    text "[persistent.stat_faildtasks]"
                    text "[persistent.stat_strtfnsh_gamescompl]"
                    text "[persistent.stat_endls_gamescompl]"
                    text "[persistent.stat_endls_gameslost]"
                    text "[persistent.stat_compltasks_oral]"
                    text "[persistent.stat_compltasks_bodywriting]"
                    text "[persistent.stat_compltasks_dressup]"
                    text "[persistent.stat_compltasks_fingering]"
                    text "[persistent.stat_compltasks_hypno]"
                    text "[persistent.stat_compltasks_edging]"
                    text "[persistent.stat_compltasks_piss]"
                    text "[persistent.stat_compltasks_makeup]"
                    text "[persistent.stat_compltasks_bondage]"
                    text "[persistent.stat_compltasks_humiliation]"
                    text "[persistent.stat_compltasks_exposure]"
                    text "[persistent.stat_compltasks_chastity]"
                    text "[persistent.stat_compltasks_pain]"
                    text "[persistent.stat_compltasks_anal]"
                    text "[persistent.stat_compltasks_plug]"
                    text "[persistent.stat_compltasks_cum]"

style stats_text is gui_text:
    color "#e566a1"
    xalign 1.

style stats1_text is gui_text:
    color "#e5237d"

style stats_button is gui_button:
    padding (0, 0)
    idle_color "#f8f0fd"
    hover_color "#d82980"

style stats_vscrollbar:
    unscrollable "hide"

screen achievements():
    tag menu

    use game_menu(_("Achievements")):

        style_prefix "achievements"

        textbutton _("Reset Achievements") action [Confirm("Are you sure? You won't be able to undo this action.", [ResetAchievements(), With(dissolve)], With(dissolve)), With(dissolve)] align (.9, -.1)

        viewport id "achievements":
            xoffset 40
            xsize 1310
            scrollbars "vertical"
            mousewheel True
            draggable True
            pagekeys True

            side_yfill True

            has vbox
            vbox:
                if persistent.achivm_finish:
                    text "Finish Line - Reach Finish in a normal mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_locked:
                    text "Denied and Locked - Lose an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_denied:
                    text "That's What I Wanted - Choose \"Denied and Locked\" ending in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_ruin:
                    text "Not as Good but Still Nice - Purchase \"Ruined Orgasm\" ending in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_eatcum:
                    text "Yummy! - Purchase \"Time to cum in your mouth ;)\" ending in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_analcum:
                    text "Anal Whore - Purchase \Anal orgasm\" ending in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_howyoulike:
                    text "I Can Do Whatever I Want! - Purchase \Anal orgasm\" ending in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_randomend:
                    text "Feeling LUcky - Purchase \Random Ending\" in an Endless mode game." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_endls_shop_analorgasm:
                    text "True Sissy - Achieve an anal orgasm without touching your clitty." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_oral100:
                    text "Put It In My Mouth! - Complete 100 Oral tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_bodywriting100:
                    text "Written All Over - Complete 100 Body Writing tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_dressup100:
                    text "Dressed Up and Sexy - Complete 100 Dress Up tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_fingering100:
                    text "Can Fit All of Them Now - Complete 100 Fingering tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_hypno100:
                    text "Brainwashed - Complete 100 Hypno tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_edging100:
                    text "Sweet Torture - Complete 100 Edging tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_piss100:
                    text "I Love That Taste! - Complete 100 Piss tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_makeup100:
                    text "I'm So Pretty! - Complete 100 Make-Up tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_bondage100:
                    text "Hogtied - Complete 100 Bondage tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_humiliation100:
                    text "I'm a Dumb Sissy Whore - Complete 100 Humiliation tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_exposure100:
                    text "Look at Me! - Complete 100 Exposure tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_chastity100:
                    text "Locked up! - Complete 100 Chastity tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_pain100:
                    text "Masochist - Complete 100 Pain tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_anal100:
                    text "Breed Me! - Complete 100 Anal tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_plug100:
                    text "Plugged! - Complete 100 Plug tasks." style "achievements1_text"
                else:
                    text "Locked"

                if persistent.achivm_cum100:
                    text "Cumslut - Complete 100 Cum tasks." style "achievements1_text"
                else:
                    text "Locked"

style achievements_text is gui_text:
    color "#e566a1"

style achievements1_text is gui_text:
    color "#e5237d"

style achievements_button is gui_button:
    padding (0, 0)
    idle_color "#f8f0fd"
    hover_color "#d82980"

style achievements_vscrollbar:
    unscrollable "hide"

screen msg(prompt, called=False):
    modal True

    if called:
        default action = [Return(), With(dissolve)]
    else:
        default action = [Hide("msg"), With(dissolve)]

    style_prefix "msg"

    fixed:
        at transform:
            on show:
                alpha 0.
                linear .5 alpha 1.
        
        add "gui/overlay/confirm.png"

        frame:

            vbox:
                label _(prompt) style "msg_prompt"

                hbox:
                    align(.5,1.)
                    spacing 50

                    textbutton _("OK"):
                        action action

    timer 3  action action

    key "game_menu" action action

style msg_frame is gui_frame
style msg_vbox is gui_vbox
style msg_prompt is gui_prompt
style msg_prompt_text is gui_prompt_text

style msg_frame:
    background Frame(["gui/confirm_frame.png", "gui/frame.png"], gui.confirm_frame_borders, tile=gui.frame_tile)
    padding gui.confirm_frame_borders.padding
    xalign .5
    yalign .5
    xmaximum config.screen_width / 4 * 3

style msg_vbox:
    xalign .5
    yalign .5
    spacing 25

style msg_prompt:
    xalign 0.5

style msg_prompt_text:
    text_align 0.5
    layout "subtitle"
