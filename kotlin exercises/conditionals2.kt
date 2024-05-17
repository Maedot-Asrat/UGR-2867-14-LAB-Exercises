fun calculateSalary(hoursWorked: Double, hourlyRate: Double): Double {
    val regularHours = minOf(hoursWorked, 40.0)  
    val overtimeHours = maxOf(hoursWorked - 40, 0.0)  
    val overtimeRate = hourlyRate * 1.5  

    val regularPay = regularHours * hourlyRate  
    val overtimePay = overtimeHours * overtimeRate  

    val totalPay = regularPay + overtimePay  

    return totalPay
}

fun main() {
   
    val hours: Double =12.0

   
    val rate: Double = 0.5

    val salary = calculateSalary(hours, rate)
    println("Total salary: $salary")
}