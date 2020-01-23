/^>/ {
    id = substr($1, 2)
}

!/^>/ {
    split($0, bases, "")
    for (i=0; i<length(bases); i++) {
        b = bases[i]
        if (b == "G" || b == "C") {
            gc[id]++
        } else if (b == "A" || b == "T") {
            at[id]++
        } # ignore newlines
    }
}

END {
    for (id in gc) {
        result = gc[id] / (gc[id] + at[id]) * 100.0
        if (result > max) {
            max = result
            max_id = id
        }
    }
    print max_id
    printf("%f\n", result)
}
