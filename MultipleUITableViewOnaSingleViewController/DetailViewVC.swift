//
//  DetailViewVC.swift
//  MultipleUITableViewOnaSingleViewController
//
//  Created by nikhil boriwale on 5/16/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit

class DetailViewVC: UIViewController {
   
    

    @IBOutlet weak var lblnamedetail: UILabel!
    @IBOutlet weak var lblcityDetail: UILabel!
    @IBOutlet weak var lbldescription: UILabel!
    
    
    @IBOutlet weak var Imgdetail: UIImageView!
   
    var pudata:PuneModel?
    var nanddata:NandedModel?
    var mudata:MumbaiModel?
    var nashdata:NashikModel?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if pudata?.city == "Pune"{
            Imgdetail.image = pudata?.img
            lblnamedetail.text = pudata?.title
            lblcityDetail.text = pudata?.city
        }else if mudata?.city ==  "mumbai"{
            Imgdetail.image = mudata?.img
            lblnamedetail.text = mudata?.title
            lblcityDetail.text = mudata?.city
            
        }else if nanddata?.city ==  "Nanded"{
            Imgdetail.image = nanddata?.img
            lblnamedetail.text = nanddata?.title
            lblcityDetail.text = nanddata?.city
        }else if nashdata?.city ==  "NAshik"{
            Imgdetail.image = nashdata?.img
            lblnamedetail.text = nashdata?.title
            lblcityDetail.text = nashdata?.city
        }
        
        
       // imagepasstosecond.image = passimg
        
    }
    
}



