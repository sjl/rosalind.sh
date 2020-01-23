NR == 1 { haystack = $0 }
NR == 2 { needle = $0 }

END {
    while (i = index(haystack, needle)) {
        if (pos) printf(" ")
        printf("%d", pos += i)
        haystack = substr(haystack, i+1)
    }
}
