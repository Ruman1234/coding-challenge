//
//  ViewController.swift
//  Coding Challenge
//
//  Created by Ruman on 16/10/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var viewModel : MoviesViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = MoviesViewModel(tableView: self.tableView)
    }
    

}

