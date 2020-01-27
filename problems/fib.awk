NR == 1 {
    months = $1
    k = $2
}

function rabbits(month) {
    if (!r[month]) {
        r[month] = rabbits(month - 2) * k + rabbits(month - 1)
    }
    return r[month]
}

END {
    r[0] = 1
    r[1] = 1
    print rabbits(months - 1)
}
