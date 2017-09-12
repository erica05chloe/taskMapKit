//
//  ViewController.swift
//  sampleMapKit
//
//  Created by erica chloe on 2017/09/12.
//  Copyright © 2017年 erica chloe. All rights reserved.
//

//フレームワーク読込
import UIKit
//地図用の部品を使う時必要
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var myMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        //アヤラを中心とした地図を表示
        
        //1.中心となる場所の座標オブジェクトを作成
        let coodinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        
        //2.縮尺を設定
        let span = MKCoordinateSpanMake(0.1, 0.1)
        
        //3.範囲オブジェクトを作成
        let region = MKCoordinateRegionMake(coodinate, span)
        
        //4.MapViewに範囲オブジェクトを設定
        myMapView.setRegion(region, animated: true)
        
        
        //アヤラにピンを立てる
        
        //1.pinオブジェクトを生成
        let myPin = MKPointAnnotation()
        
        //2.pinの座標を設定
        //これも正解
        //myPin.coordinate = CLLocationCoordinate2DMake(10.317347, 123.905759)
        myPin.coordinate = coodinate
        
        //3.タイトル、サブタイトルを設定
        myPin.title = "アヤラ"
        myPin.subtitle = "おすすめ"
        
        //4.mapViewにピンを追加
        //これがないとピンは表示されない
        myMapView.addAnnotation(myPin)
        
        //TODO:pinをひとつ立ててみましょう
        let myPin2 = MKPointAnnotation()
        myPin2.coordinate = CLLocationCoordinate2DMake(10.311987,123.918199)
        myPin2.title = "SMモール"
        myPin2.subtitle = "おすすめ"
        myMapView.addAnnotation(myPin2)
        
        //homework
        let myPin3 = MKPointAnnotation()
        myPin3.coordinate = CLLocationCoordinate2DMake(10.331685,123.907878)
        myPin3.title = "ITパーク"
        myPin3.subtitle = "おすすめ"
        myMapView.addAnnotation(myPin3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

