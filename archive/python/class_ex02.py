class person:
  population = 0

  def __init__(self, name):
    self.name = name
  def add_person(self):
    person.population += 1
    print("Added")
  def del_person(self):
    person.population -= 1
    print("Deleted")
  def say_hi(self, name):
    print("Welcome to pop {} ".format(self.name))
  def say_bye(self):
    print("Goodbye {} ".format(self.name))
  def pop(self):
    '''This prints the number of people'''
    print("Total population {} ".format(person.population) )

p1 = person("Srini")
p2 = person("Spandu")
print(p1.add_person(),p1.pop(),p2.add_person(),p2.pop())
#print(person("Srini").del_person())
print(person.pop.__doc__)
