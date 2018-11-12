with open("testread.txt", mode="r", encoding="utf-8") as my_file:
    for line in my_file:
        print(line.strip("\n"))
