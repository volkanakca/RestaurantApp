//
//  KonumViewController.swift
//  RestoranApp
//
//  Created by batuhankarasu on 18.12.2020.
//

import UIKit

class KonumViewController: UIViewController {
    @IBOutlet weak var konumView : KonumView!
    var konumServis : KonumServis?
    override func viewDidLoad() {
        super.viewDidLoad()

        konumView.izinVerdi = {
            print("kullanıcı izin verdi")
            self.konumServis?.izinIste()
            
        }
        konumServis?.konumDegisikligi = {basarili in
            if basarili {
                self.konumServis?.konumAl()
            }
        }
        konumServis?.yeniKonum = { sonuc in
            switch sonuc {
            case .basarili(let konumBilgisi) :
                print(konumBilgisi.coordinate.latitude,"-",konumBilgisi.coordinate.longitude)
            case .hatali(let hata) :
                assertionFailure("konum hatalı : \(hata)")
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
