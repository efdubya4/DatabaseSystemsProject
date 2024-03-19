class Course:
    def __init__(self, department, course_number, course_name, semester, year):
        self.department = department
        self.course_number = course_number
        self.course_name = course_name
        self.semester = semester
        self.year = year
        self.categories = {}  # Dictionary to store category weights

    def add_category(self, category, weight):
        if category not in self.categories:
            self.categories[category] = weight
        else:
            print(f"Category '{category}' already exists.")

    def calculate_grade(self, grades):
        total_grade = 0
        for category, weight in self.categories.items():
            if category in grades:
                category_grade = sum(grades[category])
                total_grade += category_grade * (weight / 100)
        return total_grade


class GradeBook:
    def __init__(self):
        self.courses = []

    def add_course(self, course):
        self.courses.append(course)

    def add_grade(self, department, course_number, category, grade):
        for course in self.courses:
            if course.department == department and course.course_number == course_number:
                if category in course.categories:
                    course.categories[category].append(grade)
                    break
                else:
                    print(f"Category '{category}' does not exist for {department} {course_number}.")
                break
        else:
            print(f"Course {department} {course_number} not found.")

    def get_course_grade(self, department, course_number):
        for course in self.courses:
            if course.department == department and course.course_number == course_number:
                return course.calculate_grade()
        print(f"Course {department} {course_number} not found.")


# Example usage:
if __name__ == "__main__":
    # Create courses
    course1 = Course("Computer Science", "CS101", "Introduction to Programming", "Fall", 2023)
    course2 = Course("Mathematics", "MTH202", "Calculus II", "Spring", 2024)

    # Add categories and weights
    course1.add_category("Participation", 10)
    course1.add_category("Homework", 20)
    course1.add_category("Tests", 50)
    course1.add_category("Projects", 20)

    course2.add_category("Participation", 15)
    course2.add_category("Homework", 25)
    course2.add_category("Tests", 45)
    course2.add_category("Projects", 15)

    # Create grade book and add courses
    grade_book = GradeBook()
    grade_book.add_course(course1)
    grade_book.add_course(course2)

    # Add grades
    grade_book.add_grade("Computer Science", "CS101", "Homework", [85, 90, 88, 92, 95])
    grade_book.add_grade("Mathematics", "MTH202", "Tests", [78, 85, 80])

    # Calculate and print course grades
    print(grade_book.get_course_grade("Computer Science", "CS101"))
    print(grade_book.get_course_grade("Mathematics", "MTH202"))
