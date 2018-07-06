//
//  ViewController.swift
//  FHXEmptyPage
//
//  Created by fenghanxu on 07/06/2018.
//  Copyright (c) 2018 fenghanxu. All rights reserved.
//

import UIKit
import FHXEmptyPage

class ViewController: UIViewController {
  
  let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
      
      tableView.emptyView = EmptyPageView.onlyText(text: "success")
      
      tableView.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
      tableView.delegate = self
      tableView.dataSource = self
      tableView.backgroundColor = UIColor.white
      tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
      tableView.tableFooterView = UIView()
      view.addSubview(tableView)
  }

}

extension ViewController:UITableViewDelegate,UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func numberOfSections(in tableView: UITableView) -> Int {
    return 0
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 44
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! UITableViewCell

    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("indexPath.item = \(indexPath.item)")
  }
  
}
