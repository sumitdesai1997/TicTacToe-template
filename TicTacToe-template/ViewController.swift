//
//  ViewController.swift
//  TicTacToe-template
//
//  Created by Mohammad Kiani on 2020-06-08.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lResult: UILabel!
    @IBOutlet weak var btn0: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btnPlayAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var isCrossTurn = true
    var winner = false;
    var array:[Int] = [2,2,2,2,2,2,2,2,2]
    
    @IBAction func clickBtn0(_ sender: Any) {
        crossORnaught(btn: btn0, number: 0)
    }
    
    @IBAction func clickBtn1(_ sender: Any) {
        crossORnaught(btn: btn1, number: 1)
    }
    
    @IBAction func clickBtn2(_ sender: Any) {
        crossORnaught(btn: btn2, number: 2)
    }
    
    @IBAction func clickBtn3(_ sender: Any) {
        crossORnaught(btn: btn3, number: 3)
    }
    
    @IBAction func clickBtn4(_ sender: Any) {
        crossORnaught(btn: btn4, number: 4)
    }
    
    @IBAction func clickBtn5(_ sender: Any) {
        crossORnaught(btn: btn5, number: 5)
    }
    
    @IBAction func clickBtn6(_ sender: Any) {
        crossORnaught(btn: btn6, number: 6)
    }
    
    @IBAction func clickBtn7(_ sender: Any) {
        crossORnaught(btn: btn7, number: 7)
    }
    
    @IBAction func clickBtn8(_ sender: Any) {
        crossORnaught(btn: btn8, number: 8)
    }
    
    func crossORnaught(btn : UIButton, number: Int) {
        if isCrossTurn {
            btn.setImage(UIImage(named: "cross"), for: .normal)
            array[number] = 0
            isCrossTurn = false
        } else {
            btn.setImage(UIImage(named: "nought"), for: .normal)
            array[number] = 1
            isCrossTurn = true
        }
        
        if(array[0] == array[1] && array[1] == array[2] && array[0] != 2){
            if(array[0] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[3] == array[4] && array[4] == array[5] && array[3] != 2){
            if(array[3] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[6] == array[7] && array[7] == array[8] && array[6] != 2){
            if(array[6] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[0] == array[3] && array[3] == array[6] && array[0] != 2){
            if(array[0] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[1] == array[4] && array[4] == array[7] && array[1] != 2){
            if(array[1] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[2] == array[5] && array[5] == array[8] && array[2] != 2){
            if(array[2] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[0] == array[4] && array[4] == array[8] && array[0] != 2){
            if(array[0] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        } else if(array[2] == array[4] && array[4] == array[6] && array[2] != 2){
            if(array[2] == 0){
                lResult.text = "Cross is winner"
            } else {
                lResult.text = "Nought is winner"
            }
            winner = true
        }
        
        if(winner){
            btn0.isEnabled = false
            btn1.isEnabled = false
            btn2.isEnabled = false
            btn3.isEnabled = false
            btn4.isEnabled = false
            btn5.isEnabled = false
            btn6.isEnabled = false
            btn7.isEnabled = false
            btn8.isEnabled = false
        }
    }
    
    @IBAction func clickPlayAgain(_ sender: Any) {
        lResult.text = "Game started"
        
        btn0.isEnabled = true
        btn1.isEnabled = true
        btn2.isEnabled = true
        btn3.isEnabled = true
        btn4.isEnabled = true
        btn5.isEnabled = true
        btn6.isEnabled = true
        btn7.isEnabled = true
        btn8.isEnabled = true
        
        btn0.setImage(nil, for: .normal)
        btn1.setImage(nil, for: .normal)
        btn2.setImage(nil, for: .normal)
        btn3.setImage(nil, for: .normal)
        btn4.setImage(nil, for: .normal)
        btn5.setImage(nil, for: .normal)
        btn6.setImage(nil, for: .normal)
        btn7.setImage(nil, for: .normal)
        btn8.setImage(nil, for: .normal)
    }
    
}

