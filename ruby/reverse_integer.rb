def reverse(x)
    d = 1
    rx = 0
    while(d <= x.abs) do
        rx *= 10
        rx += x.abs / d % 10
        puts rx
        d *= 10
    end
    return 0 if rx > 2147483647 || rx < -2147483647
    return x >= 0 ? rx : -rx 
end