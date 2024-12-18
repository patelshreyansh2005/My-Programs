import random
print("This is a snake water gun game")
print()
h = int(input("How many times you want to play:  "))
z = 1
aa = 0
a = 0
b = 0
c = 0
d = 0
while True:
    yy = ["s", "w", "g", "s", "w", "g"]
    x = random.choice(yy)
    if z > h:
        break
    u = input("Type 's' for snake and 'w' for water and 'g' for gun:  ")

    if x == "s" and u == "s":
        print("Tie")
        b = b + 1
    elif x == "w" and u == "w":
        print("Tie")
        b = b + 1
    elif x == "g" and u == "g":
        print("Tie")
        b = b + 1

    elif x == "s" and u == "g":
        print("you win")
        aa = aa - 1
        a = a + 1
        c = c + 1
    elif x == "w" and u == "s":
        print("you win")
        aa = aa - 1
        a = a + 1
        c = c + 1
    elif x == "g" and u == "w":
        print("you win")
        aa = aa - 1
        a = a + 1
        c = c + 1

    elif x == "g" and u == "s":
        print("you loss")
        aa = aa + 1
        a = a - 1
        d = d + 1
    elif x == "s" and u == "w":
        print("you loss")
        aa = aa + 1
        a = a - 1
        d = d + 1
    elif x == "w" and u == "g":
        print("you loss")
        aa = aa + 1
        a = a - 1
        d = d + 1
    else:
        print("please check your input")
    print(f"your choice {u}")
    print(f"computer's choice {x}")
    z = z + 1
print(f" number of times played          {h}")
print()
print(f" players            me         computer ")
print(f" Total points       {a}          {aa}   ")
print(f" number of Wins     {c}          {d}    ")
print(f" number of Losses   {d}          {c}    ")
print(f" number of Tie      {b}          {b}    ")
az = input()
