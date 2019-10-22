import UIKit

public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T){
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    
    public var top: T? {
        return array.last
    }
}

var array = [7, 15, 2, 22, 0, 12, 14, 3, 9]

var stack = Stack<Int>()
stack.array = array
stack.count
stack.push(11)
stack.count
stack.pop()
stack.count
stack.top
