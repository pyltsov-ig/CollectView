//
//  Cell.swift
//  CollectView
//
//  Created by ИГОРЬ on 16/01/2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    
    func setTemperatureImage(thermName:String) {
        temperatureImage! = UIImageView(image: UIImage(named: thermName))
    }
    
}
