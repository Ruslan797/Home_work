# 1. Проверка на подмножество

# Напишите программу, которая проверяет, содержит ли первое множество все элементы второго множества.
# Реализуйте решение несколькими способами. Решите одним из способов не используя возможности множеств.

# Данные:

# set1 = {1, 2, 3, 4}

# set2 = {2, 3}

# Пример вывода:

# True


# 1 variant.

# set1 = {1, 2, 3, 4}
# set2 = {2, 3}
#
# result = set2 <= set1
# print(result)

# 2 variant.

# set1 = {1, 2, 3, 4}
# set2 = {2, 3}
#
# result = set2.issubset(set1)
# print(result)



# 2. Зеркальное подмножество

# Напишите программу, которая проверяет, являются ли элементы одного из множеств подмножеством другого.
# В случае положительного ответа возвращает разницу между двумя множествами. Проверить необходимо в обе стороны.

# Данные:

# set1 = {2, 3, 4, 5, 6}

# set2 = {4, 5}

# Пример вывода:

# Подмножество: True

# Разница: {2, 3, 6}


# set1 = {2, 3, 4, 5, 6}
# set2 = {4, 5}
#
# subset1 = set2.issubset(set1)
#
# diff1 = set() if subset1 else None
# if subset1:
#     for item in set1:
#         if item not in set2:
#             diff1.add(item)
#
# subset2 = set1.issubset(set2)
#
# diff2 = set() if subset2 else None
# if subset2:
#     for item in set2:
#         if item not in set1:
#             diff2.add(item)
#
# print(f"set2 подмножество set1: {subset1}")
# if subset1:
#     print(f"Разница: {diff1}")
#
# print(f"set1 подмножество set2: {subset2}")
# if subset2:
#     print(f"Разница: {diff2}")


