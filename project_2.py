# -*- coding: utf-8 -*-
"""
Created on Sun Dec 25 17:54:45 2022

@author: adams
"""
import numpy as np
import projet_1 as projet_1
x = np.linspace(-40,40,100)
y = np.sin(x)
import matplotlib.pyplot as plt
plt.plot(x,y)
plt.show()
liste=projet_1.fibonacci(55)
print(liste)