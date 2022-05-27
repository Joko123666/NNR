init python:
    from tasks import default_tasks as default_tasks

    class ResetTasks(Action):
        def __call__(self):
            for k, v in default_tasks.iteritems():
                setattr(persistent, k, v)

            renpy.show_screen("msg", "Done! All the tasks have been reset to default values!")

            renpy.restart_interaction()

    class ResetTask(Action):
        def __init__(self, task):
            self.task = task

        def __call__(self):
            setattr(persistent, self.task, default_tasks[self.task])
            setattr(persistent, "tmr" + self.task, default_tasks["tmr" + self.task])
            setattr(persistent, "m" + self.task, default_tasks["m" + self.task])
            setattr(persistent, "t" + self.task, default_tasks["t" + self.task])

            renpy.show_screen("msg", "Done! The task has been reset to default values!")

            renpy.restart_interaction()
