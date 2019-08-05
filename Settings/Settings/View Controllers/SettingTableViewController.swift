//
//  SettingTableViewController.swift
//  Settings
//
//  Created by Jackson Tubbs on 8/5/19.
//  Copyright © 2019 Jax Tubbs. All rights reserved.
//

import UIKit

class SettingTableViewController: UITableViewController {

    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath)  as? SettingTableViewCell else {return UITableViewCell()}
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.setting = setting
        cell.delegate = self
        // Configure the cell...

        return cell
    }
} // End of class

extension SettingTableViewController: SettingTableViewCellDelegate {
    func cellSettingSwitchValueChanged(cell: SettingTableViewCell, isOn: Bool) {
        
        guard let setting = cell.setting, let indexPath = tableView.indexPath(for: cell) else {return}
        
        SettingController.shared.setIsOn(for: setting, isOn: isOn)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
