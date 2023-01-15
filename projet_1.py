import numpy as np
arr_1d=np.array([1,2,3,4])
print(arr_1d)
print("adama")
def fibonacci(n):
    # return fibonacci series in a list
    a,b=0,1
    fib=[]
    while a<n:
        fib.append(a)
        a,b=b,a+b
    return fib
def classeur(classeur,nombre):
    # class nombre dans dictionnaire selon le signe
    if nombre>0:
        classeur['positif'].append(nombre)
    else:
        classeur['negatif'].append(nombre)
    return