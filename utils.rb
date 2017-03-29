require 'bundler'
Bundler.require

require 'pycall/import'
include PyCall::Import
pyimport 'numpy', as: :np

def identity_function(x)
  x
end

def sigmoid(x)
  1 / (1 + np.exp.(-1 * x))
end
