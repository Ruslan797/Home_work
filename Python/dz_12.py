#1. Сумма положительных чисел

# Напишите программу, которая обрабатывает список float чисел, вычисляет сумму положительных чисел.
# Результат необходимо вывести в формате денежной суммы (до 2 символов после запятой), добавляя символ валюты "$" вначале
# и разделяя тысячи запятой.

# Данные:
# numbers = [1245.4435, -302.1403, 87459.99, -520.8265, 1450.001]
# Пример вывода:
# Сумма положительных чисел: $90,155.43


# numbers = [1245.4435, -302.1403, 87459.99, -520.8265, 1450.001]
# sum_numbers = 0
#
# for num in numbers:
#     if num > 0:
#         sum_numbers += num
#
# format_numbers = f"${sum_numbers:,.2f}"
#
# print(f"Сумма положительных чисел: {format_numbers}")

#2.
# Счета клиентов

# Напишите программу, которая принимает список строк в формате "name age balance"
# и выводит информацию о каждом человеке с отформатированными данными:
# имя — 10 символов, возраст — 3 символа,
# баланс — 10 символов с двумя знаками после запятой.
# Используйте заранее подготовленный список строк.

# Данные:
# data_list = [
#    "John 23 12345.678",
#    "Alice 30 200.50",
#    "Bob 35 15000.3",
#    "Charlie 40 500.75"

# data_list = [
#     "John 23 12345.678",
#     "Alice 30 200.50",
#     "Bob 35 15000.3",
#     "Charlie 40 500.75"
# ]
# for item in data_list:
#     name, age, balance = item.split()
#
#     age = int(age)
#     balance = float(balance)
#     print(f"Имя: {name:<10} | Возраст: {age:>3} | Баланс: {balance:10.2f}")


# height = int(input("Введите высоту ромба: "))
# # Верхняя половина ромба
# for i in range(height):
#     # Пробелы слева
#     print(' ' * (height - i - 1), end='')
#     # Звездочки
#     print('*' * (2 * i + 1))

# import random
#
#
# secret_number = random.randint(1, 100)
# attempts_left = 10
# current_attempt = 0
#
# print("Угадайте число от 1 до 100. У вас 10 попыток.")
#
#
# while current_attempt < attempts_left:
#
#     guess = int(input(f"Попытка {current_attempt + 1}. Ваше предположение: "))
#
#     current_attempt += 1
#
#
#     if guess < 1 or guess > 100:
#         print("Число должно быть в диапазоне от 1 до 100.")
#         continue
#
#
#     if guess == secret_number:
#         print(f"Поздравляем! Вы угадали число: {secret_number}.")
#         print(f"Вы угадали число за {current_attempt} попыток. Отличный результат!")
#         break
#     elif guess < secret_number:
#         print("Загаданное число больше вашего.")
#     else:
#         print("Загаданное число меньше вашего.")
# else:
#     print(f"Вы использовали все попытки. Загаданное число было: {secret_number}. Попробуйте ещё раз!")

# 1.Таблица умножения:
# Напишите программу, которая выводит таблицу умножения для чисел от 1 до n.
# Где n это число, которое введет пользователь. Оформите вывод так,
# чтобы столбцы были ровные (число ровно под числом)
# Пример вывода:
# Введите число: 5
from lesson import digits

# n = int(input("Введите число: "))
#
# for i in range(1, n + 1):
#     for j in range(1, n + 1):
#         print(i * j, end='\t')
#     print()

# 2.Напишите программу, которая принимает число n и выводит "лестницу" из чисел.
# Каждая строка лестницы содержит числа от 1 до номера строки.
# Пример вывода:
# Введите число: 5

# n = int(input("Введите число: "))
#
# for row in range(1, n + 1):
#     for col in range(1, row + 1 ):
#         print(col, end=' ')
#     print()
# Запрос числа у пользователя
# num = input("Введите число: ")
# digits = 0
#
# for digit in num:
#     digits += int(digit)
#     sum_digits = sum(digits)
#
# print("Сумма цифр:", sum_digits)
'''
num = input("Введите число: ")

sum_digits = 0  

for digit in num:
    sum_digits += int(digit)  

print("Сумма цифр:", sum_digits)
'''
