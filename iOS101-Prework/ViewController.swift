//
//  ViewController.swift
//  iOS101-Prework
//
//  Created by Cheryl Chen on 1/5/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage(for: imageSwitch.isOn)
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        func changeColor() -> UIColor{
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
        }
        
        let randomColor = changeColor()
        nameLabel.textColor = randomColor
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        updateImage(for: sender.isOn)
    }
    
    private func updateImage(for isOn: Bool) {
        if isOn {
            imageView.image = UIImage(named: "thisisfine")
        } else {
            imageView.image = UIImage(named: "cutecat")
        }
    }
}

