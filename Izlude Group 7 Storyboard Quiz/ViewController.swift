//
//  ViewController.swift
//  Izlude Group 7 Storyboard Quiz
//
//  Created by PT.Koanba on 22/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buttonBlueChair: UIButton!
    @IBOutlet weak var buttonRedChair: UIButton!
    @IBOutlet weak var buttonPinkChair: UIButton!
    @IBOutlet weak var labelChair: UILabel!
    @IBOutlet weak var labelRupiah: UILabel!
    @IBOutlet weak var buttonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonNext.layer.cornerRadius = 20
    }
    @IBAction func tapPressBlueChair(_ sender: UIButton) {
        buttonBlueChair.setImage(UIImage(systemName: "circle.circle.fill"), for: .normal)
        buttonRedChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        buttonPinkChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        imageView.image = UIImage (named: "blueChair")
        labelChair.text = "Blue Chair"
        labelRupiah.text = "Rp.20.000,-"
    }
    @IBAction func tapPressRedChair(_ sender: UIButton) {
        buttonBlueChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        buttonRedChair.setImage(UIImage(systemName: "circle.circle.fill"), for: .normal)
        buttonPinkChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        imageView.image = UIImage (named: "redChair")
        labelChair.text = "Red Chair"
        labelRupiah.text = "Rp.25.000,-"
    }
    @IBAction func tapPressPinkChair(_ sender: UIButton) {
        buttonBlueChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        buttonRedChair.setImage(UIImage(systemName: "circle.fill"), for: .normal)
        buttonPinkChair.setImage(UIImage(systemName: "circle.circle.fill"), for: .normal)
        imageView.image = UIImage (named: "pinkChair")
        labelChair.text = "Pink Chair"
        labelRupiah.text = "Rp.30.000,-"
    }
    

}

