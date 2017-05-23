//
//  ViewController.swift
//  ZingMp3
//
//  Created by techmaster on 5/11/17.
//  Copyright © 2017 techmaster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!

    @IBOutlet weak var lbl_comback: UILabel!
    @IBOutlet weak var lbl_text: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
        lbl_text!.alpha = 0
        lbl_comback!.alpha = 0
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.logo!.alpha = 1
        }, completion: { (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lbl_text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                self.lbl_text!.alpha = 1
           
        }, completion:{ (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lbl_comback!.center = CGPoint(x: self.logo!.center.x, y: 600)
                self.lbl_comback!.alpha = 1
            })
        })

    })
}
}
