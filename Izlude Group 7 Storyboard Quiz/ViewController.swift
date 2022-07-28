//
//  ViewController.swift
//  Izlude Group 7 Storyboard Quiz
//
//  Created by PT.Koanba on 22/07/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var desc: UILabel!
    @IBOutlet weak var pict: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var price: UILabel!
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var pinkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        change(chairs[0])
    }
    
    @IBAction func tapButton(_ sender: UIButton) {
        if let selectedChair = chairs.first(where: {$0.name == sender.accessibilityLabel!}) {
            change(selectedChair)
        }
    }
    
    func change(_ c: Chair) {
        pict.image = UIImage(named: c.imgName)
        name.text = c.name
        price.text = c.price
        desc.text = c.description
        
        let buttonConfig = UIImage.SymbolConfiguration(scale: .medium)
        
        blueButton.setImage(UIImage(systemName: c.name != "Blue Chair" ? "circle.fill" :  "circle.inset.filled", withConfiguration: buttonConfig), for: .normal)
        redButton.setImage(UIImage(systemName: c.name != "Red Chair" ? "circle.fill" :  "circle.inset.filled", withConfiguration: buttonConfig), for: .normal)
        pinkButton.setImage(UIImage(systemName: c.name != "Pink Chair" ? "circle.fill" :  "circle.inset.filled", withConfiguration: buttonConfig), for: .normal)
    }
    
    
    
    struct Chair {
        let name: String
        let price: String
        let description: String
        let imgName: String
    }
    
    let chairs = [
        Chair(name: "Blue Chair", price: "Rp 20.000,-", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sit amet libero iaculis mauris pellentesque accumsan. Integer egestas elit vel mauris tempor semper. Ut placerat tellus nisi, vitae scelerisque leo fermentum ultrices. Suspendisse ac pulvinar quam, quis sollicitudin velit. Curabitur nisl mi, sodales convallis faucibus at, interdum nec eros. Curabitur vehicula ligula diam, sed sollicitudin nunc maximus vel. Etiam felis ex, auctor et purus sit amet, consequat auctor mi.", imgName: "blueChair"),
        Chair(name: "Red Chair", price: "Rp 21.000,-", description: "Pellentesque convallis venenatis interdum. Phasellus nec magna neque. Pellentesque molestie, nunc id varius posuere, eros leo varius elit, quis laoreet felis nibh vitae nunc. Maecenas at metus aliquet, semper metus vitae, mattis sapien. Phasellus egestas sodales tellus nec vestibulum. Nulla metus enim, tempus in massa eu, placerat fermentum neque. Aliquam volutpat odio eget dolor posuere ultrices. Suspendisse vitae purus eu tortor placerat aliquet. Nam sit amet luctus sem, vitae egestas nisi.", imgName: "redChair"),
        Chair(name: "Pink Chair", price: "Rp 22.000,-", description: "Phasellus id viverra odio, nec tincidunt massa. Curabitur in pharetra elit. Quisque lorem tortor, interdum non tellus eu, cursus auctor neque. Integer in lacus nec augue eleifend placerat. Sed massa metus, congue ac sem sit amet, luctus gravida sem. Etiam non mi id elit dictum mattis non at eros. Mauris at turpis arcu. Cras faucibus risus non leo tempor, a mollis turpis mattis. Nulla viverra tortor sollicitudin est porta, in scelerisque arcu consectetur. Quisque vestibulum posuere erat et venenatis.", imgName: "pinkChair"),
    ]
}
