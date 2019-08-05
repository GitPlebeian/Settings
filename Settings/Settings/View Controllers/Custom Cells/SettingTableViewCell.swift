//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Jackson Tubbs on 8/5/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool)
}

class SettingTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // MARK: - Properties
    
    weak var delegate: SettingTableViewCellDelegate?
    var setting: Setting? {
        didSet {
            updateCellView()
        }
    }
    
    // MARK: - Actions
    
    @IBAction func settingSwitchValueChanged(_ sender: Any) {
        delegate?.cellSettingSwitchValueChanged(cell: self, isOn: settingSwitch.isOn)
    }
    
    
    // MARK: - Custom Methods
    
    func updateCellView() {
        if let setting = setting {
            iconImageView.image = setting.icon
            settingSwitch.isOn = setting.isOn
            settingNameLabel.text = setting.name
            
            backgroundColor = setting.isOn ? .blue : .white
        } else {
            iconImageView.image = nil
            settingNameLabel.text = ""
            settingSwitch.isOn = false
            
            backgroundColor = .white
        }
    }
}
