//
//  Workout+CoreDataProperties.swift
//  MyFitness
//
//  Created by Alex on 3/28/17.
//  Copyright © 2017 Alex. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Workout {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Workout> {
        return NSFetchRequest<Workout>(entityName: "Workout");
    }

    @NSManaged public var title: String?
    @NSManaged public var exercises: NSSet?

}

// MARK: Generated accessors for exercises
extension Workout {

    @objc(addExercisesObject:)
    @NSManaged public func addToExercises(_ value: Exercise)

    @objc(removeExercisesObject:)
    @NSManaged public func removeFromExercises(_ value: Exercise)

    @objc(addExercises:)
    @NSManaged public func addToExercises(_ values: NSSet)

    @objc(removeExercises:)
    @NSManaged public func removeFromExercises(_ values: NSSet)

}
