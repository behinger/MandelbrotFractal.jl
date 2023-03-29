module MandelbrotFractal

    # XXX add documentation
    function mandelbrot(a)
        z = 0
        
        for i=1:50
            z = z^2 + a
            if abs(z) > 2
                break
            end
        end
        return  z
    end

    export mandelbrot

end

# https://github.com/s-ccs/2023_JuliaWorkshop-PkgGitCI