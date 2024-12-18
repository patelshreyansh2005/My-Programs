import requests
import pickle
print("downloading required file please wait")
link = "https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
a = requests.get(link)
with open("abcd", "wb") as l:
    l.write(a.content)
print("download complete")
s = open("abcd")
z = s.read()
d = z.split("\n")
b = list(d)
s.close()
o = open("efgh", "wb")
pickle.dump(b, o)
o.close()

zx = open("efgh", "rb")
ad = pickle.load(zx)
print(ad)

i = input()