//
//  MoviesTableViewCell.swift
//  Coding Challenge
//
//  Created by Ruman on 16/10/2021.
//

import UIKit
import SDWebImage
class MoviesTableViewCell: UITableViewCell {

    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var superTypeLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var thumbBtn: UIButton!
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var shareBtn: UIButton!
    
    @IBOutlet weak var mainViwq: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupCell(child : Children)  {
        guard let data = child.data else {
            return
        }
        mainViwq.dropShadow()
        typeLbl.text = data.subreddit
        titleLbl.text = data.title
        superTypeLbl.text = ". \(data.subreddit_name_prefixed ?? "") . 4h"
        
        movieImage.sd_setImage(with: URL(string: data.thumbnail ?? ""), placeholderImage: UIImage(named: "placeholder.png"))

        
    }
    
}
