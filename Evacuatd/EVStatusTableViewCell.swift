//
//  EVStatusTableViewCell.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 9/2/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

protocol TextCellDataSource {
    var title: Array<String> { get }
}

class EVStatusTableViewCell: UITableViewCell {

    @IBOutlet weak var statusLabel: UILabel!
    
    fileprivate var dataSource: TextCellDataSource?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(withDataSource dataSource: TextCellDataSource) {
        self.dataSource = dataSource
        
    
        self.statusLabel. //need text for status label from array
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
