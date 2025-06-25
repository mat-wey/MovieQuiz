//
//  ViewController.swift
//  sprint task 4 2
//
//  Created by Матвей Симонов on 25.06.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counts: UILabel!
    @IBOutlet weak var buttonДа: UIButton!
    @IBOutlet weak var buttonНет: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        counts.text = "0/10"
    }
    private var count = 0
    @IBAction func buttonPlus1Нет(_ sender: Any) {
        count += 1
        counts.text = "\(count)/\(10)"
    }
    
    @IBAction func buttonPlus1Да(_ sender: Any) {
        count += 1
        counts.text = "\(count)/\(10)"
    }
}

