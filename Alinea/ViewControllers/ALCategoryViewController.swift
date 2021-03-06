//
//  ALCategoryViewController.swift
//  Alinea
//
//  Created by jatin verma on 07/11/20.
//  Copyright © 2020 jatin verma. All rights reserved.
//

import UIKit

class ALCategoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var text = ["Stocks", "ETFs", "Crypto"]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "ALCatetoryTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "ALCatetoryTableViewCell")
        tableView.tableFooterView = UIView()
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ALCatetoryTableViewCell", for: indexPath) as! ALCatetoryTableViewCell
        cell.categoryLabel.text = text[indexPath.row]
        switch indexPath.row {
        case 0:
            cell.categoryView.backgroundColor = UIColor.hexStringToUIColor(hex: "A1A1F3")
        case 1:
            cell.categoryView.backgroundColor = UIColor.hexStringToUIColor(hex: "4C4DC3")
        default:
            cell.categoryView.backgroundColor = UIColor.hexStringToUIColor(hex: "F7D85C")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
