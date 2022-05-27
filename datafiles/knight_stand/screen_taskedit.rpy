init python:
    _inp_e = False

    config.quit_action = Quit(confirm=(True if not main_menu or renpy.get_screen("task_ed_main") else False))

    @renpy.pure
    class _TaskInputValueAction(Action, FieldEquality):
        identity_fields = [ "input_value" ]
        equality_fields = [ "action" ]

        def __init__(self, input_value, action):
            self.input_value = input_value
            self.action = action

        def __call__(self):

            current, editable = renpy.get_editable_input_value()

            if self.action == "enable":

                renpy.set_editable_input_value(self.input_value, True)

                setattr(store, "_inp_e", True)

            elif self.action == "disable":

                if current is self.input_value:
                    renpy.set_editable_input_value(self.input_value, False)

                setattr(store, "_inp_e", False)

            elif self.action == "toggle":

                if current is self.input_value and editable:
                    renpy.set_editable_input_value(self.input_value, False)
                else:
                    renpy.set_editable_input_value(self.input_value, True)

                setattr(store, "_inp_e", not _inp_e)

            renpy.restart_interaction()

        def get_selected(self):

            current, editable = renpy.get_editable_input_value()

            rv = (current is self.input_value) and editable

            if self.action == "disable":
                rv = not rv

            return rv

    @renpy.pure
    class TaskInputValue(InputValue, DictEquality):
        def __init__(self):
            self.default = False
            self.init()

        def init(self):
            scr = renpy.get_screen("task_ed_main")
            if scr:
                self.tsk = scr.scope.get("tsk", "")
                if self.tsk is None:
                    self.tsk = ""
                else:
                    self.tsk = self.tsk.replace(" ", "").replace("-", "")
                self.slt = scr.scope.get("slt", "")
            else:
                self.tsk = self.slt = ""

        def get_text(self):
            self.init()
            if self.tsk and self.slt:
                return getattr(persistent, "{}{}".format(self.tsk, self.slt))
            else:
                return ""

        def set_text(self, s):
            s_ = s.strip()
            setattr(persistent, "t{}{}".format(self.tsk, self.slt), (True if s_ else False))
            setattr(persistent, "{}{}".format(self.tsk, self.slt), unicode(s))

        def enter(self):
            setattr(persistent, "{}{}".format(self.tsk, self.slt), getattr(persistent, "{}{}".format(self.tsk, self.slt)).strip())
            setattr(store, "_inp_e", False)
            renpy.run(self.Disable())
            raise renpy.IgnoreEvent()
            renpy.restart_interaction()

        def Toggle(self):
            setattr(persistent, "{}{}".format(self.tsk, self.slt), getattr(persistent, "{}{}".format(self.tsk, self.slt)).strip())
            if self.editable:
                return _TaskInputValueAction(self, "toggle")
            else:
                return None

    @renpy.pure
    class SetCell(Action):
        def __init__(self, idx, val):
            self.idx = idx
            self.val = val

        def __call__(self):
            global cell_description

            cell_description.__setitem__(self.idx, self.val)

            renpy.restart_interaction()

        def get_selected(self):
            global cell_description

            return cell_description.__getitem__(self.idx) ==  self.val

screen task_ed_main():

    modal True

    default tsk = "oral"
    default slt = "01"

    style_prefix "task_ed_main"

    add "bg 1 3"

    hbox:
        pos (205, 730) yanchor 1.
        for t in ["oral", "body writing", "dress up", "fingering", "hypno", "edging", "piss", "make-up", "bondage"]:
            imagebutton auto "images/ed_{}_%s.png".format(t) action [SelectedIf(tsk == t), SetScreenVariable("tsk", t)] sensitive not _inp_e

    vbox:
        pos (35, 730) yanchor 1.
        for t in ["humiliation", "exposure", "chastity", "pain"]:
            imagebutton auto "images/ed_{}_%s.png".format(t) action [SelectedIf(tsk == t), SetScreenVariable("tsk", t)] sensitive not _inp_e

    vbox:
        pos (1885, 730) xanchor 1. yanchor 1.
        for t in ["anal", "plug", "cum"]:
            imagebutton auto "images/ed_{}_%s.png".format(t) action [SelectedIf(tsk == t), SetScreenVariable("tsk", t)] sensitive not _inp_e
        imagebutton auto "images/ed_couple_%s.png" action NullAction() sensitive False

    hbox:
        style "task_ed_main_hbox1"
        xalign .5
        ypos 750
        for s in range(1, 18):
            $ s_ = "{:02d}".format(s)
            textbutton s_ action [SelectedIf(slt == s_), SetScreenVariable("slt", s_)] sensitive not _inp_e

    hbox:
        style "task_ed_main_hbox1"
        xalign .5
        ypos 855
        for s in range(18, 34):
            $ s_ = "{:02d}".format(s)
            textbutton s_ action [SelectedIf(slt == s_), SetScreenVariable("slt", s_)] sensitive not _inp_e

    hbox:
        style "task_ed_main_hbox1"
        xalign .5
        ypos 960
        for s in range(34, 51):
            $ s_ = "{:02d}".format(s)
            textbutton s_ action [SelectedIf(slt == s_), SetScreenVariable("slt", s_)] sensitive not _inp_e

    use task_ed_task(tsk, slt)

