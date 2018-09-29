//
//  Category+CoreDataProperties.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 9/27/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?
    @NSManaged public var documents: Documents?

}
