require 'bundler'
Bundler.require

require 'pycall/import'
include PyCall::Import
pyimport 'numpy', as: :np

x = np.array.([1.0, 2.0, 3.0])
y = np.array.([2.0, 4.0, 6.0])
p x + y # array([ 3.,  6.,  9.])

A = np.array.([[1, 2], [3, 4]])
p A # array([[1, 2],
    #        [3, 4]])
p A.shape # (2, 2)
p A.dtype # dtype('int64')

B = np.array.([[3, 0], [0, 6]])
p A + B # array([[ 4,  2],
        #        ｊ[ 3, 10]])
