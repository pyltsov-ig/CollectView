//
//  ViewController.swift
//  CollectView
//
//  Created by ИГОРЬ on 16/01/2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionViewOne: UICollectionView!

    
    let arrayTemperature = ["temp.green",
    "temp.blackGreen",
    "temp.lightYellow",
    "temp.darkYellow",
    "temp.orange",
    "temp.red"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        arrayTemperature.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellOne", for: indexPath) as? Cell {
            let imageName = arrayTemperature[indexPath.row]
            cell.setTemperatureImage(tempName: imageName)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        print(arrayTemperature[indexPath.row])
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as?  ShowImageVC else {return}
        var currentSelectedImage:String!
        currentSelectedImage = arrayTemperature[indexPath.row]
        vc.setImageName(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
        
    }
    



}

