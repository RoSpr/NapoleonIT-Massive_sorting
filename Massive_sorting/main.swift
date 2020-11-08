print("Введите массив чисел для сортировки через запятую без пробелов (вставка массива из буфера по неопределённой причине вызывает ошибку)")
var nums = readLine()

var array = nums!.split(separator: ",")
var num_array: [Int] = []

for num in array {
    num_array.append(Int(num)!)
}


var even_numbers: [Int] = []
var odd_numbers: [Int] = []

for number in num_array {
    if number % 2 == 0 {
        even_numbers.append(number)
    } else {
        odd_numbers.append(number)
    }
}

var even_sorted: [Int] = sort_ascend(array: even_numbers)
var odd_sorted: [Int] = sort_descend(array: odd_numbers)

var sorted_array: [Int] = []
sorted_array.append(contentsOf: even_sorted)
sorted_array.append(contentsOf: odd_sorted)

print(sorted_array)



func sort_ascend(array: [Int]) -> [Int] {
    var sorted_array: [Int] = []
    var new_array = array
    
    for _ in new_array {
        var start_number = new_array[0]
        var index = 0

        for (i, number) in new_array.enumerated() {
            if number < start_number {
                start_number = number
                index = i
            }
        }
        sorted_array.append(start_number)
        new_array.remove(at: index)
    }
    return sorted_array
}

func sort_descend(array: [Int]) -> [Int] {
    var sorted_array: [Int] = []
    var new_array = array
    
    for _ in new_array {
        var start_number = new_array[0]
        var index = 0

        for (i, number) in new_array.enumerated() {
            if number > start_number {
                start_number = number
                index = i
            }
        }
        sorted_array.append(start_number)
        new_array.remove(at: index)
    }
    return sorted_array
}
