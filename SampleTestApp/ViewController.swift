//
//  ViewController.swift
//  SampleTestApp
//
//  Created by Manoj Singh on 20/8/21.
//

import UIKit

class ViewController: UITableViewController {
    
    let viewModel = PhotoViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.didReceivePhotos = {[weak self] in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.photos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = viewModel.photos[indexPath.row].author
        return cell
    }
}


