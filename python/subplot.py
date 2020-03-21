import matplotlib.pyplot as plt
import numpy as np

# 1
X = np.linspace(-np.pi, np.pi, 256, endpoint=True)
C,S = np.cos(X), np.sin(X)
# 2
a = np.arange(0, 3, 0.02)
b = np.square(a)

plt.subplot(1,2,1)
plt.plot(X, C, 'b--',label='cos')
plt.plot(X, S, 'r',label='sin')
plt.title("sin_cos")
plt.grid(True)
plt.legend(loc='upper right')

plt.subplot(1,2,2)
plt.plot(a, b, 'b-',label='x^2')
plt.title("x^2")
l = len(a)
max_x = a[l - 1]; max_y = b[l - 1]
plt.xlabel('x'); plt.ylabel('y')
plt.xlim(-1, max_x + 1)
plt.ylim(-1, max_y + 1)
plt.grid(True)
plt.legend(loc='upper right')

plt.show()


