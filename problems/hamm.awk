NR == 1 { split($0, a, "") }
NR == 2 { split($0, b, "") }

END {
    for (i=0; i<length(a); i++) {
        if (a[i] != b[i]) distance++
    }

    print distance
}
