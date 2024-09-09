//
//  SimpleWeatherViewController.swift
//  SimpleWeather
//
//  Created by 주지홍 on 9/9/24.
//

import UIKit

class SimpleWeatherViewController: UIViewController {
    
    let cities = [
        "Seoul",
        "Tokyo",
        "LA",
        "Seattle"
    ]
    
    let weathers = [
        "cloud.fill",
        "sun.max.fill",
        "wind",
        "cloud.sun.rain.fill"
    ]
    
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var weather: UIImageView!
    @IBOutlet weak var temperature: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func changeTappedButton(
        _ sender: Any
    ) {
        city.text = cities.randomElement()
                
        let imageName = weathers.randomElement()!
        
        weather.image = UIImage(systemName:imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemp = Int.random(in: 10..<30)
        
        temperature.text = "\(randomTemp)°"
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
