{
    split($0, chars, "")
    for (i=0; i<length(chars); i++) {
        counts[chars[i]]++
    }
}

END {
    print counts["A"], counts["C"], counts["G"], counts["T"]
}
