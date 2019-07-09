//
//  ViewController.swift
//  PercentageWidthLayoutCell
//
//  Created by Greg Alton on 7/4/19.
//  Copyright © 2019 Greg Alton. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    fileprivate let cellId = "id"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Percentage Layout Cell"
        tableView.register(ItemCell.self, forCellReuseIdentifier: cellId)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as? ItemCell else { fatalError("The dequeued cell is not an instance of ItemCell.")}
        return cell
    }


}

