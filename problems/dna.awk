{
    split($0, chars, "")
    for (i in chars) {
        counts[chars[i]]++
    }
}

END {
    print counts["A"], counts["C"], counts["G"], counts["T"]
}
