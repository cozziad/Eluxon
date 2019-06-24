//
//  ViewController.swift
//  Eluxon
//
//  Created by Anthony Cozzi on 6/24/19.
//  Copyright © 2019 Anthony Cozzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var onOffLbl: UILabel!
    @IBOutlet weak var toggleBtn: UIButton!
    
    var switchStatus: SwitchStatus = .off
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func toggleBtnWasPressed(_ sender: Any) {
        switchStatus.toggle()
        if switchStatus == .off{
            toggleBtn.setImage(UIImage (named: "offBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            onOffLbl.text = "🌚 OFF 🌚"
        }
        else{
            toggleBtn.setImage(UIImage (named: "onBtn")!, for: .normal)
            view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
            onOffLbl.text = "👻 ON 👻"
        }
        
    }
    
}

