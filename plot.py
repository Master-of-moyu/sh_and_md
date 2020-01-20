import matplotlib.pyplot as plt
import numpy as np

X = np.linspace(-np.pi,np.pi,256,endpoint=True)
C,S = np.cos(X), np.sin(X)

plt.plot(X,C,'b--',label='cos')
plt.plot(X,S,'r',label='sin')

plt.title("plot test")
plt.legend(loc='upper right')

plt.show()

# import numpy as np
# import matplotlib.pyplot as plt

# # Make some fake data.
# a = b = np.arange(0, 3, .02)
# c = np.exp(a)
# d = c[::-1]

# # Create plots with pre-defined labels.
# fig, ax = plt.subplots()
# ax.plot(a, c, 'k--', label='Model length')
# ax.plot(a, d, 'k:', label='Data length')
# ax.plot(a, c + d, 'k', label='Total message length')

# legend = ax.legend(loc='upper center', shadow=True, fontsize='x-large')

# # Put a nicer background color on the legend.
# legend.get_frame().set_facecolor('C0')

# plt.show()
