//
//  ConfirmViewController.swift
//  DataFlowSample
//
//  Created by Indra Sumawi on 16/05/19.
//  Copyright © 2019 Indra Sumawi. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    
    var nameText: String!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nameLabel.text = nameText
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
