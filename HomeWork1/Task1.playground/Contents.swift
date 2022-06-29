protocol HomeworkService {
    // Функция деления с остатком, должна вернуть в первой части результат деления, во второй части остаток.
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int)

    // Функция должна вернуть числа фибоначчи.
    func fibonacci(n: Int) -> [Int]

    // Функция должна выполнить сортировку пузырьком.
    func sort(rawArray: [Int]) -> [Int]

    // Функция должна преобразовать массив строк в массив первых символов строки.
    func firstLetter(strings: [String]) -> [Character]

    // Функция должна отфильтровать массив по условию, которое приходит в параметре `condition`. (Нельзя юзать `filter` у `Array`)
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int]
}

struct Function : HomeworkService {
    func divideWithRemainder(_ x: Int, by y: Int) -> (Int, Int) {
        return (x / y, x % y)
    }
    
    
    func fibonacci(n: Int) -> [Int] {
        var result = [0 , 1]
        if n == 0 {
            return [0]
        }
        else if n == 1 {
            return [1]
        }
        for i in 2 ... n {
            result.append((result[i - 1]) + (result[i - 2]))
        }
        return result
    }
    
    
    func sort(rawArray: [Int]) -> [Int] {
        if rawArray.count == 0 {
            return []
        }
        if rawArray.count == 1{
            return rawArray
        }
        var result = rawArray
        for i in 0 ..< result.count {
            for j in 0 ..< result.count - i - 1 {
                if result[j] > result[j + 1] {
                    result.swapAt(j + 1, j)
                }
            }
        }
        return result
    }
    
    
    func firstLetter(strings: [String]) -> [Character] {
        var result : [Character] = []
        for string in strings {
            var curString = string
            if curString.isEmpty {
                continue
            } else {
            result.append(curString.first!)
            }
        }
        return result
    }
    
    
    func filter(array: [Int], condition: ((Int) -> Bool)) -> [Int] {
        var result : [Int] = []
        for num in array {
            if condition(num) {
                result.append(num)
            }
        }
        return result
    }
}


func condition(_ x : Int) -> Bool{
    guard x % 2 == 0 else {return false}
    return true
}


let n = Function()
print(n.divideWithRemainder(5, by: 5))
print(n.fibonacci(n: 3))
print(n.sort(rawArray: [7, 9, 1, -9, 4]))
print(n.firstLetter(strings: ["sdk", "pdca", ""]))
print(n.filter(array: [0, 2, 3, 5, 4], condition: condition))
