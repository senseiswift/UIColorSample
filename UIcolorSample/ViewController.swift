//
//  ViewController.swift
//  UIcolorSample
//
//  Created by sensei on 2015/09/08.
//  Copyright (c) 2015年 senseiswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let colors: [(color: UIColor, text: String)] = [
        (UIColor.blackColor(),"blackColor"),
        (UIColor.darkGrayColor(),"darkGrayColor"),
        (UIColor.lightGrayColor(),"lightGrayColor"),
        (UIColor.whiteColor(),"whiteColor"),
        (UIColor.grayColor(),"grayColor"),
        (UIColor.redColor(),"redColor"),
        (UIColor.greenColor(),"greenColor"),
        (UIColor.blueColor(),"blueColor"),
        (UIColor.cyanColor(),"cyanColor"),
        (UIColor.yellowColor(),"yellowColor"),
        (UIColor.magentaColor(),"magentaColor"),
        (UIColor.orangeColor(),"orangeColor"),
        (UIColor.purpleColor(),"purpleColor"),
        (UIColor.brownColor(),"brownColor"),
        (UIColor.clearColor(),"clearColor")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // セルの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    // セルのテキストを追加
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = colors[indexPath.row].text
        cell.backgroundColor = colors[indexPath.row].color
        
        if (cell.backgroundColor == UIColor.blackColor())
        {
            cell.textLabel?.textColor = UIColor.whiteColor()
        }
        
        return cell
    }


}

