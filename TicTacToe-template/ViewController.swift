//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Lresult: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btnPlayAgain: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var isCrossTurn = true
    
    @IBAction func clickBtn1(_ sender: UIButton) {
        crossORnaught(btn: btn1)
    }
    
    @IBAction func clickBtn2(_ sender: UIButton) {
        crossORnaught(btn: btn2)
    }
    
    @IBAction func clickBtn3(_ sender: UIButton) {
        crossORnaught(btn: btn3)
    }
    
    @IBAction func clickBtn4(_ sender: UIButton) {
        crossORnaught(btn: btn4)
    }
    
    @IBAction func clickBtn5(_ sender: UIButton) {
        crossORnaught(btn: btn5)
    }
    
    @IBAction func clickBtn6(_ sender: UIButton) {
        crossORnaught(btn: btn6)
    }
    
    @IBAction func clickBtn7(_ sender: UIButton) {
        crossORnaught(btn: btn7)
    }
    
    @IBAction func clickBtn8(_ sender: UIButton) {
        crossORnaught(btn: btn8)
    }
    
    @IBAction func clickBtn9(_ sender: UIButton) {
        crossORnaught(btn: btn9)
    }
        
    @IBAction func clickPlayAgain() {
        Lresult.text = ""
        btn1.setImage(nil, for: .normal)
    }
    
    func crossORnaught(btn : UIButton) {
        if isCrossTurn {
            btn.setImage(UIImage(named: "cross"), for: .normal)
            isCrossTurn = false
        } else {
            btn.setImage(UIImage(named: "nought"), for: .normal)
            isCrossTurn = true
        }
    }
    
}

