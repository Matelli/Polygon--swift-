//
//  ViewController.swift
//  PolygonNoCoreData
//
//  Created by Jonathan Schmidt on 04/06/2014.
//  Copyright (c) 2014 Matelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var titleLabel : UILabel
    @IBOutlet var descriptionLabel : UILabel
    @IBOutlet var polygonView : PolygonView
    var polygon = Polygon()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.refreshUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func refreshUI(){
        titleLabel.text = polygon.name
        descriptionLabel.text = "Ce polygone possède \(polygon.sides) cotés"
        polygonView.sides = polygon.sides
    }
    
    @IBAction func sliderDidChange(sender : UISlider) {
        polygon.sides = Int(sender.value)
        self.refreshUI()
    }
    
}

