//
//  CityViewController.swift
//  WeatherApp
//
//  Created by momo on 2017-09-20.
//  Copyright © 2017 Derrick Park. All rights reserved.
//

import UIKit

class CityViewController: UIViewController {
    var city: City!
    
    var detaileVC = DetailedViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.blue
        let button = UIButton(frame: CGRect(x: view.bounds.width / 2 - 50, y: view.bounds.height / 2, width: 100, height: 50))
        button.backgroundColor = UIColor.black
        button.addTarget(self, action: #selector(pushToDetailedVC), for: .touchUpInside)
        view.addSubview(button)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func pushToDetailedVC(){
        let detailedVC = DetailedViewController()
        detailedVC.view.backgroundColor = UIColor.red
        self.navigationController?.pushViewController(detailedVC, animated: true)
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
