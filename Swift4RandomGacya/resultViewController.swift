//
//  resultViewController.swift
//  Swift4RandomGacya
//
//  Created by tatsumi kentaro on 2018/02/02.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {
    
    var num: Int!
    
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        num = Int(arc4random_uniform(10))
        
        if num<=3 && num>=0 {
            backgroundImageView.image = UIImage(named: "bg_gold@2x.png")
            monsterImageView.image = UIImage(named: "monster009.png")
        } else if num>3 && num<=6 {
            backgroundImageView.image = UIImage(named: "bg_red@2x.png")
            monsterImageView.image = UIImage(named: "monster004.png")
        } else{
            backgroundImageView.image = UIImage(named: "bg_blue@2x.png")
            monsterImageView.image = UIImage(named: "monster008.png")
        }
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
        dismiss(animated: true, completion: nil)
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
