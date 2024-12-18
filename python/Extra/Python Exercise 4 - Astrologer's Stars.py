a = int(input("How many rows you want to print:  "))
b = int(input("please enter 1 or 2:  "))
if b is 1:
    z = 1
    while True:
        if z > a:
            break
        print("*" * z)
        z = z + 1
if b is 2:
    z = a
    while True:
        if z is 0:
            break
        print("*" * z)
        z = z - 1
c = input()
