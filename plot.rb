require 'bundler'
Bundler.require

require 'pycall/import'
include PyCall::Import
pyimport 'numpy', as: :np
pyimport 'matplotlib', as: :mp

pyimport 'matplotlib.pyplot', as: :plt

x = np.arange.(0, 6, 0.1)
y = np.sin.(x)

plt.plot.(x, y)
plt.show.()
