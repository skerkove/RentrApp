//
//  LandingPageViewController.swift
//  Rentr
//
//  Created by Scott Kerkove on 6/3/20.
//  Copyright © 2020 Scott Kerkove. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var propTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else { return UITableViewCell()}
        cell.textLabel?.text = "Hello"
        return cell
    }
    



}
