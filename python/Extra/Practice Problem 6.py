import random
while True:
    a = int(input("please enter minimum range: "))
    print(f"maximum range must be greater then {a + 19} ")
    b = int(input("please enter maximum range: "))
    if b-a < 19:
        print("invalid range input")
    else:
        break
ll = []
for i in range(a, b + 1):
    ll.append(i)


def player():
    name = input(f"Enter player{z} name: ")
    y = 1
    while True:
        d = int(input(f"please guess the number between {a} and {b}: "))
        if d < a or d > b:
            print(f"{d} is not in range")
        elif d < c:
            print(f"please enter number grater then {d}")
            y = y + 1
        elif d > c:
            print(f"please enter number smaller then {d}")
            y = y + 1
        else:
            print()
            print("you won")
            print(f"You take {y} try")
            print()
            break
    return {name: y}


e = int(input("How many players are playing: "))
lll = {}
z = 1
while z <= e:
    c = random.choice(ll)
    f = player()
    lll.update(f)
    z = z + 1
print()
print()
print('score board')
print()
for i in lll:
    g = lll.get(i)
    print()
    print(f"{i} complete in {g} try")
print()
print()
ii = input("Press enter for exit")
