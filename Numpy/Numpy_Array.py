import numpy as np

a = np.array(42)  # --> 0-D array
b = np.array([1,2,3])  # --> 1-D array
c = np.array([[1,2,3],[4,5,6]])   # -->> 2-D array
d = np.array([[[1,2,3],[4,5,6]],[[1,2,3],[4,5,6]]])  # -->  3-D array

# higher Dimentional Array
e = np.array([1,2,3,4], ndmin = 5)   
# --> ndmin declares the number of dimention

# print(a.ndim)    # --> a.ndim prints the dimention of the array
# print(c)
# print(e)
# print(e.ndim)



# ***** Array Indexing *****



#     0    1   2   

# 0  [1    2   3]

# 1  [4   *5*  6]



# print(b[0])
# print(c[1,1])  # -->> 1,1,th index is 5

# print(d[0,1,2])   # third element of the 2nd array of the first array



#  ***** Array Slicing *****


# [start:end]
# [start:end:step]
# default value of start = 0, end = end of the array, step = 1

# print(b[0:2])  ->> prints index 0, 1.
# print(b[0:])    --> Prints from index 0 to the end of the array

# print(c[0:2, 1])




#    ***** Data type ****



# dtype --> data type of the array
# i -> integer , b -> boolean , u -> unsigned integer , f -> float , c -> complex float , m -> timedelta , M -> datetime
# O -> object , S -> String , U -> Unicode , V -> Void
# Converting an array to new data type -> y = x.astype('S')

# print(b.dtype)
# f = b.astype('S')
# print(f.dtype)

g = np.array([1,2,3,4,5,6,7,8,9],dtype='S')

# print(g)



#   ****** Copy and View ******



# copy : A copy of the original array which is distinct. Any change made to the copy or original array doesn't effect another one.
# View : View is just a view of the original array. If any change is made to the view or original array, it effects another one.

# gg = g.copy()
# ggg = g.view()
# # gg[0] = 42
# ggg[0] = 42
# print(gg)
# print(ggg)
# print(g)




#    ***** Array Shape,Reshape***** 


# c.shape -->> Returs shape of the arrray c as a touple like (2,3) means the array has 2 rows and 3 collumns.
# g.shape()  --> Reshapes an numpy array to directed shape. We can pass -1 as one dimension which is unknown. Numpy will calculate it for us.


# print(c.shape)

# newG = g.reshape(3,-1)
# print(newG)


#    ***** Iterating through an Array *****



# for loops 

# for x in d:
#     for y in x:
#         for z in y:
#             print(z)


# np.nditer(d) -->> iterates through any dimentional array and returns values.

# for x in np.nditer(d):
#     print(x)


# np.nditer(d, flags = ['buffered'] , op_dtypes = ['S'])  -->> Iterates through the array d as string data type.

# for x in np.nditer(d, flags = ['buffered'] , op_dtypes = ['S']):
#     print(x)
    

# iterate with different step size

# for x in np.nditer(d[:,::2]):
#     print(x)
    
# Enumarated iteration --> print arrray index and array value

for idx, x in np.ndenumerate(d):
    print(idx, x)