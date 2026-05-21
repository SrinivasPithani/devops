progress_report = { "name": "Srinivas",
                    "age": 32,
                    "Subjects": ["English", "Maths"],
                    "Semesters": {
                        "1st": 70,
                        "2nd": 40,
                    },
                    "marks": [30, 20, 30, 40],
                }

def average_marks(marks):
    return sum(marks)/len(marks)

#print (int(average_marks(progress_report["marks"])))

def create_student_report():
    name = input("Enter student name:")
    marks = []
    student_report = {"Name": name,
                      "Subjects": ["Eng", "Sci"],
                      "Marks": [ 10, 20 ],
                     }
    return student_report
report_hash = create_student_report()
#print (report_hash.items())
#print ("Student" , report_hash["Name"], "has got" , report_hash["Marks"][0], "marks in ", report_hash["Subjects"][0])

for tk, tv in report_hash.items():
    print ( tk, tv )
