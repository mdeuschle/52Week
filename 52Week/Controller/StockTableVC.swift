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
        WebService.dataTask(with: .fiftyTwoWeek) { response in
            DispatchQueue.main.async {
                switch response {
                case let .success(data):
                    if let object = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] {
                        print(object)
                    }
                case let .failure(error):
                    print(error)
                }
            }
        }
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
