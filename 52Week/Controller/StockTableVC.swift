//
//  StockTableVC.swift
//  52Week
//
//  Created by Matt Deuschle on 3/17/18.
//  Copyright © 2018 Matt Deuschle. All rights reserved.
//

import UIKit

class StockTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StockCell", for: indexPath) as? StockCell else {
            return UITableViewCell()
        }
        return cell
    }
}
