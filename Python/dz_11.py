#1.
# Звёздочки вместо чисел
# Напишите программу, которая заменяет все цифры в строке на звёздочки *.
# text = "My number is 123-456-789"
# Пример вывода:
# Строка: My number is 123-456-789
# Результат: My number is ***-***-***

# text = "My number is 123-456-789"
# result = ""
#
# for char in text:
#     if char.isdigit():
#         result += "*"
#     else:
#         result += char
#
# print(f"Строка: {text}")
# print(f"Результат: {result}")

#2.
# Количество символов
# Напишите программу, которая подсчитывает количество вхождений всех символов в строке.
# Нужно вывести только символы, которые встречаются более 1 раза (игнорируя регистр), с указанием их количества.
# Выводите повторяющиеся символы только один раз.

# text = "Programming in python"

# Пример вывода:
# Строка: Programming in python
# Символ 'p' встречается 2 раз(а)
# Символ 'r' встречается 2 раз(а)
# Символ 'o' встречается 2 раз(а)
# Символ 'g' встречается 2 раз(а)
# Символ 'm' встречается 2 раз(а)
# Символ 'i' встречается 2 раз(а)
# Символ 'n' встречается 3 раз(а)
# Символ ' ' встречается 2 раз(а)


# text = "Programming in python"
# text_lower = text.lower()
# words = {}
#
# for i in text_lower:
#     if text_lower.count(i) > 1 and i not in words:
#         words[i] = text_lower.count(i)
#         print(f"Символ '{i}' встречается {words[i]} раз(а)")
#
# print(f"Строка: {text}")

#3.
# Увеличение чисел
# Напишите программу, которая заменяет все числа в строке на их эквивалент, умноженный на 10.
# text = "I have 5 apples and 10 oranges, price is 0.5 each. Card number is ....3672."
# Пример вывода:
# I have 50.0 apples and 100.0 oranges, price is 5.0 each. Card number is ....3672.

# text = "I have 5 apples and 10 oranges, price is 0.5 each. Card number is ....3672."
# words = text.split()
# result = []
#
# for word in words:
#     if word.isdigit():
#         result.append(str(float(word) * 10))
#     else:
#         result.append(word)
#
# new_text = " ".join(result)
# print(new_text)

# Заранее подготовленный список строк
data_list = [
    "John 23 12345.678",
    "Alice 30 200.50",
    "Bob 35 15000.3",
    "Charlie 40 500.75"
]

for item in data_list:
    name, age, balance = item.split()
     # имя — 10 символов, выравнивание по левому краю
    age = int(age)         # возраст — 3 символа, выравнивание по правому краю
    balance = float(balance)  # баланс — 10 символов, 2 знака после запятой, выравнивание по правому краю
    print(f"Имя: {name:<10} | Возраст: {age:>3} | Баланс: {balance:10.2f}")