//
//  ViewController.swift
//  Shopping
//
//  Created by sHiKoOo on 2/13/19.
//  Copyright © 2019 sHiKoOo. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            let category = DataServices.instance.getCategories()[indexPath.row] // get data from dataService array []
            cell.updateView(category: category) // pass the data we got to updateView of cell func
            return cell
        }else {
            return CategoryCell()
        }
        
    }


}

