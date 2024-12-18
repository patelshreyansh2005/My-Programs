g = 18
b = 10
while True:
    c = input("Type 'no' to quit and press enter to continue:  ")
    if c == "no":
        break
    while True:
        print("Number of guesses left", b)
        a = int(input("Guess the number:  "))
        if a is g:
            print("You won")
            break
        elif a < g:
            print("Please enter grater number")
        elif a > g:
            print("Please enter smaller number")
        else:
            print("invalid input")
        if b is 1:
            print("Out of guesses")
            break
        b = b - 1
zx = input()