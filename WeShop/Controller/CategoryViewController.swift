//
//  ViewController.swift
//  WeShop
//
//  Created by Bùi Minh on 14/4/25.
//

import UIKit

class CategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var categoryTable: UITableView!
    var categories: [Category]!

    override func viewDidLoad() {
        super.viewDidLoad()
        categories = DataService.instance.getCategories()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = categories[indexPath.row]
            cell.updateViews(category: category)
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductViewController{
            assert(sender as? Category != nil)
            let btnBack = UIBarButtonItem()
            btnBack.tintColor = .black
            btnBack.title = ""
            navigationItem.backBarButtonItem = btnBack
            productsVC.initProducts(category: sender as! Category)
        }
    }
}

