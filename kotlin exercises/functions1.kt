fun sortArrayAscending(array: IntArray): IntArray {
    val sortedArray = array.copyOf()
    sortedArray.sort()
    return sortedArray
}

fun main() {
    val array = intArrayOf(5, 2, 8, 1, 9)
    val sortedArray = sortArrayAscending(array)
    println("Sorted array: ${sortedArray.joinToString()}")
}