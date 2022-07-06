# Reproduzierbares Skript:
import Statistics as stats

sos(y, ŷ = stats.mean(y)) = sum(@. (y - ŷ) ^2)

function sos(y, x, β)
    ŷ=x*β
    sos(y, ŷ)
end

# using Distributions, LinearAlgebra
# n = 100
# x = [ones(n) rand(Normal(), n, 3)];
# β = [4, .5, .2, 0]
# y1 = x*β
# y2 = x*β + rand(Normal(0.0, .5), n)

# sos(y1, x, β)
# sos(y2, x, β)

using Optim
function linreg(x, y, start = ones(size(x, 2)), method = LBFGS())
    optimize_func = TwiceDifferentiable(β -> sos(y, x, β), start; autodiff = :forward)
    optimize(optimize_func, start, method)    
end

# res = linreg(x, y2)
# (res.minimizer .- β) ./ β
