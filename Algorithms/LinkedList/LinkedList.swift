//
//  LinkedList.swift
//  Algorithms
//
//  Copyright © 2018 algorithms. All rights reserved.
//

import Foundation

final class LinkedList {
    static func list<T>(from array: [T]) -> LLCell<T>? {
        var top: LLCell<T>? = nil

        let reversed = array.reversed()
        for item in reversed {
            if top == nil {
                top = LLCell(value: item, next: nil)
            } else {
                let current = LLCell(value: top?.value, next: top?.next)
                top = LLCell(value: item, next: current)
            }
        }

        return top
    }

    static func append<T>(_ cell: LLCell<T>, to top: LLCell<T>) {
        var iterator: LLCell<T>? = top
        while iterator?.next != nil {
            iterator = iterator?.next
        }
        iterator?.next = cell
    }

    static func insert<T>(_ cell: LLCell<T>, after afterCell: LLCell<T>) {
        let nextAfterCell = afterCell.next
        afterCell.next = cell
        cell.next = nextAfterCell
    }
}
