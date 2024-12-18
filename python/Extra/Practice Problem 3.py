
n = int(input("How many items you want to give: "))
c = []
for item in range(0, n):
    i = input("enter item: ")
    c.append(i)
c.reverse()
print("This list is reversed by inbuilt method")
print()
print(c)
d = c[::-1]
print("This list is reversed by slicing trick")
print()
print(c)
c.reverse()
for i in range(len(c) // 2):
    c[i], c[len(c)-i-1] = c[len(c)-i-1], c[i]
print()
print(f"This list is reversed by Swap the first element"
      f" with  the  last  one and  second element  with"
      f" second  last  one  and  so  on  like")
print(c)
ii = input("press enter for exit")
