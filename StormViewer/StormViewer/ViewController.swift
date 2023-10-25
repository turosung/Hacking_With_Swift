//
//  ViewController.swift
//  StormViewer
//
//  Created by Nuhu Sulemana on 25/10/2023.
//

import UIKit

class ViewController: UITableViewController {
    
    var pictures: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        guard let path = Bundle.main.resourcePath else {
            return
        }
        do {
            let items = try fm.contentsOfDirectory(atPath: path)
            for item in items {
                if item.hasPrefix("nssl") {
                    // Append picture here
                    pictures.append(item)
                }
            }
        } catch {
            print("Images not found")
        }
        print(pictures)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
}

