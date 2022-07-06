using meinTest
using Test

@testset "meinTest.jl" begin
    @test sos(1, 3) == 4
    @test sos(1:4, 6:9) == 100
end
