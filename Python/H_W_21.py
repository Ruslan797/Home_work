# 1. Повторения букв
#
# Реализуйте функцию, которая принимает текст и возвращает словарь
# с подсчётом количества каждой буквы, игнорируя регистр.
#
# Данные:
#
#text = "Programming is fun!"


# Пример вывода:
#
# {'p': 1, 'r': 2, 'o': 1, 'g': 2, 'a': 1, 'm': 2, 'i': 2, 'n': 2, 's': 1, 'f': 1, 'u': 1}



# from collections import Counter
#
#
# def letter_count(text):
#     text = text.lower()
#     letters = [char for char in text if char.isalpha()]
#     return  dict(Counter(letters))
#
# text = "Programming is fun!"
# result = letter_count(text)
# print(result)




# 2. Группировка студентов по классам
#
# Создайте структуру для группировки студентов по классам.
# Добавьте студентов в соответствующие группы.
#
# Данные:
#
# students = [("class1", "Alice"), ("class2", "Bob"), ("class1", "Charlie"), ("class3", "Daisy")]
#
#
# Пример вывода:
#
# {'class1': ['Alice', 'Charlie'], 'class2': ['Bob'], 'class3': ['Daisy']}


# from collections import  defaultdict
#
# def university_groups(students):
#     grouped_students = defaultdict(list)
#
#     for class_name, student in students:
#         grouped_students[class_name].append(student)
#
#     return dict(grouped_students)
#
# students = [("class1", "Alice"), ("class2", "Bob"), ("class1", "Charlie"), ("class3", "Daisy")]
#
# grouped = university_groups(students)
#
# print(grouped)



from collections import defaultdict

students = [
    ("class1", "Alice"),
    ("class2", "Bob"),
    ("class1", "Charlie"),
    ("class3", "Daisy"),
]
# Группируем студентов по классам
class_groups = defaultdict(list)
for class_name, student in students:
    class_groups[class_name].append(student)