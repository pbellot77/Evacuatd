//
//  EVStatusViewController.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 9/2/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

private enum StatusType {
    case Status
   // case Other
}

private enum Status {
    case Notified
    case Preparing
    case Evacuating
    case ToSafe
    case AllClear
   // case Other
}

private struct Section {
    var type: StatusType
    var status: [Status]
}

class EVStatusViewController: UITableViewController {
    private var sections = [Section]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sections = [
            Section(type: .Status,
                    status: [.Notified, .Preparing, .Evacuating, .ToSafe, .AllClear]),
           // Section(type: .Other, status: [.Other])
        ]
        
        tableView.tableFooterView = UIView()
    }

    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sections[section].status.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch sections[section].type {
        case .Status:
            return "Current Status"
       // case .Other:
            //return "Other"
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cellIdentifier: String
        
            switch sections[indexPath.section].status[indexPath.row] {
            case .Notified, .Preparing, .Evacuating, .ToSafe, .AllClear:
                cellIdentifier = "StatusCell"
            //case .Other:
                cellIdentifier = "StatusCell"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        switch sections[indexPath.section].status[indexPath.row]{
        case .Notified:
            cell.textLabel?.text = "Notified to Evacuate"
        case .Preparing:
            cell.textLabel?.text = "Preparing to Evacuate"
        case .Evacuating:
            cell.textLabel?.text = "Evacuating"
        case .ToSafe:
            cell.textLabel?.text = "Evacuated and Safe"
        case .AllClear:
            cell.textLabel?.text = "All Clear"
        //case .Other:
            //cell.textLabel?.text = "Add other stuff here"
        }
        
        return cell
    }
}
