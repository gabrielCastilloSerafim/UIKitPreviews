//
//  CustomCell.swift
//  previews
//
//  Created by Gabriel Castillo Serafim on 11/6/23.
//

import UIKit

class CustomCell: UITableViewCell {
    
    static let reuseID = "CustomCellReuseID"
    
    private lazy var myLabel: UILabel = {
       let label = UILabel()
        label.text = "Teste"
        label.font = .systemFont(ofSize: 15, weight: .bold)
        return label
    }()
    
    func configure() {
        contentView.addSubview(myLabel)
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            myLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)])
    }
}
