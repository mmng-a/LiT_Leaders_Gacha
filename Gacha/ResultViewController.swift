//
//  ResultViewController.swift
//  Gacha
//
//  Created by Masashi Aso on 2022/05/13.
//

import UIKit

class ResultViewController: UIViewController {
  
  @IBOutlet var button: UIButton!
  @IBOutlet var bgImageView: UIImageView!
  @IBOutlet var monsterImageView: UIImageView!
  
  var monsterArray = [UIImage]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let number = Int.random(in: 0..<10)
    monsterArray = [UIImage(named: "monster001.png")!,
                    UIImage(named: "monster002.png")!,
                    UIImage(named: "monster003.png")!,
                    UIImage(named: "monster004.png")!,
                    UIImage(named: "monster005.png")!,
                    UIImage(named: "monster006.png")!,
                    UIImage(named: "monster007.png")!,
                    UIImage(named: "monster008.png")!,
                    UIImage(named: "monster009.png")!,
                    UIImage(named: "monster010.png")!]
    monsterImageView.image = monsterArray[number]
    if number == 9 {
      bgImageView.image = UIImage(named: "bg_gold.png")
    } else if number > 6 {
      bgImageView.image = UIImage(named: "bg_red.png")
    } else {
      bgImageView.image = UIImage(named: "bg_blue.png")
    }
  }
  
  override func viewDidAppear (_ animated: Bool) {
    super.viewDidAppear(true)
    let animation = CABasicAnimation(keyPath: "transform")
    animation.fromValue = NSNumber(value: 0)
    animation.toValue = NSNumber(value: 2 * Double.pi)
    animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
    animation.duration = 5
    animation.repeatCount = Float.infinity
    bgImageView.layer.add(animation, forKey: nil)
  }
  
  @IBAction func back() {
    self.dismiss(animated: true)
  }
  
}
