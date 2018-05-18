//
//  ViewController.swift
//  MultipleUITableViewOnaSingleViewController
//
//  Created by nikhil boriwale on 5/15/18.
//  Copyright © 2018 infostretch. All rights reserved.
//

import UIKit


class ViewController: UIViewController{
    @IBOutlet weak var mytable: UITableView!
    var MumbaiData:[MumbaiModel] = []
    var NashikData:[NashikModel] = []
    var puneData:[PuneModel] = []
    var NandedData:[NandedModel] = []
    
    
    @IBOutlet weak var segmentoutlet: UISegmentedControl!
    @IBAction func actionsegmentClick(_ sender: UISegmentedControl) {
        
        
        self.mytable.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mytable.backgroundColor = UIColor.groupTableViewBackground
        MumbaiData  = [
            MumbaiModel (img: #imageLiteral(resourceName: "a2-1"), title: "M1", city: "mumbai", Description: "Mumbai1 is Good"),
        MumbaiModel(img: #imageLiteral(resourceName: "p5-1"), title: "M2", city: "mumbai",Description: "Mumbai2 is Good"),
        MumbaiModel(img: #imageLiteral(resourceName: "p1-1"), title: "M3", city: "mumbai",Description: "Mumbai3 is Good"),
        MumbaiModel(img: #imageLiteral(resourceName: "a5-1"), title: "M4", city: "mumbai",Description: "Mumbai4 is Good"),
        MumbaiModel(img: #imageLiteral(resourceName: "b2-1"), title: "M5", city: "mumbai",Description: "Mumbai5 is Good"),
        MumbaiModel(img: #imageLiteral(resourceName: "m5-1"), title: "M6", city: "mumbai",Description: "Mumbai6 is Good")
        ]
        puneData = [PuneModel(img: #imageLiteral(resourceName: "p2-1"), title: "P1", city: "Pune",Description: "pune1 is Good"),
                    PuneModel(img: #imageLiteral(resourceName: "b2-1"), title: "P2", city: "Pune",Description: "pune2 is Good"),
                    PuneModel(img: #imageLiteral(resourceName: "p1-1"), title: "P3", city: "Pune",Description: "pune3 is Good")]
        
        NashikData = [NashikModel(img: #imageLiteral(resourceName: "p2-1"), title: "N1", city: "NAshik",Description: "NAshik1 is Good"),NashikModel(img: #imageLiteral(resourceName: "b5-1"), title: "N2", city: "NAshik",Description: "NAshik2 is Good"),NashikModel(img: #imageLiteral(resourceName: "b2-1"), title: "N3", city: "NAshik",Description: "NAshik3 is Good")]

        NandedData = [NandedModel(img: #imageLiteral(resourceName: "m4-1"), title: "na1", city: "Nanded",Description: "Nanded1 is Good"),NandedModel(img: #imageLiteral(resourceName: "b5-1"), title: "n2", city: "Nanded",Description: "Nanded2 is Good"),NandedModel(img: #imageLiteral(resourceName: "b1-1"), title: "na3", city: "Nanded",Description: "Nanded3 is Good")]
        
        
    }

}
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var value = 0
        switch segmentoutlet.selectedSegmentIndex{
        case 0:
            value = puneData.count
            break
        case 1:
            value = NandedData.count
            break
        case 2:
            value = MumbaiData.count
            break
        case 3:
            value = NashikData.count
            break
        default:
            break
        }
        return value
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mytablecell", for: indexPath) as! mytablecell
        switch segmentoutlet.selectedSegmentIndex{
        case 0:
            cell.pudata = puneData[indexPath.row]
            break
        case 1:
            cell.nanddata = NandedData[indexPath.row]
            break
        case 2:
            cell.mudata = MumbaiData[indexPath.row]
            break
        case 3:
            cell.nashdata = NashikData[indexPath.row]
            break
        default:
            break
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let passingdata : DetailViewVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewVC")
            as! DetailViewVC
        
        switch segmentoutlet.selectedSegmentIndex{
        case 0:
           passingdata.pudata = puneData[indexPath.row]
            break
        case 1:
            passingdata.nanddata = NandedData[indexPath.row]
            
           break
        case 2:
            passingdata.mudata = MumbaiData[indexPath.row]
            
             break
        case 3:
            passingdata.nashdata = NashikData[indexPath.row]
            
            
            break
        default:
            break
        }
        
       
      
        self.navigationController?.pushViewController(passingdata, animated: true)
 
        
    }
    
    
}
