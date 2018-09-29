//
//  Documents+CoreDataClass.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 9/27/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//
//

import Foundation
import CoreData
import UIKit

@objc(Documents)
public class Documents: NSManagedObject {
    var modifiedDate: Date? {
        get {
            return modified as Date?
        }
        set {
            modified = newValue as NSDate?
        }
    }
    
    convenience init?(name: String?, content: String?, category: Category) {
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        guard let managedContext = appDelegate?.persistentContainer.viewContext,
            let name = name, name != "" else {
                return nil
        }
        self.init(entity: Documents.entity(), insertInto: managedContext)
        self.name = name
        self.content = content
        
        if let size = content?.count {
            self.size = Double(size)
        } else {
            self.size = 0
        }
        
        self.modifiedDate = Date(timeIntervalSinceNow: 0)
        self.category = category
    }
    
    func update(name: String, content: String?, category: Category) {
        self.name = name
        self.content = content
        if let size = content?.count {
            self.size = Double(size)
        } else {
            self.size = 0
        }
        
        self.modifiedDate = Date(timeIntervalSinceNow: 0)
        self.category = category
    }
}


