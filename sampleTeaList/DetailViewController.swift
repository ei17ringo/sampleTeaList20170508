//
//  DetailViewController.swift
//  sampleTeaList
//
//  Created by Eriko Ichinohe on 2017/06/09.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myTextView: UITextView!
    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    //前の画面から何行目が選択されたかわかる行番号を格納するプロパティ
    var sIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("前の画面から選択された行:\(sIndex)")
        
        if sIndex == 0 {
        
            myLabel.text = "ダージリン"
            
            myTextView.text = "紅茶の中でも特に香りを重視される紅茶である。香りを楽しむためストレートティーで飲まれることが多い。ダージリンが強い香りを持つのは、寒暖の差の激しい標高の高い山地で生産されているためである。"
            
            myImageView.image = UIImage(named: "dargilin.jpeg")
        
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
