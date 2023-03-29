using MandelbrotFractal
using Test 
using UnicodePlots

@testset "sanity checks" begin
    @test mandelbrot(complex(-1,1)) isa Complex
    @test_throws MethodError mandelbrot([1 2; 3 4])
    @test mandelbrot(0) == 0

    @test abs(mandelbrot(complex(-1,0)) )<=2
    @test abs(mandelbrot(complex(-1,1)) )>2
end

@testset "plot" begin
    
    
    y = -1:0.01:1
    x = -2:0.01:0.5
    mandelbrotMatrix = fill(0.,length(x),length(y))
    for xi = eachindex(x)
        for yi = eachindex(y)
            mandelbrotMatrix[xi,yi] = abs(mandelbrot(complex(x[xi],y[yi])))
        end
    end
    #---
    heatmap(mandelbrotMatrix)
    
    

end