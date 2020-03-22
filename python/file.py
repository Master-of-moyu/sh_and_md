import matplotlib.pyplot as plt
import numpy as np

a = np.loadtxt('data.txt')
print(a.shape)

b = a[:, 0]
print(b.shape)

c = a[:, 1]
print(c.shape)

plt.figure(1)
l = len(b)
max_x = b[l - 1]
max_y = c[l - 1]
plt.plot(b, c, 'b-',label='x^2')
plt.title("plot test")
plt.legend(loc='upper left')
plt.xlabel('x')
plt.ylabel('y')
plt.xlim(-1, max_x + 1)
plt.ylim(-1, max_y + 1)
plt.grid(True)
plt.show()