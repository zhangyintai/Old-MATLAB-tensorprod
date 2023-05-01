# Old-MATLAB-tensorprod
tensorprod function for old version MATLAB

## Usage
TENSORPROD(tensor_A, tensor_B, Acon, Bcon, DimA, DimB)

tensor_A and tensor_B are just the tensors we want to operate.

Acon is an array containing the indices of A that need to be contracted. The same for Bcon.

DimA is the number of the indices of A: $b_1, a_2,\cdots ,b_3$.DimB is the number of indices of B: $b_1, b_2,\cdots ,b_m$.

Note that the function only requires the total number of contractions needs to be the same, i.e., $\prod a_i = \prod b_j$. 

The function wil return a tensor with indices $a_1',\cdots,a_p', b_1',\cdots, b_q'$ in which $a_i'$ and $b_j'$ are indices that are not contracted.

The function also requires the RESHAPE function. The function can be found here: https://github.com/zhangyintai/MATLAB-Reshapes-Like-Python
