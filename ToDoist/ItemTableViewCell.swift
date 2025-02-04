//
//  ItemTableViewCell.swift
//  ToDoist
//
//  Created by Parker Rushton on 10/21/22.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    static let reuseIdentifier = "ItemTableViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var checkboxImageView: UIImageView!
    
    var item: Item?
    
    private let checkedImage = UIImage(systemName: "checkmark.square.fill")
    private let squareImage = UIImage(systemName: "square")

    
    func update(with item: Item) {
        self.item = item
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        let image = item.isCompleted ? checkedImage : squareImage
        checkboxImageView.image = image
    }
    
}
