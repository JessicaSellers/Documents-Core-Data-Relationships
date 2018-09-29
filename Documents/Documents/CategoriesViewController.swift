//
//  CategoriesViewController.swift
//  Documents
//
//  Created by Jessica Elizabeth Sellers on 9/27/18.
//  Copyright © 2018 Jessica Sellers. All rights reserved.
//
import Foundation
import CoreData
import UIKit

class CategoriesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTableView: UITableView!
    
        var categoryArray = [Category]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Categories"

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        //fetchCategories(searchString: "")
    }
    
/*    @IBAction func addCategory(_ sender: Any) {
        let alert = UIAlertController(title: "Add Category", message: "Enter new category name.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Submit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if let textField = alert.textFields?[0], let name = textField.text {
                let categoryName = name.trimmingCharacters(in: .whitespaces)
            }

            self.addCategory(categoryName)
}

    } */
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)
        
        let category = categoryArray[indexPath.row]
        tableCell.textLabel?.text = category.name
        
        return tableCell
    }
    
    
}

