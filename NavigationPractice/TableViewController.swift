//
//  TableViewController.swift
//  NavigationPractice
//
//  Created by sae hun chung on 2022/07/26.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setNav()
        setBarButtonItem()
    }

    func setNav() {
        title = "네비바 꾸며보기"

        // Navi Bar item 색 일괄 지정
        self.navigationController?.navigationBar.tintColor = UIColor.white
        
        let navibarAppearance = UINavigationBarAppearance()
        
        // custom 코드 블럭
        navibarAppearance.backgroundColor = UIColor.systemCyan // 색을 일치시키기 위한 코드
        
        // title 속성 변경
        navibarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 15, weight: .semibold)]
        
        
        let barbuttonItemAppearance = UIBarButtonItemAppearance()
        
        // barbuttonitem의 텍스트의 크기, 색, 폰트 변경 코드 (이미지는 크기는 영향을 받지만,색은 적용되지 않는다.)
        barbuttonItemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.red, .backgroundColor: UIColor.brown, .font: UIFont.systemFont(ofSize: 13, weight: .light)]
                
        navibarAppearance.buttonAppearance = barbuttonItemAppearance
            
        self.navigationItem.scrollEdgeAppearance = navibarAppearance
        self.navigationItem.standardAppearance = navibarAppearance
    }
    
    func setBarButtonItem() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Left", style: .plain, target: self, action: nil)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "star.fill"), style: .plain, target: self, action: nil)
    }

}
