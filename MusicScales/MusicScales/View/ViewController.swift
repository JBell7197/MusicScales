//
//  ViewController.swift
//  Assignment7
//
//  Created by Justin Bell on 11/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var majorScalesLogic = MajorScalesLogic()
    var index : Int = 0
    var scaleName : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return majorScalesLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = majorScalesLogic.getScaleName(indexPath.row)
        content.secondaryText = "Play"
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //set current index to passed to Second View Controller
        index = indexPath.row
        scaleName = majorScalesLogic.getScaleName(indexPath.row)
        //perform segue in here
        self.performSegue(withIdentifier: "toSecondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toSecondView" {
            let navigation = segue.destination as! SecondViewController
            navigation.index = index
            navigation.scaleName = scaleName
        }
    }
}

