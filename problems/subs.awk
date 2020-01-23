NR == 1 { haystack = $0 }
NR == 2 { needle = $0 }

END {
    while (i = index(haystack, needle)) {
        if (p) printf(" ")
        printf("%d", p += i)
        haystack = substr(haystack, i+1)
    }
}
