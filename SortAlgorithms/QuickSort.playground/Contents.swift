import UIKit

func partition<T: Comparable>(_ a: inout [T], left: Int, right: Int) -> Int {
    let pivot = a[right]
    
    var i = left
    for j in left..<right {
        if a[j] <= pivot {
            (a[i], a[j]) = (a[j], a[i])
            i += 1
        }
    }
    
    (a[i], a[right]) = (a[right], a[i])
    return i
}


func quicksort<T: Comparable>(_ a: inout [T], left: Int, right: Int) {
    if left < right {
        let p = partition(&a, left: left, right: right)
        quicksort(&a, left: left, right: p - 1)
        quicksort(&a, left: p + 1, right: right)
    }
}

var list = [ 10, 0, 3, 9, 2, 13, 25, 22, 1, 5, 7, -1, 8 ]
quicksort(&list, left: 0, right: list.count - 1)
