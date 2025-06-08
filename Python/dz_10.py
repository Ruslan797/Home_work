# Напишите программу, которая моделирует работу торгового автомата.
# Автомат принимает только монеты номиналом 1, 2, 5, 10 и 50.
# Программа должна запрашивать у пользователя общую стоимость покупки,
# а затем отображать сколько монет каждого типа нужно потратить,
# чтобы использовать минимальное количество монет для оплаты товара.
# Пример вывода:
# Введите стоимость товара: 127
# Внесите монеты номиналом 50: 2
# Внесите монеты номиналом 10: 2
# Внесите монеты номиналом 5: 1
# Внесите монеты номиналом 2: 1

# cost = int(input("Введите стоимость товара: "))
# remaining = cost
# coins = [50, 10, 5, 2, 1]
#
#
# print("Внесите следующие монеты для оплаты:")
# for i in coins:
#     count = remaining // i
#     if count > 0:
#         print("Внесите монеты номиналом", i, ":", count,sep="")
#     remaining %= i

#2.
# Квадрат нечетных чисел
# Напишите программу, которая изменяет изначальный список
# и возводит в квадрат только нечётные числа.
# numbers = [4, 9, 1, 7, 2, 5, 0, 3, 7, 1, 3]
# Пример вывода:
# Изначальный список: [4, 9, 1, 7, 2, 5, 0, 3, 7, 1, 3]
# Измененный список:  [4, 81, 1, 49, 2, 25, 0, 9, 49, 1, 9]

# numbers = [4, 9, 1, 7, 2, 5, 0, 3, 7, 1, 3]
# print("Изначальный список:", numbers)
#
# for i in range(len(numbers)):
#     if numbers[i] % 2 != 0:
#         numbers[i] **= 2
#
# print("Измененный список: ", numbers)
# name = "Alice"
# age = 30
# text = "My name is %s and I am %d years old." % (name, age)
# print(text)

# num = 42
# text = "The number is %s." % num
# print(text)

# name = "Alice"
# age = 30
# text = "My name is %s and I am %d years old." % (name, age)
# print(text)
# name = "Alice"
# age = 30
# text = "My name is {} and I am {} years old."
# print(text.format( name, age))

# text = "Python"
# text_info = f"The length of '{text}' is {len(text)} and its uppercase version is {text.upper()}."
# print(text_info)

# name = "Charlie"
# age = 30
# text = f"""Info
# Name: {name}
# Age: {age}
# """
# print(text)
# text_fstring = f"start_{'text':<10}_end"
# # Метод format()
# text_format = "start_{:<10}_end"
# print(text_fstring)
# print(text_format.format("text"))

# text_fstring = f"start_{'text':^10}_end"
# text_format = "start_{:^10}_end"
# print(text_fstring)
# print(text_format.format("text"))

# number = 40
# text = 'hi'
# # f-строки
# text_fstring = f"start_{number:10}_end"
# print(text_fstring)

# text = "apple---banana---cherry"
# fruits = text.split("---", 1)
# print(fruits)

# my_list = [1, 2, 3, 4, 5]
# print(3 in my_list)
# print(6 in my_list)
# my_list = ["apple", "banana", "cherry"]
# print("apple" in my_list)
# print("app" in my_list) # Ищет полное совпадение элемента

# my_list = [1, 2, 3, 4, 5]
# print(len(my_list))

























