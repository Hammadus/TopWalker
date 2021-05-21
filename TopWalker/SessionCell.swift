//
//  SessionCell.swift
//  TopWalker
//
//  Created by Dong Kelly on 5/21/21.
//

import UIKit

class SessionCell: UITableViewCell {

    @IBOutlet weak var sessionId: UILabel!
    
    @IBOutlet weak var peopleNumber: UILabel!
    
    @IBOutlet weak var weekNumber: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
