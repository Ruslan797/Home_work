# 1. Не уникальные числа

# Напишите программу, которая находит все числа,
# встречающиеся более одного раза в списке, и выводит их в порядке убывания.

# Данные:

# numbers = [4, 7, 3, 7, 8, 3, 4, 2, 7, 3, 8, 4]

# Пример вывода:

# Числа, встречающиеся более одного раза: [7, 4, 3, 8]

# numbers = [4, 7, 3, 7, 8, 3, 4, 2, 7, 3, 8, 4]
# count_dict = {}
# for number in numbers:
#     if number in count_dict:
#         count_dict[number] += 1
#     else:
#         count_dict[number] = 1
#
# duplicates = [number for number, count in count_dict.items() if count > 1]
#
# duplicates.sort(reverse=True)
#
# print("Числа, встречающиеся более одного раза:", duplicates)

# 2.

# Проверка подмножества Задача:
# Напишите программу, которая проверяет,
# является ли один словарь подмножеством другого
# (т.е. все его пары "ключ-значение" содержатся в другом словаре).

# Данные:

# dict1 = {"a": 1, "b": 2}

# dict2 = {"a": 1, "b": 2, "c": 3}

# Пример вывода:

# Первый словарь является подмножеством второго.


# dict1 = {"a": 1, "b": 2}
# dict2 = {"a": 1, "b": 2, "c": 3}
#
# is_subset = all(item in dict2.items() for item in dict1.items())
#
# if is_subset:
#     print("Первый словарь является подмножеством второго.")
# else:
#     print("Первый словарь не является подмножеством второго.")



set1 = {1, 2, 3}
set2 = {2, 3, 4}
result1 = set1.symmetric_difference(set2) # Неизменяющий метод
result2 = set1 ^ set2 # Использование оператора
print(result1)
print(result2)
print(set1)
set1.symmetric_difference_update(set2) # Изменяющий метод
print(set1)