fun main() {
    
    val sideA: Double= 12.0
    val sideB: Double = 12.0
    val sideC: Double =12.0

    val triangleType = when {
        sideA == sideB && sideB == sideC -> "Equilateral"
        sideA == sideB || sideA == sideC || sideB == sideC -> "Isosceles"
        else -> "Scalene"
    }

    println("The triangle is $triangleType.")
}