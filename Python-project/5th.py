import time

countdown = int(input("Введите начальное значение для обратного отсчета: "))

while countdown > 0:
    print(countdown)
    time.sleep(1)
    countdown -= 1

print("Время вышло!")