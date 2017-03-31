//
//  ExerciseViewController.swift
//  MyFitness
//
//  Created by Alex on 3/29/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController {
    
    var exercise: Exercise?
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let exercise = exercise {
            self.navigationItem.title = exercise.title
            pictureImageView.image = UIImage(named: exercise.pictureTitle!)
            descriptionLabel.text = exercise.specification
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

