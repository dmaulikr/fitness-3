//
//  ViewController.swift
//  MyFitness
//
//  Created by Alex on 3/28/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
         print (documentsPath)
        
        
        
        
//        let exercise: Exercise = NSEntityDescription.insertNewObject(forEntityName: "Exercise", into: DBController.getContext()) as! Exercise
//        
//                exercise.specification = "You need to do 10 push ups"
//                exercise.pictureTitle = "img3.png"
//                exercise.title = "Push-Ups"
//
//        let workout: Workout = NSEntityDescription.insertNewObject(forEntityName: "Workout", into: DBController.getContext()) as! Workout
//        
//                workout.title = "Chest2"
//                workout.addToExercises(exercise)
//        
                DBController.saveContext()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

