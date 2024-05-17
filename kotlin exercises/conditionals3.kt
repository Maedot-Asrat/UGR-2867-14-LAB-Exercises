fun determineSeason(month: Int, day: Int): String {
    return when (month) {
        1, 2 -> "Winter"
        3 -> if (day < 20) "Winter" else "Spring"
        4, 5 -> "Spring"
        6 -> if (day < 21) "Spring" else "Summer"
        7, 8 -> "Summer"
        9 -> if (day < 22) "Summer" else "Autumn"
        10, 11 -> "Autumn"
        12 -> if (day < 21) "Autumn" else "Winter"
        else -> "Invalid month"
    }
}

fun main() {
    
    val month: Int= 2

    
    val day: Int= 30
    

    val season = determineSeason(month, day)
    println("The season is $season.")
}