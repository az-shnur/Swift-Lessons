import Foundation


//1. Решить квадратное уравнение.
//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.


//1. Решить квадратное уравнение
//ax2 + bx + c = 0
//D = b2 − 4ac
//x(^2) - 2x - 3 = 0

var x1: Double = 0.0
var x2: Double = 0.0

var a: Double = 1.0
var b: Double = -2.0
var c: Double = -3.0

var d: Double = b * 2 - 4 * a * c

if d > 0 {
    x1 = -b + sqrt(d) / 2 + a
    x2 = -b - sqrt(d) / 2 + a
    print("x1 = \(String(format: "%.3f", x1)), x2= \(String(format: "%.3f", x2)) \n")
} else if d == 0 {
    x1 = -b + sqrt(d) / 2 * a
    print("x1 = x2 = \(String(format: "%.3f", x1)) \n")
} else {
    print("У уровнения нет корней \n")
}


// 2. Найдём гипотенузу, периметр и площадь равнобедренного треугольника с катетами, равными 3 и 6 см

var cathet1: Double = 3.0
var cathet2: Double = 6.0

let hypotenuse = sqrt(cathet1 * cathet1 + cathet2 * cathet2)
let perimetr = cathet1 + cathet2 + hypotenuse
let square = cathet1 * cathet2 / 2

print("При катетах треугольника \(cathet1) см. и \(cathet2) см. гипотенуза будет равна \((hypotenuse * 10).rounded() / 10) см. перимерт равен \((perimetr * 10).rounded() / 10) см., а площадь треугольника равна \((square * 10).rounded() / 10) см. \n")


// 3. Рассчитаем итоговую сумму вклада на 5 лет со ставкой 10%, стартовой суммой 1000 и ежегодной капитализацией процентов

var startSum: Double = 1000
var persent: Double  = 0.1
var years: Int = 5

var yearPersent: Double = startSum * persent
var money: Double = startSum

for _ in 1...5 {
    yearPersent = money * persent
    money += yearPersent
}

print("Cумму вклада на \(years) лет со ставкой \(persent * 100)%, стартовой суммой \(startSum) и ежегодной капитализацией процентов равен \(money) \n")
