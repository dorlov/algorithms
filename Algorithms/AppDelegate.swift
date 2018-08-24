//
//  AppDelegate.swift
//  Algorithms
//
//  Created by Dmitry Orlov on 8/24/18.
//  Copyright © 2018 algorithms. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let cell = LinkedList.list(from: [1, 2, 3, 4])

        LinkedList.insert(LLCell(value: 5), after: cell!.next!)

        return true
    }
}

