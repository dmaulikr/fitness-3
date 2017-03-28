//
//  ExerciseTableViewCell.swift
//  MyFitness
//
//  Created by Alex on 3/28/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class ExerciseTableViewCell: UITableViewCell {
    @IBOutlet weak var picture: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
