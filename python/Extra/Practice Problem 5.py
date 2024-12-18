a = int(input("How many items you want to add: "))
ll = []
for i in range(0, a):
    aa = int(input("Enter the number you want to add: "))
    ll.append(aa)
xz = []
for ii in ll:
    if ii > 10:
        lll = []
        zz = ii
        while True:
            for iii in str(zz):
                lll.append(iii)
            if lll == lll[::-1]:
                xz.append(zz)
                break
            lll.clear()
            zz = int(zz) + 1
    else:
        xz.append(ii)
print(ll)
print(xz)
input("press enter for exit")
