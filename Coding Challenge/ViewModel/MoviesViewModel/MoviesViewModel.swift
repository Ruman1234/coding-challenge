//
//  MoviesViewModel.swift
//  Coding Challenge
//
//  Created by Ruman on 16/10/2021.
//

import Foundation
import UIKit

class MoviesViewModel : NSObject{
    
    var VC :UIViewController?
    var tableView:UITableView
    var tableViewDataSpurce : MoviesTableViewModel? = nil
    
    init(tableView : UITableView) {
        
        self.tableView = tableView
        super.init()
        viewDidLoad()
    }
    
    func viewDidLoad() {
        loadMoviews()
        tableView.tableFooterView = UIView()
        
    }
    
    func setupTable() {
        tableView.delegate = tableViewDataSpurce
        tableView.dataSource = tableViewDataSpurce
        tableView.register(UINib(nibName: "MoviesTableViewCell", bundle: nil), forCellReuseIdentifier: "movieCell")
    }
    
    
    func loadMoviews()  {
        NetworkManager.SharedInstance.getMovies { res in
            
            guard let arr = res.mainData?.children else{return}
            self.tableViewDataSpurce = MoviesTableViewModel(childArray: arr)
            self.setupTable()
            self.tableView.reloadData()
        } failure: { Err in
            print("error")
        }

    }
}
