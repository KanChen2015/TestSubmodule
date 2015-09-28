//
//  ViewController.swift
//  TestSub
//
//  Created by Kan Chen on 9/28/15.
//  Copyright © 2015 Kan Chen. All rights reserved.
//

import UIKit
import DRCCameraSwift

class ViewController: UIViewController,DRCCustomImagePickerControllerDelegate {
    @IBOutlet var qqqq: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func aaa(sender: AnyObject) {
        let vv = DRCCustomImagePickerController()
        vv.customDelegate = self
        vv.showImagePicker(inViewController: self)
        
    }
    
    func customImagePickerDidFinishPickingImage(rectImage: UIImage) {
        qqqq.image = rectImage
    }
}

