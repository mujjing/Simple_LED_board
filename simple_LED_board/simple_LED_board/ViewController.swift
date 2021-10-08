//
//  ViewController.swift
//  simple_LED_board
//
//  Created by 전지훈 on 2021/10/08.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

    

    @IBOutlet weak var contentsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.contentsLabel.textColor = .yellow
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingViewControl = segue.destination as? SettingViewController {
            settingViewControl.delegates = self
            settingViewControl.ledText = self.contentsLabel.text
            settingViewControl.textColor = self.contentsLabel.textColor
            settingViewControl.backgroundColor = self.view.backgroundColor ?? .black
        }
    }

    func changedSetting(text: String?, textColor: UIColor, backgroudColor: UIColor) {
        if let text = text {
            self.contentsLabel.text = text
        }
        self.contentsLabel.textColor = textColor
        self.view.backgroundColor = backgroudColor
    }
}

