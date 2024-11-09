//
//  ColorVC.swift
//  ColorApp
//
//  Created by Muralidhar reddy Kakanuru on 11/9/24.
//

import UIKit
var colors: [UIColor] = []
class ColorVC: UIViewController{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColor()

        // Do any additional setup after loading the view.
    }
    
    func addRandomColor() {
        for _ in 0..<50{
            colors.append(createRandomColor())
        }
    }
    
    func createRandomColor() -> UIColor {
        let randomColor=UIColor(red: CGFloat.random(in: 0...1),
                                green: CGFloat.random(in: 0...1),
                                blue: CGFloat.random(in: 0...1),
                                alpha: 1)
        return randomColor
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destvc=segue.destination as! ColorDetailVC
        destvc.color=sender as? UIColor
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

extension ColorVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "colorCell")
        else{
            return UITableViewCell()
        }
        cell.backgroundColor=colors[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color=colors[indexPath.row]
        performSegue(withIdentifier: "toColorDetailVC", sender: color)
    }
    
}
