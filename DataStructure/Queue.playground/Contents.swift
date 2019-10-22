import UIKit

public struct Queue<T> {
    
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func enqueue(_ element: T){
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
    
    public var back: T? {
        return array.last
    }
}

var array = [2, 5, 12, 8, 0, 9, 22, 17, 3]
var queue = Queue<Int>()
queue.array = array
queue.front
queue.enqueue(10)
queue.back
queue.dequeue()
queue.front

