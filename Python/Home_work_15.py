# 1. Одно слово

# Напишите программу, которая обрабатывает список из строк и удаляет все строки,
# содержащие более одного слова,
# а также преобразует оставшиеся строки к нижнему регистру.

# Данные:

# text_list = ["Hello", "Python Programming", "World", "Advanced Topics", "Simple"]

# Пример вывода:

# Обработанный список: ['hello', 'world', 'simple']


# text_list = ["Hello", "Python Programming", "World", "Advanced Topics", "Simple"]
#
# new_list = []
#
# for word in text_list:
#     if len(word.split()) == 1:
#         processed_list.append(word.lower())
#
# print("Обработанный список:", new_list)

# text_list = ["Hello", "Python Programming", "World", "Advanced Topics", "Simple"]
#
#
# new_list = [word.lower() for word in text_list if len(word.split()) == 1]
#
# print("Обработанный список:", new_list)



# 2. Обновление цен товаров

# Дан список товаров с ценами. Программа должна применить скидку к каждому товару
# и добавить в список элемент с новой ценой.
# В конце вывести таблицу с новой ценой.

# Данные:

# products = [["Laptop", 1200], ["Mouse", 25], ["Keyboard", 75], ["Monitor", 200]]

# Пример вывода:

# Введите скидку (в процентах): 17

# Товар          Старая цена    Новая цена
# Laptop            1200.00$       996.00$
# Mouse                25.00$         20.75$
# Keyboard           75.00$         62.25$
# Monitor            200.00$       166.00$

# # Исходные данные:
# products = [["Laptop", 1200], ["Mouse", 25], ["Keyboard", 75], ["Monitor", 200]]
#
# discount_percentage = float(input("Введите скидку (в процентах): "))
#
# for product in products:
#     old_price = product[1]
#     new_price = old_price * (1 - discount_percentage / 100)
#     product.append(round(new_price, 2))
#
# print("\nТовар           Старая цена       Новая цена")
# print("-" * 46)
# for product in products:
#     print(f"{product[0]:<15} {product[1]:>5.2f}$ {product[2]:>16.2f}$")





set1 = {2, 3, 4, 5, 6}
set2 = {4, 5}

subset1 = set2.issubset(set1)

diff1 = set() if subset1 else None
if subset1:
    for item in set1:
        if item not in set2:
            diff1.add(item)

subset2 = set1.issubset(set2)

diff2 = set() if subset2 else None
if subset2:
    for item in set2:
        if item not in set1:
            diff2.add(item)

print(f"set2 подмножество set1: {subset1}")
if subset1:
    print(f"Разница: {diff1}")

print(f"set1 подмножество set2: {subset2}")
if subset2:
    print(f"Разница: {diff2}")

