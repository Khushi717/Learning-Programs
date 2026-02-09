import numpy as np

arr_1d = np.array([1, 2, 3, 4, 5])
print(arr_1d)
arr_2d = np.array([[1, 2, 3], [4, 5, 6]])
print(arr_2d)

ar=np.zeros((2,5));
print(ar);

arr = np.array([1, 2, 3, 4, 5, 6])
print(f"Original array: {arr}")
print(f"Original shape: {arr.shape}\n")

reshaped_2d = arr.reshape((2, 3))
print(f"Reshaped 2D array (2x3):\n{reshaped_2d}\n")


reshaped_3d = arr.reshape((2, 1, 3))
print(f"Reshaped 3D array (2x1x3):\n{reshaped_3d}\n")

np.arange(1,10);

onecol=np.ones((5,))
zerocol=np.zeros((5,1))
onecol=np.ones((5,1))
finall=np.column_stack((onecol,zerocol,onecol));
print(finall)

#final=np.row_stack((one))

o = -1*np.ones((1,4))
z = np.zeros((1, 4))
oo=2*np.ones((1,4));

final_row = np.column_stack((o, z,oo));
print(final_row)
