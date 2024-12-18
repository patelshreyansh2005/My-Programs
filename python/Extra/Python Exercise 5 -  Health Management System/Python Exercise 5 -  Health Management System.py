def time():
    import datetime
    return datetime.datetime.now()


d = {}


def newu():
    n = input("Who are you:  ")
    while True:
        p1 = input("please set your password:  ")
        p2 = input("please confirm your password:  ")
        if p1 == p2:
            print("password created")
            break
        else:
            print("password does not matched")
    d.update({n: p1})
    ee = open(f"{n}_exercise", "a")
    ee.close()
    ff = open(f"{n}_food", "a")
    ff.close()


while True:
    new = input("If you are already registered press enter otherwise type 'new':  ")
    if new == "new":
        newu()
    while True:
        u = input("Who are you:  ")
        if u not in d.keys():
            print("you are not registered please register")
            i = input("for register type 'r' and press enter to continue:  ")
            if i == "r":
                newu()
        else:
            break
    while True:
        p3 = input("please enter password:  ")
        if p3 == d[u]:
            print("password matched")
            break
        else:
            print("password does not matched")
    while True:
        c = input("'1' for exercise and '2' for food:  ")
        if c == "1":
            e = input("Which exercise has been done by you:  ")
            ue = open(f"{u}_exercise", "a")
            uee = ue.write(f"{[str(time())]}")
            ueee = ue.write(f"  {e} was completed\n")
            ue.close()
        if c == "1":
            ue = open(f"{u}_exercise", "a")
            ueeee = ue.write("")
            ue.close()
        if c == "2":
            f = input("Which food has been eaten by you:  ")
            uf = open(f"{u}_food", "a")
            uff = uf.write(f"{[str(time())]}")
            ufff = uf.write(f"  {f} was eaten by me\n")
            uf.close()
        if c == "2":
            uf = open(f"{u}_food", "a")
            uffff = uf.write("")
            uf.close()
        ce = input("Press enter to continue and type 'e' to exit:  ")
        if ce == "e":
            print("Thank you for visit")
            break
