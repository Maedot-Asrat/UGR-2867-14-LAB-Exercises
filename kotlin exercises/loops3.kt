fun isPalindrome(number: Int): Boolean {
    var num = number
    var reverse = 0

    while (num != 0) {
        val remainder = num % 10
        reverse = reverse * 10 + remainder
        num /= 10
    }

    return reverse == number
}

fun main() {
    val number = 12321

    val isPalindrome = isPalindrome(number)
    if (isPalindrome) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}