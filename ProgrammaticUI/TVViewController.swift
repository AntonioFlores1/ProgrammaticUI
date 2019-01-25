//
//  TVViewController.swift
//  ProgrammaticUI
//
//  Created by Pursuit on 1/23/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import UIKit

class TVViewController: UIViewController {

    lazy var myTableView: UITableView = {
        let tv = UITableView()
        tv.dataSource = self
        tv.delegate = self
     return tv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .orange
self.view.addSubview(myTableView)
        self.myTableView.register(TableViewCell.self, forCellReuseIdentifier: "testcell")
        setConstraints()
    }
    func setConstraints() {
        myTableView.translatesAutoresizingMaskIntoConstraints = false
        myTableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        myTableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        myTableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        myTableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
}

extension TVViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = myTableView.dequeueReusableCell(withIdentifier: "testcell", for: indexPath) as? TableViewCell else {return UITableViewCell()}
           cell.textLabel?.text = indexPath.row.description
   return cell
        
    }
    

}
