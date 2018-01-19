defmodule ListOperations do
    def nth(0, [head | _tail]) do head end
    def nth(n, [_head | tail]) do nth(n-1, tail) end

    def len([]) do 0 end
    def len([_head | tail]) do
        1 + len(tail)
    end

    def sum([]) do 0 end
    def sum([head | tail]) do
        head + sum(tail)
    end

    def duplicate([]) do [] end
    def duplicate([head | tail]) do
        [head, head | duplicate(tail)]
    end

    def add(x, []) do [x] end
    def add(x, [x | tail]) do [x | tail] end
    def add(x, [head | tail]) do [head | add(x, tail)] end

    def remove(_, []) do [] end
    def remove(x, [x | tail]) do remove(x, tail) end
    def remove(x, [head | tail]) do
        [head | remove(x, tail)]
    end
end
