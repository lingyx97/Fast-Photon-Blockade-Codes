import qutip as qtp
import scipy as scp

def fracOpPow(quMat,power):
	nuMat=quMat.full()
	result=scp.linalg.fractional_matrix_power(nuMat,power)
	return qtp.Qobj(result,dims=quMat.dims)