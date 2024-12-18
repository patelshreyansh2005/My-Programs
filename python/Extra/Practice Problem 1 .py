
i = int(input("Please enter your age or year of birth:  "))

if i in range(0, 999):
    if i == 0:
        print("you are not yet born")
    elif i not in range(0, 121):
        print("you seem to be the oldest person alive")
    else:
        a = i
        while a < 100:
            a = a + 1
        print(f"After {a - i} years you will be 100 year old")

elif i in range(1000, 9999):
    if i == 2022:
        print("you are not yet born")
    elif i not in range(1902, 2023):
        if i > 2022:
            print("you are not yet born")
        elif i < 1902:
            print("you seem to be the oldest person alive")
    else:
        b = 2022 - i
        c = b
        while c < 100:
            c = c + 1
        print(f"You are {b} years old after {c - b} years you will be 100 year old")
zx = input("Press enter for exit")
