//
//  ExercisesTableViewController.swift
//  MyFitness
//
//  Created by Alex on 3/28/17.
//  Copyright © 2017 Alex. All rights reserved.
//

import UIKit
import CoreData



class ExercisesTableViewController: UITableViewController {
    static var workoutType = ""
    
    var exercises = [Exercise]()
   
    lazy var fetchResultsController: NSFetchedResultsController = { () -> NSFetchedResultsController<Exercise> in
        let fetchRequest: NSFetchRequest<Exercise> = Exercise.fetchRequest()
        fetchRequest.sortDescriptors = [NSSortDescriptor(key: "title.date", ascending: false)]
        fetchRequest.predicate = NSPredicate(format: "workoutType == %@", workoutType)
        let context = DBController.getContext()
        let frc = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
        return frc
    }()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = ExercisesTableViewController.workoutType
        
        do {
            try fetchResultsController.performFetch()
        } catch let error {
            print (error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = fetchResultsController.sections?[section].numberOfObjects {
            return count
        }
        
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ExerciseTableViewCell

        let exercise = fetchResultsController.object(at: indexPath) 

        cell.picture.image = UIImage(named: exercise.pictureTitle!)
        cell.titleLabel.text = exercise.title
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        super.prepare(for: segue, sender: sender)
        
        switch(segue.identifier ?? ""){
            
        case "ShowDetails":
            guard let exerciseDetailViewController = segue.destination as? ExerciseViewController else {
                fatalError("Unexpected destination: \(segue.destination)")
            }
            
            guard let selectedExerciseCell = sender as? ExerciseTableViewCell else {
                fatalError("Unexpected destination: \(sender)")
            }
            
            guard let indexPath = tableView.indexPath(for: selectedExerciseCell) else {
                fatalError("The selected cell is not being displayed by the table")
            }
            
            let selectedExercise = fetchResultsController.object(at: indexPath)
            
            exerciseDetailViewController.exercise = selectedExercise
            
            
        default: fatalError("oOooOooOps")
        }
    }
   


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

}



 


