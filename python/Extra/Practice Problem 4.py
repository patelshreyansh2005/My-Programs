z = input("Enter the number: ")
a = []
while True:
    for i in str(z):
        a.append(i)
    aa = a[::-1]
    if a == aa:
        print(f"The next palindrome is {z}")
        break
    a.clear()
    z = int(z) + 1

ii = input()
