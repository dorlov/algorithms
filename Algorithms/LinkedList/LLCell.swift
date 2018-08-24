//
//  LLCell.swift
//  Algorithms
//
//  Copyright © 2018 algorithms. All rights reserved.
//

import Foundation

final class LLCell<T> {
    let value: T?
    var next: LLCell<T>?

    init(value: T?, next: LLCell<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension LLCell {
    static var sentinel: LLCell {
        return LLCell(value: nil)
    }
}

extension LLCell: CustomStringConvertible {
    var description: String {
        var message = ""

        var nextNode: LLCell<T>? = LLCell(value: value, next: next)
        while let top = nextNode {
            let valueDescription = top.value.flatMap { String(describing: $0) }
            let nextValueDescription =  top.next?.value.flatMap { String(describing: $0) }

            message += "-> Node [Value: \(valueDescription ?? "nil"), Next: \(nextValueDescription ?? "nil")] \n"
            nextNode = top.next
        }

        return message
    }
}
