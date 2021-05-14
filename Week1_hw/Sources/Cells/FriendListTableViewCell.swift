//
//  FriendListTableViewCell.swift
//  Week1_hw
//
//  Created by kong on 2021/05/01.
//

import UIKit

class FriendListTableViewCell: UITableViewCell {
    static let identifier : String = "FriendListTableViewCell"
    
    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    @IBOutlet weak var friendState: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
