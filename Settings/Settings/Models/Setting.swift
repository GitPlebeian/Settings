//
//  Setting.swift
//  Settings
//
//  Created by Jackson Tubbs on 8/5/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

import UIKit

class Setting {
    
    let name: String
    var isOn: Bool
    let icon: UIImage?
    
    init(name: String, isOn: Bool = false, icon: UIImage?) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
