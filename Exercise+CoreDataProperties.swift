//
//  Exercise+CoreDataProperties.swift
//  MyFitness
//
//  Created by Alex on 3/28/17.
//  Copyright © 2017 Alex. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Exercise {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Exercise> {
        return NSFetchRequest<Exercise>(entityName: "Exercise");
    }

    @NSManaged public var title: String?
    @NSManaged public var specification: String?
    @NSManaged public var pictureTitle: String?
    @NSManaged public var workoutType: String?

}
