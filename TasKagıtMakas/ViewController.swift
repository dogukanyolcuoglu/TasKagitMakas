//
//  ViewController.swift
//  TasKagıtMakas
//
//  Created by Dogukan Yolcuoglu on 24.03.2020.
//  Copyright © 2020 Dogukan Yolcuoglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK : - Variables
    var myPoints = 0;
    var pcPoints = 0;
    let array = ["Taş","Kağıt","Makas"];
    
    //MARK : - IBOutles
    @IBOutlet weak var mychoiceLabel: UILabel!
    @IBOutlet weak var pcchoiceLabel: UILabel!
    @IBOutlet weak var theEndLabel: UILabel!
    @IBOutlet weak var pcPointLabel: UILabel!
    @IBOutlet weak var myPointLabel: UILabel!
    @IBOutlet weak var endGameText: UITextField!
    @IBOutlet weak var endGameLabel: UILabel!
    
    //MARK : - IBActions
    @IBAction func rockSelected(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
        var pcSelected = array[randomSelected];
        var endGamePoint = Int(endGameText.text!)
        
        
        if pcSelected == "Taş"{
            mychoiceLabel.text = "Sizin Seçiminiz : Taş";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Taş";
            theEndLabel.text = "Kazanan : Beraberlik";
            
        }else if pcSelected == "Kağıt" {
            mychoiceLabel.text = "Sizin Seçiminiz : Taş";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Kağıt";
            theEndLabel.text = "Kazanan : Bilgisayar Kazandı";
               pcPoints += 1;
            pcPointLabel.text = String(pcPoints);
            
            
        }else if pcSelected == "Makas"{
            mychoiceLabel.text = "Sizin Seçiminiz : Taş";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Makas";
            theEndLabel.text = "Kazanan : Siz Kazandınız";
                myPoints += 1;
            myPointLabel.text = String(myPoints);
            
        }
        if myPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Siz";
            myPoints = 0;
            pcPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        else if pcPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Bilgisayar";
            myPoints = 0;
            pcPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        
    }
    @IBAction func paperSelected(_ sender: Any) {
        let randomSelected = Int(arc4random_uniform(3))
        var pcSelected = array[randomSelected];
        var endGamePoint = Int(endGameText.text!)
        
        if pcSelected == "Taş"{
            mychoiceLabel.text = "Sizin Seçiminiz : Kağıt";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Taş";
            theEndLabel.text = "Kazanan : Siz Kazandınız";
                myPoints += 1;
             myPointLabel.text = String(myPoints);

        }else if pcSelected == "Kağıt" {
            mychoiceLabel.text = "Sizin Seçiminiz : Kağıt";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Kağıt";
            theEndLabel.text = "Kazanan : Beraberlik";
            
        }else if pcSelected == "Makas"{
            mychoiceLabel.text = "Sizin Seçiminiz : Kağıt";
            pcchoiceLabel.text = "Bilgisayarın Seçimi : Makas";
            theEndLabel.text = "Kazanan : Bilgisayar Kazandı";
                pcPoints += 1;
            pcPointLabel.text = String(pcPoints);
        }
        if myPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Siz";
            myPoints = 0;
            pcPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        else if pcPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Bilgisayar";
            pcPoints = 0;
            myPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
         let randomSelected = Int(arc4random_uniform(3))
         var pcSelected = array[randomSelected];
         var endGamePoint = Int(endGameText.text!)
        
         if pcSelected == "Taş"{
             mychoiceLabel.text = "Sizin Seçiminiz : Makas";
             pcchoiceLabel.text = "Bilgisayarın Seçimi : Taş";
             theEndLabel.text = "Kazanan : Bilgisayar Kazandı";
                 pcPoints += 1;
              pcPointLabel.text = String(pcPoints);
             
         }else if pcSelected == "Kağıt" {
             mychoiceLabel.text = "Sizin Seçiminiz : Makas";
             pcchoiceLabel.text = "Bilgisayarın Seçimi : Kağıt";
             theEndLabel.text = "Kazanan : Siz Kazandınız";
                myPoints += 1;
            myPointLabel.text = String(myPoints);

         }else if pcSelected == "Makas"{
             mychoiceLabel.text = "Sizin Seçiminiz : Makas";
             pcchoiceLabel.text = "Bilgisayarın Seçimi : Makas";
             theEndLabel.text = "Kazanan : Beraberlik";
         }
        if myPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Siz";
            myPoints = 0;
            pcPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        else if pcPoints == endGamePoint {
            endGameLabel.text = "Oyun Sonu Kazananı : Bilgisayar";
            myPoints = 0;
            pcPoints = 0;
            pcPointLabel.text = String(pcPoints);
            myPointLabel.text = String(myPoints);
        }
        
    }
    
    
    override func viewDidLoad() {
        // To Do
        
    }
    override func didReceiveMemoryWarning() {
        // To Do
    }
    
    
}

