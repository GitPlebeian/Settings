//
//  SettingController.swift
//  Settings
//
//  Created by Jackson Tubbs on 8/5/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

import Foundation
import UIKit.UIImage

class SettingController {
    
    // MARK: - Shared instance source of truth
    static let shared = SettingController()
    var settings: [Setting] = []
    
    init() {
        
        let apps = Setting(name: "Apps", icon: UIImage(named: "apps"))
        let books = Setting(name: "Books", icon: UIImage(named: "books"))
        let music = Setting(name: "Music", icon: UIImage(named: "music"))
        
        settings = [apps, books, music]
    }

}
