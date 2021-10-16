//
//  MoviesViewModel.swift
//  Coding Challenge
//
//  Created by Ruman on 16/10/2021.
//

import Foundation
import UIKit
class MoviesTableViewModel :NSObject, UITableViewDelegate , UITableViewDataSource{
    
    var childArray = [Children]()
    
    init(childArray : [Children]) {
        self.childArray = childArray
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return childArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let index = childArray[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MoviesTableViewCell else { return UITableViewCell() }
        
        cell.setupCell(child: index)
    
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
