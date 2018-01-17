defmodule Test do
    def double(n) do
        n * 2
    end
    def converter(f) do
        (f - 32)/1.8
    end
    def area(b, h) do
        b * h
    end
    def squareArea(l) do
        area(l,l)
    end
    def circleArea(r) do
        :math.pi()* r * r
    end
    def product(m, n) do
        if m == 0 do
            n = 0
            else
            n + product((m-1),n)
            end
    end
    def caseProduct(m, n) do
        case m do
            0 ->
                n = 0
            _ ->
                n + caseProduct((m-1), n)
        end
    end
    def clausProduct(0, _) do 0 end
    def clausProduct(m, n) do
       n + clausProduct((m-1), n)
    end
    def exp(x,n) do
        case n do
            0 ->
                1
            1 ->
                x
            if rem(n,2) do
                   x * exp(x,(n/2))
                end
            _ ->
                x * exp(x, n-1)
        end
    end
end
