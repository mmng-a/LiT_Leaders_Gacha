//
//  ViewController.swift
//  Gacha
//
//  Created by Masashi Aso on 2022/05/13.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func gacha(_ sender: UIButton) {
    self.performSegue(withIdentifier: "result", sender: nil)
  }
}

