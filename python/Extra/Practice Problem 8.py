import random


def tab(u):
    a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    b = {}
    for io in a:
        b.update({io: io * u})
    c = random.choice(a)
    b.pop(c)
    d = random.randint(c * u, ((c + 1) * u) - 1)
    b.update({c: d})
    f = []
    for iii in a:
        f.append(b.get(iii))
    aa = 1
    for ii in f:
        print(f"{u} x {aa} = {ii}")
        aa = aa + 1
    return f


gg = int(input('Enter the number: '))


hh = tab(gg)

p = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
s = []
for i in p:
    s.append(i * gg)

for fg in hh:
    if fg % gg != 0:
        print(f'correct answer is {gg * (1 + (hh.index(fg)))} not {fg}')

ai = input('Press enter for exit')