style task_ed_main_hbox is gui_hbox:
    spacing 20

style task_ed_main_vbox is gui_vbox:
    spacing 20

style task_ed_main_hbox1 is task_ed_main_hbox:
    spacing 5

style task_ed_main_button is gui_button:
    xysize (100, 100)
    padding (0, 0)
    idle_background Frame("ed_idle.png", Borders(5, 5, 5, 5))
    hover_background Frame("ed_hover.png", Borders(5, 5, 5, 5))
    selected_idle_background Frame("ed_selected_idle.png", Borders(5, 5, 5, 5))
    insensitive_background Frame("ed_insensitive.png", Borders(5, 5, 5, 5))

style task_ed_main_button_text is gui_button_text:
    align (.5, .5)
    selected_color "#e75080"

style task_ed_main_text is gui_text

screen task_ed_task(tsk, slt):

    default tsk_i = TaskInputValue()

    python:
        from string import capwords as capwords

        tsk_u = capwords(tsk)
        if tsk is None:
            tsk_ = ""
        else:
            tsk_ = tsk.replace(" ", "").replace("-", "")
        beat = getattr(persistent, "m{}{}".format(tsk_, slt))
        timer = getattr(persistent, "tmr{}{}".format(tsk_, slt))
        active = getattr(persistent, "t{}{}".format(tsk_, slt))

        if renpy.context()._menu:
            action = [Hide("task_ed_main"), With(dissolve)]
        else:
            action = [Return(), With(dissolve)]

    style_prefix "task_ed_task"

    frame:
        background Frame("gui/frame.png", Borders(8, 8, 8, 8))
        pos (205, 20)
        xysize (1510, 540)
        padding (10, 10)

        vbox:
            fixed:
                xfill True
                yfit True
                textbutton "[tsk_u] #[slt]" sensitive False action NullAction() text_style "task_ed_task_text"

                hbox:
                    spacing 20
                    xalign 1.
                    textbutton "Return" action action selected True sensitive not _inp_e
                    textbutton "Reset Task" action [Confirm("Are you sure to reset the current task? You won't be able to undo this action.", [ResetTask(tsk_ + slt), With(dissolve)], With(dissolve)), With(dissolve)] align (.9, .1) selected True sensitive not _inp_e
                    textbutton "Reset All Tasks" action [Confirm("Are you sure to reset all tasks? You won't be able to undo this action.", [ResetTasks(), With(dissolve)], With(dissolve)), With(dissolve)] align (.9, .1) selected True sensitive not _inp_e

            frame:
                background Frame("gui/frame.png", Borders(8, 8, 8, 8))
                xfill True
                ysize 280
                padding (10, 10)
                button:
                    style "task_input_button"
                    key_events True
                    xfill True
                    yfill True
                    action tsk_i.Toggle()
                    input:
                        value tsk_i
                        length 240

            text "{size=-15}(Task only active if text present!)" yoffset -10

        if active:
            if beat > 0:
                vbox:
                    yalign 1.
                    spacing 10
                    fixed:
                        xfit True
                        yfit True
                        textbutton "Beat: {color=#0f0}On" action SetVariable("persistent.m{}{}".format(tsk_, slt), 0) selected True
                        hbox:
                            spacing 10
                            xpos 280
                            textbutton "30 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 30) sensitive not _inp_e
                            textbutton "60 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 60) sensitive not _inp_e
                            textbutton "80 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 80) sensitive not _inp_e
                            textbutton "100 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 100) sensitive not _inp_e
                            textbutton "120 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 120) sensitive not _inp_e
                            textbutton "200 BPM" action SetVariable("persistent.m{}{}".format(tsk_, slt), 200) sensitive not _inp_e
                    null height 51
            else:
                vbox:
                    yalign 1.
                    spacing 10
                    textbutton "Beat: {color=#f00}Off" action [SetVariable("persistent.m{}{}".format(tsk_, slt), 30), SetVariable("persistent.tmr{}{}".format(tsk_, slt), True)] selected True sensitive not _inp_e
                    if timer:
                        textbutton "Timer: {color=#0f0}On" action SetVariable("persistent.tmr{}{}".format(tsk_, slt), False) selected True sensitive not _inp_e
                    else:
                        textbutton "Timer: {color=#f00}Off" action SetVariable("persistent.tmr{}{}".format(tsk_, slt), True) selected True sensitive not _inp_e

    key "game_menu" action action

style task_ed_task_hbox is gui_hbox:
    spacing 60

style task_ed_task_vbox is gui_vbox:
    spacing 15

style task_ed_task_button is gui_button:
    idle_background Frame("ed_idle.png", Borders(5, 5, 5, 5))
    hover_background Frame("ed_hover.png", Borders(5, 5, 5, 5))
    selected_idle_background Frame("ed_selected_idle.png", Borders(5, 5, 5, 5))
    insensitive_background Frame("ed_insensitive.png", Borders(5, 5, 5, 5))

style task_ed_task_button_text is gui_button_text:
    selected_color "#e75080"

style task_ed_task_text is gui_text:
    xmaximum 1490

style task_input_button is gui_label

style task_input_text is gui_label_text:
    layout "subtitle"
    hover_color gui.hover_color
