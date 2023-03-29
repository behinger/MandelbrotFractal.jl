# Welcome
tot this great tutorial with **markdown**

Here is an example of mandelbrot, enjoy!
```@example main
using MandelbrotFractal
using UnicodePlots
 
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
```