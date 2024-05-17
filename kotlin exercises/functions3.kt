fun hasUniqueCharacters(input: String): Boolean {
    val charSet = mutableSetOf<Char>()

    for (char in input) {
        if (charSet.contains(char)) {
            return false
        }
        charSet.add(char)
    }

    return true
}

fun main() {
    val string1 = "abebe"
    val string2 = "Maedot"
    
    println("String '$string1' contains only unique characters: ${hasUniqueCharacters(string1)}")
    println("String '$string2' contains only unique characters: ${hasUniqueCharacters(string2)}")
}