//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Karthik Thirunavukkarasan on 9/27/17.
//  Copyright © 2017 Karthik Thiru. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logoutTapped(_ sender: Any) {
        dismiss(animated: true, completion:nil)
    }

}
