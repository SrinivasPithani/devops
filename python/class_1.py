class Fish:
        def __init__(self,fn,ln="Fish"):
                self.fn = fn
                self.ln = ln
        def swim(self):
                print("{} It can swim".format(self.fn))

        def swim_back(self):
                print("It can swim backwards")

a = Fish("mackarel")
a.swim() or a.swim_back()
