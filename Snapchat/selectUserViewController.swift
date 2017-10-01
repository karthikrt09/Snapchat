//
//  selectUserViewController.swift
//  Snapchat
//
//  Created by Karthik Thirunavukkarasan on 10/1/17.
//  Copyright © 2017 Karthik Thiru. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class selectUserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource=self
        self.tableView.delegate=self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }

}
