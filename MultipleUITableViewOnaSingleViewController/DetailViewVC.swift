//
//  DetailViewVC.swift
//  MultipleUITableViewOnaSingleViewController
//
//  Created by nikhil boriwale on 5/16/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController {
   
    

    @IBOutlet weak var collectionviewmy: UICollectionView!
    @IBOutlet weak var lblnamedetail: UILabel!
    @IBOutlet weak var lblcityDetail: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    
    
    @IBOutlet weak var Imgdetail: UIImageView!
   
    
    
    var stringname :String?
    var stringcity:String?
      var stringdescription:String?
    var Stringimage:UIImage?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        lblnamedetail.text = stringname
        lblcityDetail.text = stringcity
        lbldescription.text = stringdescription
        Imgdetail.image = Stringimage
       // imagepasstosecond.image = passimg
        
    }
    
}



