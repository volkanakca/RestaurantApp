//
//  KonumView.swift
//  RestoranApp
//
//  Created by batuhankarasu on 18.12.2020.
//

import UIKit

@IBDesignable class KonumView: TemelView {
    @IBOutlet weak var btnIzinVer : UIButton!
    @IBOutlet weak var btnReddet : UIButton!
    var izinVerdi : (() -> Void)?
    
    
    @IBAction func btnIzinVerClicked(_ sender : UIButton) {
        izinVerdi?()
    }
    @IBAction func btnReddetClicked(_ sender : UIButton) {
        
    }

}
