//
//  UserCollectionViewCell.swift
//  SimpleChat
//
//  Created by Developer on 17.07.2023.
//

import UIKit
import SDWebImage

class UserCollectionViewCell: UICollectionViewCell, Registrateble {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet private weak var firstNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
    }
    
    func fillAddNewUser() {
        avatarImageView.image = UIImage(named: "cellCircle")
        firstNameLabel.text = "Add New"
    }
    
    func fillWith(_ user: User) {
        avatarImageView.sd_setImage(with: URL(string: user.imageUrl))
        firstNameLabel.text = user.firstName
    }
}