//
//  ViewController.swift
//  sampleTeaList
//
//  Created by Eriko Ichinohe on 2017/06/08.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]
    // 選択された行番号
    var selectedIndex = -1  //　全く選択されていないときは -1が入っている
    
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // 行数を設定
    // -> Int :戻り値のデータ型はInt型ですという意味
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    // 表示するセルの中身を作る
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        //文字色
        cell.textLabel?.textColor = UIColor.brown
        
        //アクセサリ（矢印型)
        cell.accessoryType = .disclosureIndicator
        
        //表示文字の設定
        cell.textLabel?.text = teaList[indexPath.row]
        
        return cell
        
    }
    
    //セルがタップ（選択）されたとき発動
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("選択されたデータ:\(teaList[indexPath.row])")
        
        //選択された行番号をメンバ変数に格納
        selectedIndex = indexPath.row
        
        //セグエを指定して画面移動
        performSegue(withIdentifier: "showDetail", sender: nil)
    }
    
    // セグエを通って次の画面へ移動するとき
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //次の画面をインスタンス化(as:ダウンキャスト型変換)
        var dvc = segue.destination as! DetailViewController
        
        
        //次の画面のプロパティに選択された行番号を指定
        dvc.sIndex = selectedIndex
        
        
    }
    

    //MARK:ここから下はほとんど触らないところ
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

