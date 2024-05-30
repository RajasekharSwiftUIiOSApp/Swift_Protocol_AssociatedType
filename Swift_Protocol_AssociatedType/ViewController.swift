//
//  ViewController.swift
//  Swift_Protocol_AssociatedType
//
//  Created by rajasekhar pidikiti on 28/05/24.
//

import UIKit

protocol Stack {
    mutating func push(_ item: Int)
    mutating func pop() -> Int?
}
protocol Stack_Generic {
    associatedtype Element

    mutating func push(_ item: Element)
    mutating func pop() -> Element?
}

struct GenericStack<T>: Stack_Generic {
    private var items: [T] = []

    mutating func push(_ item: T) {
        items.append(item)
    }

    mutating func pop() -> T? {
        return items.popLast()
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Creating a stack of integers
        var integerStack = GenericStack<Int>()

        // Pushing values onto the stack
        integerStack.push(1)
        integerStack.push(2)

        // Popping values from the stack
        let _ = integerStack.pop() // Output: 2
        let _ = integerStack.pop() // Output: 1
        let poppedValue3 = integerStack.pop() // Output: nil, as the stack is now empty
        
        print("poppedValue3 \(String(describing: poppedValue3))")
        
        
        // Creating a stack of strings
        var stringStack = GenericStack<String>()

        // Pushing values onto the stack
        stringStack.push("Apple")
        stringStack.push("Orange")

        // Popping values from the stack
        let _ = stringStack.pop() // Output: "Orange"
        let _ = stringStack.pop() // Output: "Apple"
        let poppedString3 = stringStack.pop() // Output: nil, as the stack is now empty

    }


}

