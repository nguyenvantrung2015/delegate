//
//  ScreenSanPhamViewController.swift
//  delegateV2
//
//  Created by Trung on 10/1/19.
//  Copyright © 2019 Jibun. All rights reserved.
//

import UIKit
protocol LayThongTinSpDelegate {
  func LayThongTin(name: String, code:
  String)
}
class ScreenSanPhamViewController: UIViewController {
  @IBOutlet weak var tblChonSanPham: UITableView!
    let datas = data
    var delegate: LayThongTinSpDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
      tblChonSanPham.delegate = self
      tblChonSanPham.dataSource = self
    }
}

extension ScreenSanPhamViewController: UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    if delegate != nil {
      delegate?.LayThongTin(name: datas[indexPath.row].name, code: datas[indexPath.row].code)
    }
    
    self.dismiss(animated: true, completion: nil)
  }
}

extension ScreenSanPhamViewController: UITableViewDataSource{
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return datas.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CellSp")
    cell?.detailTextLabel?.text =  datas[indexPath.row].name
    cell?.textLabel?.text = datas[indexPath.row].code
    return cell!
  }
}
