using MandelbrotFractal
using Test 

@testset "sanity checks" begin
    @test mandelbrot(complex(-1,1)) isa Complex
    @test_throws MethodError mandelbrot([1 2; 3 4])
    @test mandelbrot(0) == 0

    @test abs(mandelbrot(complex(-1,0)) )<=2
    @test abs(mandelbrot(complex(-1,1)) )>2
end