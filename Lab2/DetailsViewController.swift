//
//  DetailsViewController.swift
//  Lab2
//
//  Created by Erik Sveningsson on 2019-11-07.
//  Copyright © 2019 Erik Sveningsson. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var coverImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    
    var work = String()
    var year = String()
    var image = String()
    var information = String()
    

    
    override func viewWillAppear(_ animated: Bool) {
        coverImageView.image = UIImage(systemName: image)
        titleLabel.text = work
        yearLabel.text = year
        infoLabel.text = information
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
