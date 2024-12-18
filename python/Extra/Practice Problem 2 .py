
i = int(input("How many apples you have:  "))
mi = int(input("minimum range: "))
mx = int(input("maximum range: "))
for a in range(mi, mx + 1):
    if i % a == 0:
        print(f"{a} is divisor of {i}")
    else:
        print(f"{a} is not divisor of {i}")
print()
zx = input("Press enter for exit")
