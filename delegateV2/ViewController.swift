//
//  ViewController.swift
//  delegateV2
//
//  Created by Trung on 10/1/19.
//  Copyright © 2019 Jibun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, LayThongTinSpDelegate {
  @IBOutlet weak var txtName: UITextField!
  @IBOutlet weak var txtCode: UITextField!
  @IBAction func btnChon(_ sender: Any) {
    let mhSanPham = storyboard?.instantiateViewController(withIdentifier: "ManHinhSanPham") as! ScreenSanPhamViewController
    mhSanPham.delegate = self
    present(mhSanPham, animated: true, completion: nil)
    
  }
  func LayThongTin(name: String, code: String) {
    txtCode.text = code
    txtName.text = name
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

