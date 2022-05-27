#the66
default preferences.skip_unseen = True
default preferences.show_empty_window = False
define config.autosave_slots = 30
define config.quicksave_slots = 30
define config.autosave_on_choice = True
define config.hw_video = False
define config.developer = True
define config.autoreload = False
init -5:
    define SMALL = renpy.variant("small")
    define TOUCH = renpy.variant("touch")
    define ANDROID = renpy.variant("android")
    define P1080 = True














define config.name = _("Sissy Trainer")





define gui.show_name = True




define config.version = "0.3.1"





define gui.about = _p("""
""")






define build.name = "SissyTrainer"







define config.has_sound = True
define config.has_music = True
define config.has_voice = True
























define config.enter_transition = dissolve
define config.exit_transition = dissolve




define config.intra_transition = dissolve




define config.after_load_transition = None




define config.end_game_transition = None
















define config.window = "auto"




define config.window_show_transition = Dissolve(.2)
define config.window_hide_transition = Dissolve(.2)







default preferences.text_cps = 0





default preferences.afm_time = 15
















define config.save_directory = "SissyTrainer-1585654884"






define config.window_icon = "gui/window_icon.png"






init python:




















    build.classify('**~', None)
    build.classify('**.bak', None)
    build.classify('**/.**', None)
    build.classify('**/#**', None)
    build.classify('**/thumbs.db', None)
    build.classify('game/**.rpyc', 'archive')
    build.classify('game/**.png', 'archive')
    build.classify('game/**.ogg', 'archive')









    build.documentation('*.html')
    build.documentation('*.txt')
# Decompiled by unrpyc: https://github.com/CensoredUsername/unrpyc
