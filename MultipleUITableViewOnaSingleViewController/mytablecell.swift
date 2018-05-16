//
//  mytablecell.swift
//  MultipleUITableViewOnaSingleViewController
//
//  Created by nikhil boriwale on 5/15/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class mytablecell: UITableViewCell {

    @IBOutlet weak var myimage: UIImageView!
    
    @IBOutlet weak var lblname: UILabel!
    @IBOutlet weak var lblcity: UILabel!
    var pudata:PuneModel!{
        didSet{
            lblname.text = pudata.title
            lblcity.text = pudata.city
            myimage.image = pudata.img
            
        }
    }
    var nanddata:NandedModel!{
        didSet{
            lblname.text = nanddata.title
            lblcity.text = nanddata.city
            myimage.image = nanddata.img
            
        }
    }
    var mudata:MumbaiModel!{
        didSet{
            lblname.text = mudata.title
            lblcity.text = mudata.city
            myimage.image = mudata.img
            
        }
    }
    var nashdata:NashikModel!{
        didSet{
            lblname.text = nashdata.title
            lblcity.text = nashdata.city
            myimage.image = nashdata.img
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
