//
//  TableViewCell.swift
//  ProgrammaticUI
//
//  Created by Pursuit on 1/23/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Where you at"
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier:reuseIdentifier)
        self.addSubview(myLabel)
        setCon()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setCon(){
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 11).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -11).isActive = true
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
