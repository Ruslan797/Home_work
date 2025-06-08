# Простое число
#
# Напишите функцию, которая проверяет,
# является ли число n простым (делится только на 1 и само себя)
# и возвращает булевый результат.
#
# Данные:

# n = 17
#
# Пример вывода:
#
# Число 17 является простым

# def check_number(n):
#     if n < 2:
#         return False
#     for i in range(2, n // 2 + 1):
#         if n % i == 0:
#             return False
#     return True
#
# n = 17
#
# if check_number(n):
#     print(f"Число {n} является простым")
# else:
#     print(f"Число {n} является не простым")






# 2. Фильтрация чисел по чётности
#
# Напишите функцию, которая принимает filter_type ("even" или "odd")
# и произвольное количество чисел, возвращая только те, которые соответствуют фильтру.
#
# Пример вызова:
#
# print(filter_numbers("even", 1, 2, 3, 4, 5, 6))
#
# print(filter_numbers("odd", 10, 15, 20, 25))
#
# print(filter_numbers("prime", 2, 3, 5, 7))
#
# Пример вывода:
#
# [2, 4, 6]
#
# [15, 25]

# Некорректный фильтр

# def filter_numbers(filter_type,*args):
#     if filter_type == "even":
#         return [num for num in args if num % 2 == 0]
#     elif filter_type == "odd":
#         return [num for num in args if num % 2 != 0]
#     return  "Некорректный фильтр"
#
# print(filter_numbers("even", 1, 2, 3, 4, 5, 6))
# print(filter_numbers("odd", 10, 15, 20, 25))
# print(filter_numbers("prime", 2, 3, 5, 7))

# 3. Объединение словарей

# Напишите функцию, которая принимает любое количество словарей и объединяет их в один.
# Если ключи повторяются, используется значение из последнего словаря.
#
# Данные:
#
# dict1 = {"a": 1, "b": 2}
# dict2 = {"b": 3, "c": 4}
# dict3 = {"d": 5}
#
#
# Пример вызова:
#
# print(merge_dicts(dict1, dict2, dict3))
#
#
# Пример вывода:
#
# {'a': 1, 'b': 3, 'c': 4, 'd': 5}

# def merge_dicts(*dicts):
#     merged_dict = {}
#     for i in dicts:
#         merged_dict.update(i)
#     return merged_dict
#
# dict1 = {"a": 1, "b": 2}
# dict2 = {"b": 3, "c": 4}
# dict3 = {"d": 5}
#
# print(merge_dicts(dict1, dict2, dict3))


