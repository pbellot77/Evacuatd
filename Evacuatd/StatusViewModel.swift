//
//  StatusViewModel.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 9/2/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

struct StatusViewModel: StatusCellDataSource {
    var title = ["Notified of Evacuation", "Preparing to Evacuate", "Evacuating", "Safe and Evacuated", "All Clear"]
}

extension StatusViewModel: StatusCellDelegate {
    
}
