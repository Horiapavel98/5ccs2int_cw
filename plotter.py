import matplotlib.pyplot as plt
import numpy as np


x = np.linspace(1, 11, 11)
# Time
# plt.plot(x, [0.67, 0.68, 1.15, 4.17, 5.43, 5.03, 3.07, 14.73, 18.78, 28.56, 43.49])
# plt.xlabel('Number of countries in the problem file')
# plt.ylabel('Time (in seconds)')
# plt.title("Running time for the EU Economics Domain")

# Cost
# plt.plot(x, [28.027, 28.027, 45.047, 49.051, 49.051, 52.055, 52.055, 63.067, 63.067, 63.067, 63.067])
# plt.xlabel('Number of countries in the problem file')
# plt.ylabel('Cost (in years)')
# plt.title("Cost for the solutions for the EU Economics Domain")

# States
plt.plot(x, [41, 38, 171, 499, 686, 628, 466, 1152, 1400, 1879, 2627])
plt.xlabel('Number of countries in the problem file')
plt.ylabel('States')
plt.title("Number of states evaluated per problem file in the EU Economics Domain")


plt.show()
