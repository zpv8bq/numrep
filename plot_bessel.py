import numpy as np
import matplotlib.pyplot as plt

order=[0,3,5,8]

plt.figure(figsize=(8,6))

for n in order:
    data = np.loadtxt(f"bessel{n}.dat", comment="#")
    x = data[:,0]
    down = data[:,1]
    up = data[:,2]
    plt.plot(x,down,label=f"downward J{n}")
    plt.plot(x, up,'--', label=f"upwards J{n}")

plt.xlabel("x")
plt.ylabel("J_n(x)")
plt.title("Spherical Bessel Functions (Upwards vs Downwards)")
plt.legend()
plt.grid(true)
plt.saveefig("bessel.png", dpi=150)
plt.show()
