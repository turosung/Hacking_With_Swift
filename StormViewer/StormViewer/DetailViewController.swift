//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Nuhu Sulemana on 28/10/2023.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var detailImageView: UIImageView!
    var selectedImages: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImages {
            detailImageView.image = UIImage(named: imageToLoad)
        }
    }
}
