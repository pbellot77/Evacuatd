//
//  EVStatusViewModel.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 9/3/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import Foundation


//Figure out how to use multiple titles in struct
struct EVStatusViewModel: TextCellDataSource {
    var title = ["Notified to Evacuate", "Preparing to Evacuate",
                 "Evacuating", "Safe and Evacuated",
                 "All Clear"]

}
