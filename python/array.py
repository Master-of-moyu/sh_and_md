import matplotlib.pyplot as plt
import numpy as np

a = [1, 2]
print(a)
for x in a:
    print(x)
a.append(3)
print(a)

b = np.arange(0, 1, 0.1)
print("np.arange: ")
print(b)

c = np.linspace(1, 10, num= 5, endpoint = True)
print("np.linspace: ")
print(c)

arr = []
l = len(arr)
print(l)
arr.append(100)
l = len(arr)
print(l)

d = np.array([1, 2, 3, 4, 5])
print(d)

print("np.zeros: ")
e = np.zeros((2,3))
print(e)

print("np.ones: ")
f = np.ones((2,4))
print(f)