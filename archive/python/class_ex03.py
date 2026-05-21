class schmem:
  def __init__(self, name, age):
    self.name = name
    self.age = age
  def info(self):
    print("This is {} and age is {} ".format(self.name, self.age))

class teacher(schmem):
  def __init__(self, name, age, subject):
    schmem.__init__(self, name, age)  
    self.subject = subject
  def info(self):
    schmem.info(self)
    print("This teacher teaches {} ".format(self.subject))

class student(schmem):
  def __init__(self, name, age, section):
     schmem.__init__(self, name, age)
     self.section = section 
  def info(self):
     schmem.info(self)
     print("This guy belongs to {}".format(self.section))


t1 = teacher("t1", 25, "maths")
s1 = student("s1", 10, "X-A")

print(t1.info())
print(s1.info())
