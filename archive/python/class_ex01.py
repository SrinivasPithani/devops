class person:
  def __init__(self, name):
    self.s_name = name
  def hi(self):
    print("hi there {}".format(self.s_name))
        
sp = person("Srini")
sd = person("Spandu")

sp.hi()
sd.hi()

#person("Mannu").hi()
