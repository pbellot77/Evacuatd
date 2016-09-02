//
//  EVStatusTableViewCell.swift
//  Evacuatd
//
//  Created by Patrick Bellot on 9/2/16.
//  Copyright © 2016 Bell OS, LLC. All rights reserved.
//

import UIKit

protocol StatusCellDataSource {
    var title: [String] { get }
}

protocol StatusCellDelegate {
    var textColor: UIColor { get }
    var font: UIFont { get }
}

extension StatusCellDelegate {
    
    var textColor: UIColor {
        return UIColor.green
    }
    
    var font: UIFont {
        return UIFont.systemFont(ofSize: 20)
    }
}

class StatusTableViewCell: UITableView {
    
    @IBOutlet fileprivate weak var label: UILabel!
    
    internal var dataSource: StatusCellDataSource?
    internal var delegate: StatusCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(withDataSource dataSource: StatusCellDataSource, delegate: StatusCellDelegate?) {
        self.dataSource = dataSource
        self.delegate = delegate
        
        label.text = dataSource.title
    }
}
