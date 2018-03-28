//
//  ViewController.swift
//  KLAddressPickerView
//
//  Created by 刘小陆 on 2018/1/16.
//  Copyright © 2018年 lxl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var thirdButton: UIButton!
    
    var myProvince: String?
    
    var myCity: String?
    
    var myArea: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // 使用Block方式
    @IBAction func province(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.provincePickerViewWithProvinceBlock { (province) in
            sender.setTitle(province, for: .normal)
        }
        /// 设置pickerView字体颜色和大小
        address.pickerLabelFont = UIFont.systemFont(ofSize: 20)
        address.pickerLabelTextCoclor = UIColor.green
        
        // 设置确定按钮的文字颜色
        address.sureButtonCoclor = UIColor.blue
        
        // 设置取消按钮的文字颜色
        address.cancleButtonCoclor = UIColor.blue
        
        // 设置确定和取消按钮的文字大小
        address.titleToolBarFont = UIFont.systemFont(ofSize: 20)
        
        // 设置toolBar的背景颜色
        address.titleToolBarBackgroundColor = UIColor.brown
        
        // 设置pickerView的背景颜色
        address.pickerViewBackgroundColor = UIColor.yellow
        
    }
    // 使用Block方式
    @IBAction func provinceSelected(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.provincePickerViewWithProvince(province: myProvince) { (province) in
            self.myProvince = province
            sender.setTitle(province, for: .normal)
        }
        
    }
    //使用delegate方式
    @IBAction func city(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.areaPickerViewCity(delegate: self)
    }
    // 使用Block方式
    @IBAction func citySelected(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.cityPickerViewWithProvince(procvince: myProvince, city: myCity) { (province, city) in
            self.myProvince = province
            self.myCity = city
            sender.setTitle("\(province)\(city)", for: .normal)
        }
    }
    // 使用Block方式
    @IBAction func area(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.areaPickerViewWithareaBlock { (province, city, area) in
            sender.setTitle("\(province)\(city)\(area)", for: .normal)
        }
    }
    // 使用Block方式
    
    @IBAction func areaSelected(_ sender: UIButton) {
        let address = KLCityPickerView()
        address.areaPickerViewWithProvince(province: myProvince, city: myCity, area: myArea) { (province, city, area) in
            self.myProvince = province
            self.myCity = city
            self.myArea = area
            sender.setTitle("\(province)\(city)\(area)", for: .normal)
        }
        
    }
    
    
}

extension ViewController: KLCityPickerViewDelegate {
    func addressPickerViewArea(province: String?, city: String?, area: String?) {
        self.thirdButton.setTitle("\(province ?? "")\(city ?? "")\(area ?? "")", for: .normal)
    }
}

