//
//  EVStatusViewController.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 8/29/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

class EVStatusViewController: UIViewController {
    
    enum Status: Int {
        case notified
        case preparing
        case evacuating
        case safe
        case allClear
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table view data sources
    
    func tableView(_ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        return Status
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StatusCell", for: indexPath) 
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
