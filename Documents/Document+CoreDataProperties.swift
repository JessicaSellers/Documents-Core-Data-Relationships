//
//  Document+CoreDataProperties.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 9/21/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//
//

import Foundation
import CoreData


extension Document {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Document> {
        return NSFetchRequest<Document>(entityName: "Document")
    }

    @NSManaged public var name: String?
    @NSManaged public var content: String?

}
