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

    def unique([]) do [] end
    def unique([head | tail]) do
        [head | unique(remove(head, tail))]
    end

    def reverse([]) do [] end
    def reverse([head | tail]) do
        reverse(tail) ++ [head]
    end
    #Sorting Functions

    #InsertionSort
    def insert(x, []) do [x] end
    def insert(x, [head | tail]) do
        if (head < x) do
            [head | insert(x, tail)]
        else
            [x|[head|tail]]
        end
    end

    def isort(l) do isort(l, []) end
    def isort([], sorted) do sorted end
    def isort([head | tail], sorted) do
        isort(tail, insert(head, sorted))
    end
    #MergeSort

    def msort([]) do [] end
    def msort([x]) do [x] end
    def msort(l) do
        {ls, rs} = msplit(l, [], [])
        merge(msort(ls), msort(rs))
    end

    def msplit([], ls, rs) do {ls, rs} end
    def msplit([x | tail], ls, rs) do
        msplit(tail, [x | rs], ls)
    end

    def merge([], rs) do rs end
    def merge(ls, []) do ls end
    def merge([x1 | ls], [x2 | _] = rs) when x1 < x2 do
        [x1 | merge(ls, rs)]
    end
    def merge(ls, [x2 | rs]) do
        [x2 | merge(ls, rs)]
    end
end

