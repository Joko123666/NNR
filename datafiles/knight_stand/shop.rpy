label shop:
    hide screen bt_roll
    hide screen bt_shop

    menu:
        "Take a break":
            "Tired, ha?"
            "Well... you could take a break then, but it's not free..."
            label shop_break:
                menu:
                    "15 minutes":
                        if inf_game_mode == 1:
                            "It will cost you 50 points."
                        if inf_game_mode == 2:
                            "It will cost you 100 points."
                        if inf_game_mode == 3:
                            "It will cost you 200 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 50:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 50

                                if inf_game_mode == 2:
                                    if pnts < 100:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 100

                                if inf_game_mode == 3:
                                    if pnts < 200:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 200

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "30 minutes":
                        if inf_game_mode == 1:
                            "It will cost you 80 points."
                        if inf_game_mode == 2:
                            "It will cost you 160 points."
                        if inf_game_mode == 3:
                            "It will cost you 320 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 80:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 80

                                if inf_game_mode == 2:
                                    if pnts < 160:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 160

                                if inf_game_mode == 3:
                                    if pnts < 320:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 320

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "1 hour":
                        if inf_game_mode == 1:
                            "It will cost you 100 points."
                        if inf_game_mode == 2:
                            "It will cost you 200 points."
                        if inf_game_mode == 3:
                            "It will cost you 400 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 100:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 100

                                if inf_game_mode == 2:
                                    if pnts < 200:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 200

                                if inf_game_mode == 3:
                                    if pnts < 400:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 400

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "2 hours":
                        if inf_game_mode == 1:
                            "It will cost you 150 points."
                        if inf_game_mode == 2:
                            "It will cost you 300 points."
                        if inf_game_mode == 3:
                            "It will cost you 600 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 150:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 150

                                if inf_game_mode == 2:
                                    if pnts < 300:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 300

                                if inf_game_mode == 3:
                                    if pnts < 600:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 600

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "5 hours":
                        if inf_game_mode == 1:
                            "It will cost you 300 points."
                        if inf_game_mode == 2:
                            "It will cost you 600 points."
                        if inf_game_mode == 3:
                            "It will cost you 1200 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 300:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 300

                                if inf_game_mode == 2:
                                    if pnts < 600:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 600

                                if inf_game_mode == 3:
                                    if pnts < 1200:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 1200

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "10 hours":
                        if inf_game_mode == 1:
                            "It will cost you 500 points."
                        if inf_game_mode == 2:
                            "It will cost you 1000 points."
                        if inf_game_mode == 3:
                            "It will cost you 2000 points."
                        menu:
                            "Would you like to pay for it?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 500:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 500

                                if inf_game_mode == 2:
                                    if pnts < 1000:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 1000

                                if inf_game_mode == 3:
                                    if pnts < 2000:
                                        "You don't have enough points."
                                        jump shop_break
                                    else:
                                        $ pnts -= 2000

                                "Great! Enjoy your brake ;)"
                                "Make sure to set a timer on your phone, so you don't exceed the allowed break time."
                                jump game_inf
                            "No":
                                jump shop_break
                    "Return":
                        jump shop
        "End the game":
            label shop_end:
                menu:
                    "Here are some options for you..."
                    "Denied and locked!":
                        "This one is free!"
                        "...at least you don't need any points to get this ending..."
                        if inf_game_mode == 1:
                            "But you get locked in your chastity cage for 7 days straight as a punishment."
                        if inf_game_mode == 2:
                            "But you get locked in your chastity cage for 14 days straight as a punishment."
                        if inf_game_mode == 3:
                            "But you get locked in your chastity cage for 21 days straight as a punishment."
                        "So this option is basically the same as losing the game."
                        menu:
                            "Would you like to choose this option?"
                            "Yes":
                                "Well... It's your choice..."
                                "Maybe you'll manage to beat the game next time..."
                                "But for now, you have to lock up your clitty a while..."
                                if persistent.achivm_endls_shop_denied == False:
                                    $ persistent.achivm_endls_shop_denied = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"That's what I wanted\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "I'm sure by the end of chastity sentence you'll be really hungry for cock ;)"
                                "GAME OVER"
                                return
                            "No":
                                jump shop_end
                    "Ruined orgasm":
                        "Not as satisfying as a full orgasm, but still quiet a nice way to end the game."
                        "And as a bonus, you'll get to eat some tasty cum!"
                        if inf_game_mode == 1:
                            "This ending will cost you 500 points."
                        if inf_game_mode == 2:
                            "This ending will cost you 1000 points."
                        if inf_game_mode == 3:
                            "This ending will cost you 2000 points."
                        "Also, make sure your clitty isn't locked, otherwise you can't choose this ending."
                        "If it is locked up, you need to let it free first..."
                        "Just buy an option that allows you to take the cage off."
                        menu:
                            "Would you like to buy this ending?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 500:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 500

                                if inf_game_mode == 2:
                                    if pnts < 1000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 1000

                                if inf_game_mode == 3:
                                    if pnts < 2000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 2000

                                if persistent.achivm_endls_shop_ruin == False:
                                    $ persistent.achivm_endls_shop_ruin = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"Not as good, but still nice\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "Great! you can do this in any position you wish."
                                "Just make sure you eat all the delicious cum ;)"
                                "I'd suggest you to flip your legs behind your head while lying on your back and ruin it right into your mouth ;)"
                                "Also make sure accidentally not to achieve a full orgasm!"
                                if inf_game_mode == 1:
                                    "If that'll happen, you have to eat all the cum and lock up your useless clitty for the next 7 days!"
                                if inf_game_mode == 2:
                                    "If that'll happen, you have to eat all the cum and lock up your useless clitty for the next 14 days!"
                                if inf_game_mode == 3:
                                    "If that'll happen, you have to eat all the cum and lock up your useless clitty for the next 21 days!"
                                "Good luck! Now you can enjoy your riuned ending!"
                                "See you next time ;)"
                                $ persistent.stat_endls_gamescompl += 1
                                return
                            "No":
                                jump shop_end
                    "Time to cum in your mouth ;)":
                        "This one might be the best option!"
                        "You get to enjoy a full release and a full mouth of delicious cum!"
                        "But this option isn't cheap."
                        if inf_game_mode == 1:
                            "This ending will cost you 1500 points."
                        if inf_game_mode == 2:
                            "This ending will cost you 3000 points."
                        if inf_game_mode == 3:
                            "This ending will cost you 6000 points."
                        "Also, make sure your clitty isn't locked, otherwise you can't choose this ending."
                        "If it is locked up, you need to let it free first..."
                        "Just buy an option that allows you to take the cage off."
                        menu:
                            "Would you like to buy this ending?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 1500:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 1500

                                if inf_game_mode == 2:
                                    if pnts < 3000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 3000

                                if inf_game_mode == 3:
                                    if pnts < 6000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 6000

                                if persistent.achivm_endls_shop_eatcum == False:
                                    $ persistent.achivm_endls_shop_eatcum = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"Yummy!\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "Great choice!"
                                "I'm sure you'll love it!"
                                "Now I want you to lie on your back and flip your legs behind your head. so you clitty is pointed right at your open mouth."
                                "You can even turn on some of you favourite oral creampie porn if you wish ;)"
                                "And have fun!"
                                "But as soon as the first drop of cum will hit your tongue, I want you to start swallowing."
                                "I'm sure you are a good girl and you don't want to disappoint me..."
                                "Because if you don't swallow all the tasty cum, you'll get punished..."
                                if inf_game_mode == 1:
                                    "And you'll have to lock up your useless clitty for the next 7 days!"
                                if inf_game_mode == 2:
                                    "And you'll have to lock up your useless clitty for the next 14 days!"
                                if inf_game_mode == 3:
                                    "And you'll have to lock up your useless clitty for the next 21 days!"
                                "So it's better to be a good sissy girl and just eat everything, especially considering how tasty the cum is!"
                                "Now have fun! Congratulations on completing the game!"
                                $ persistent.stat_endls_gamescompl += 1
                                return
                            "No":
                                jump shop_end
                    "Anal orgasm":
                        "This one is fun!"
                        "But it's for experienced sissies."
                        "If you choose this option, you should be able to cum from anal stimulation only."
                        "So, no touching your clitty at all! You aren't even allowed to rub it like a girl!"
                        "You will be given 15 minutes to achieve an orgasm and you can fuck your sissy pussy during this time however you like."
                        "But if you won't manage to cum, you'll have to continue playing the game."
                        "Also, it doesn't matter if you are locked up in the chastity or not, you can proceed either way."
                        "But if you enjoy the feeling of your clitty flipping around while you ride the dildo, but you are wearing a cage now, you are not allowed to just take it off."
                        "You can only do it if you purchase an option that allows you to take the cage off."
                        menu:
                            "Would you like to buy this ending?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 500:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 500

                                if inf_game_mode == 2:
                                    if pnts < 1000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 1000

                                if inf_game_mode == 3:
                                    if pnts < 2000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 2000

                                if persistent.achivm_endls_shop_analcum == False:
                                    $ persistent.achivm_endls_shop_analcum = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"Anal Whore\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "Get ready! The timer will start now!"
                                show timebar:
                                    xpos -1.
                                pause 0.0
                                play sound "tick.ogg"
                                pause 1.5
                                show timebar:
                                    xpos 0.
                                with MoveTransition(900.0)
                                stop music
                                play sound "timerdone.ogg"
                                hide timebar
                                show screen timerdone

                                pause
                                hide screen timerdone
                                menu:
                                    "Have you achieved an orgasm?"
                                    "Yes":
                                        menu:
                                            "Have you touched your clitty while you fucked yourself?"
                                            "Yes":
                                                "Bad sissy!"
                                                "I want you to lick up all the cum that you've squirted right now!"
                                                if inf_game_mode == 1:
                                                    "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 7 days as a punishment."
                                                if inf_game_mode == 2:
                                                    "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 14 days as a punishment."
                                                if inf_game_mode == 3:
                                                    "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 21 days as a punishment."
                                                "Maybe this way you'll learn what \"No Touching\" means!"
                                                "GAME OVER"
                                                $ persistent.stat_endls_gamescompl += 1
                                                return
                                            "No":
                                                "Good girl!"
                                                "You are a true sissy!"
                                                if persistent.achivm_endls_shop_analorgasm == False:
                                                    $ persistent.achivm_endls_shop_analorgasm = True
                                                    with dissolve
                                                    play sound "achievement.ogg"
                                                    $ achievement = "\"True Sissy\""
                                                    show screen achievement
                                                    pause
                                                    hide screen achievement
                                                    with dissolve
                                                "Also, even though it's not required... if you wish to show what a good girl you are even more, feel free to lick up all the cum that you've squirted ;)"
                                                "Congratulations on completing the game!"
                                                "See you next time :3"
                                                $ persistent.stat_endls_gamescompl += 1
                                                return
                                    "No":
                                        "Don't worry! At least you've had so much time to enjoy uninterrupted fucking ;)"
                                        "Maybe next time you'll manage to cum this way."
                                        "And to encourage your attempts, I'll give you back some of the points that you've spent!"
                                        if inf_game_mode == 1:
                                            "+100 points!"
                                            $ pnts += 100
                                        if inf_game_mode == 2:
                                            "+200 points!"
                                            $ pnts += 200
                                        if inf_game_mode == 3:
                                            "+400 points!"
                                            $ pnts += 400
                                        "Now back to the game."
                                        jump game_inf
                            "No":
                                jump shop_end
                    "Cum however you like":
                        "This one is the most expensive! But you'll get to cum however you like!"
                        if inf_game_mode == 1:
                            "This ending will cost you 2500 points."
                        if inf_game_mode == 2:
                            "This ending will cost you 5000 points."
                        if inf_game_mode == 3:
                            "This ending will cost you 10000 points."
                        "Also, make sure your clitty isn't locked, otherwise you can't buy this ending."
                        "If it is locked up, you need to let it free first..."
                        "Just buy an option that allows you to take the cage off."
                        menu:
                            "Would you like to buy this ending?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 2500:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 2500

                                if inf_game_mode == 2:
                                    if pnts < 5000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 5000

                                if inf_game_mode == 3:
                                    if pnts < 10000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 10000

                                if persistent.achivm_endls_shop_howyoulike == False:
                                    $ persistent.achivm_endls_shop_howyoulike = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"I Can Do Whatever I Want!\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "Wow! I bed you've spent quite a while gaining all those points!"
                                "So you've surely deserved your sweet release!"
                                "Have fun! See you next time ;)"
                                $ persistent.stat_endls_gamescompl += 1
                                return
                            "No":
                                jump shop_end
                    "Random ending":
                        "This one is tricky..."
                        "You spend a bit more than you'd spend for a ruined orgasm or anal orgasm ending, but a bit less than cum eating ending..."
                        "And for those points you'll roll for one of the above endings."
                        "It can be any of those, including the denial one... or the one that lets you to cum however you like..."
                        "So... Would you like to test you luck?"
                        if inf_game_mode == 1:
                            "This ending will cost you 1000 points."
                        if inf_game_mode == 2:
                            "This ending will cost you 2000 points."
                        if inf_game_mode == 3:
                            "This ending will cost you 4000 points."
                        menu:
                            "Would you like to buy this ending?"
                            "Yes":
                                if inf_game_mode == 1:
                                    if pnts < 1000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 1000

                                if inf_game_mode == 2:
                                    if pnts < 2000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 2000

                                if inf_game_mode == 3:
                                    if pnts < 4000:
                                        "You don't have enough points."
                                        jump shop
                                    else:
                                        $ pnts -= 4000

                                "Nice!"
                                if persistent.achivm_endls_shop_randomend == False:
                                    $ persistent.achivm_endls_shop_randomend = True
                                    play sound "achievement.ogg"
                                    $ achievement = "\"Feeling Lucky!\""
                                    show screen achievement
                                    pause
                                    hide screen achievement
                                    with dissolve
                                "Now the momet of truth..."
                                "..."
                                $ random_ending = renpy.random.randint(1,5)
                                if random_ending == 1:
                                    "Oof! Denied and locked!"
                                    "Surely, not the one you were hoping for..."
                                    "But think about this... How horny will you be when you finish your chastity sentence?"
                                    if inf_game_mode == 1:
                                        "So now, you need to take your cage and lock up your useless clitty for the next 7 days."
                                    if inf_game_mode == 2:
                                        "So now, you need to take your cage and lock up your useless clitty for the next 14 days."
                                    if inf_game_mode == 3:
                                        "So now, you need to take your cage and lock up your useless clitty for the next 21 days."
                                    "Better luck next time ;)"
                                    "GAME OVER"

                                    return
                                if random_ending == 2:
                                    "Ruin an orgasm"
                                    "Might not be the best of all the options, but still fun!"
                                    "You can ruin your orgasm in any position you like, but there is one condition..."
                                    "You have to eat all the creamy treat that will get out of your clitty!"
                                    "So, I suggest you to flip your legs behind your head, so the clitty is pointing right at your open mouth and ruin it ;)"
                                    "Remember, if you don't eat everything or you accidentally have a full orgasm instead of ruining it, you will be punished!"
                                    if inf_game_mode == 1:
                                        "And you'll have to lock up your useless clitty for the next 7 days."
                                    if inf_game_mode == 2:
                                        "And you'll have to lock up your useless clitty for the next 14 days."
                                    if inf_game_mode == 3:
                                        "And you'll have to lock up your useless clitty for the next 21 days."
                                    "So be a good girl and do everything right!"
                                    "Have fun! See you next time :)"
                                    $ persistent.stat_endls_gamescompl += 1
                                    return
                                if random_ending == 3:
                                    "Time to cum in your mouth ;)"
                                    "Lucky you! Getting a full release and a full mouth of delicious cum!"
                                    "Now I want you to lay on your back, flip your legs behind your head, so your little clitty is pointing right at your open mouth."
                                    "And then enjoy your sweet release!"
                                    "But make sure to eat all the yummy treat like a good sissy girl you are!"
                                    if inf_game_mode == 1:
                                        "Because if you don't eat everything, you'll have to lock up your useless clitty for the next 7 days."
                                    if inf_game_mode == 2:
                                        "Because if you don't eat everything, you'll have to lock up your useless clitty for the next 14 days."
                                    if inf_game_mode == 3:
                                        "Because if you don't eat everything, you'll have to lock up your useless clitty for the next 21 days."
                                    "But I'm sure you are a good girl and will do everything right!"
                                    "Have fun! See you next time!"
                                    $ persistent.stat_endls_gamescompl += 1
                                    return
                                if random_ending == 4:
                                    "Anal orgasm"
                                    "This one is challanging and not every sissy can do it..."
                                    "But it's still fun to try!"
                                    "Here is how it will go..."
                                    "You'll have a timer set for 15 minutes and during this time, you can fuck yourself however you like!"
                                    "But make sure NOT to touch your clitty! Even rubbing like a girl is not allowed."
                                    "If you have troubles with self-control, you can always lock it up ;)"
                                    "If you do cum from all the fucking that you'll get - congratulations, you win the game."
                                    "And if you don't cum during the 15 minutes that I'll give you, you'll have to continue playing the game."
                                    "Get ready! The timer will start now!"
                                    show timebar:
                                        xpos -1.
                                    pause 0.0
                                    play sound "tick.ogg"
                                    pause 1.5
                                    show timebar:
                                        xpos 0.
                                    with MoveTransition(900.0)
                                    stop music
                                    play sound "timerdone.ogg"
                                    hide timebar
                                    show screen timerdone

                                    pause
                                    hide screen timerdone
                                    menu:
                                        "Have you achieved an orgasm?"
                                        "Yes":
                                            menu:
                                                "Have you touched your clitty while you fucked yourself?"
                                                "Yes":
                                                    "Bad sissy!"
                                                    "I want you to lick up all the cum that you've squirted right now!"
                                                    if inf_game_mode == 1:
                                                        "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 7 days as a punishment."
                                                    if inf_game_mode == 2:
                                                        "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 14 days as a punishment."
                                                    if inf_game_mode == 3:
                                                        "As sonn as you're finished with your meal, I want you to lock up your clitty for the next 21 days as a punishment."
                                                    "Maybe this way you'll learn what \"No Touching\" means!"
                                                    "GAME OVER"
                                                    $ persistent.stat_endls_gamescompl += 1
                                                    return
                                                "No":
                                                    "Good girl!"
                                                    "You are a true sissy!"
                                                    "Also, even though it's not required... if you wish to show what a good girl you are even more, feel free to lick up all the cum that you've squirted ;)"
                                                    "Congratulations on completing the game!"
                                                    "See you next time :3"
                                                    $ persistent.stat_endls_gamescompl += 1
                                                    return
                                        "No":
                                            "Don't worry! At least you've had so much time to enjoy uninterrupted fucking ;)"
                                            "Maybe next time you'll manage to cum this way."
                                            "Now back to the game."
                                            jump game_inf
                                if random_ending == 5:
                                    "Cum however you like"
                                    "Wow! Lucky you! This wasn't such a bad idea to roll for a random ending after all..."
                                    "Now you can enjoy your sweet release however you like!"
                                    "Have fun! See you next time :3"
                                    $ persistent.stat_endls_gamescompl += 1
                                    return
                            "No":
                                jump shop_end
                    "Return":
                        jump shop
        "Take the chastity off":
            "If you buy this option, you can take off the chastity."
            if inf_game_mode == 1:
                "But it will cost you 150 points."
            if inf_game_mode == 2:
                "But it will cost you 300 points."
            if inf_game_mode == 3:
                "But it will cost you 600 points."
            "Would you like to buy it?"
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 150:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 150

                    if inf_game_mode == 2:
                        if pnts < 300:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 300

                    if inf_game_mode == 3:
                        if pnts < 600:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 600

                    "You can take it off now ;)"
                    jump game_inf
                "No":
                    jump shop
        "Take one clothing item off":
            "If you buy this option, you can take off any clothing item that you are required to wear because of a task."
            if inf_game_mode == 1:
                "It will cost you 50 points."
            if inf_game_mode == 2:
                "It will cost you 100 points."
            if inf_game_mode == 3:
                "It will cost you 200 points."
            "Would you like to buy it?"
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 50:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 50

                    if inf_game_mode == 2:
                        if pnts < 100:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 100

                    if inf_game_mode == 3:
                        if pnts < 200:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 200

                    "You can take ONE clothing item off."
                    jump game_inf
                "No":
                    jump shop
        "Remove a bondage item":
            "If you buy this option, you can take off any bondage item that you are required to wear because of a task."
            if inf_game_mode == 1:
                "It will cost you 50 points."
            if inf_game_mode == 2:
                "It will cost you 100 points."
            if inf_game_mode == 3:
                "It will cost you 200 points."
            "Would you like to buy it?"
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 50:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 50

                    if inf_game_mode == 2:
                        if pnts < 100:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 100

                    if inf_game_mode == 3:
                        if pnts < 200:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 200

                    "You can take ONE bondage item off."
                    jump game_inf
                "No":
                    jump shop
        "Edge":
            "You can choose this option only if you are not wearing a cage."
            "If you choose it, you'll have one minute for you to edge."
            "You can edge once and then you have to continue playing the game."
            "If you won't be able to edge during the time that you'll have, you won't get your points back."
            "Would you like to try?"
            if inf_game_mode == 1:
                "One attempt will cost you 50 points."
            if inf_game_mode == 2:
                "One attempt will cost you 100 points."
            if inf_game_mode == 3:
                "One attempt will cost you 200 points."
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 50:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 50

                    if inf_game_mode == 2:
                        if pnts < 100:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 100

                    if inf_game_mode == 3:
                        if pnts < 200:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 200

                    "Get ready, the timer will start now..."
                    show timebar:
                        xpos -1.
                    pause 0.0
                    play sound "tick.ogg"
                    pause 1.5
                    show timebar:
                        xpos 0.
                    with MoveTransition(60.0)
                    stop music
                    play sound "timerdone.ogg"
                    hide timebar
                    show screen timerdone

                    pause
                    hide screen timerdone
                    "Now back to playing the game."
                    jump game_inf
                "No":
                    jump shop
        "Ruined orgasm":
            "If you'll choose to buy this option, you'll have 1 minute to ruin your orgasm."
            "If you fail, you won't get your points back and you'll have to continue playing the game."
            "And if you succeed, you'll have to eat all the yummy treat that will come out of your clitty and continue playing the game."
            "You can NOT choose this option if you are locked in a chastity cage!"
            if inf_game_mode == 1:
                "Would you like to try? It will cost you 250 points."
            if inf_game_mode == 2:
                "Would you like to try? It will cost you 500 points."
            if inf_game_mode == 3:
                "Would you like to try? It will cost you 1000 points."
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 250:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 250

                    if inf_game_mode == 2:
                        if pnts < 500:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 500

                    if inf_game_mode == 3:
                        if pnts < 1000:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 1000

                    "Great!"
                    "Get ready, the timer will start now..."
                    show timebar:
                        xpos -1.
                    pause 0.0
                    play sound "tick.ogg"
                    pause 1.5
                    show timebar:
                        xpos 0.
                    with MoveTransition(60.0)
                    stop music
                    play sound "timerdone.ogg"
                    hide timebar
                    show screen timerdone

                    pause
                    hide screen timerdone
                    menu:
                        "Have you managed to have a ruined orgasm?"
                        "Yes":
                            "Good girl!"
                            "Now I want you to eat all the yummy cream that you managed to get from your little clitty ;)"
                            "I'm sure you love the taste!"
                            "When you're done with your little meal, continue playing the game."
                            jump game_inf
                        "No":
                            "Well... At least you could play with your clitty for the whole minute ;) Better luck next time!"
                            "Now get back to playing the game!"
                            jump game_inf
                        "I accidentally had a full orgasm":
                            "Bad sissy! You better make sure you are eating all the cum!"
                            "And after you've finished eating it, take your chastity cage and lock your little clitty up!"
                            "You have to stay locked for the next 7 days as a punishment!"
                            "GAME OVER"
                            return
                "No":
                    jump shop
        "Feeling lucky":
            "With this option you can get a chance to edge, ruin an orgasm or get locked for 10 rolls (you are not allowed to purchase this option while wearing a cage)."
            "But the chances that you'll be allowed to edge are quite low and that you'll be allowed to ruin an orgasm are even less, so most probably you'll end up locked for 10 rolls."
            "But if you are feeling lucky and ready to risk it, feel free to try! Especially that the price for this option is quite low ;)"
            if inf_game_mode == 1:
                "Would you like to try? It will cost you 100 points."
            if inf_game_mode == 2:
                "Would you like to try? It will cost you 200 points."
            if inf_game_mode == 3:
                "Would you like to try? It will cost you 400 points."
            menu:
                "Yes":
                    if inf_game_mode == 1:
                        if pnts < 100:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 100

                    if inf_game_mode == 2:
                        if pnts < 200:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 200

                    if inf_game_mode == 3:
                        if pnts < 1000:
                            "You don't have enough points."
                            jump shop
                        else:
                            $ pnts -= 400

                    "Great!"
                    "Let's see how lucky are you..."
                    $ luckyroll = renpy.random.randint(1,15)
                    if luckyroll == 1 or luckyroll == 2 or luckyroll == 3 or luckyroll == 4 or luckyroll == 5 or luckyroll == 6 or luckyroll == 7 or luckyroll == 8 or luckyroll == 9 or luckyroll == 10:
                        "Haha! Time to lock up that useless thingy between your legs!"
                        "You have to wear the cage for 10 rolls!"
                        jump game_inf
                    if luckyroll == 11 or luckyroll == 12 or luckyroll == 13 or luckyroll == 14:
                        "You got lucky this time!"
                        "You are allowed to edge once and then you have to continue playing the game."
                        jump game_inf
                    if luckyroll == 15:
                        "Wow! You muct be really lucky!"
                        "You get to ruin your orgasm!"
                        "But there is one condition..."
                        "You have to eat everything that comes out of your tiny clit! Haha!"
                        "After you've finished, get back to playing the game."
                        jump game_inf
                "No":
                    jump shop
        "Return":
            jump game_inf
