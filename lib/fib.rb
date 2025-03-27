def fib(n)
    initial_terms = [0, 1]
    return initial_terms[...n].join(', ') if n <= 3
    (n-2).times do 
        initial_terms.push(initial_terms[-1] + initial_terms[-2])
    end
    initial_terms.join(', ')
end
