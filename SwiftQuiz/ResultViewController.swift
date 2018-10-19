//
//  ResultViewController.swift
//  SwiftQuiz
//
//  Created by José Guilherme Scanavini on 19/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lbAnswered: UILabel!
    
    @IBOutlet weak var lbCorrect: UILabel!
    
    @IBOutlet weak var lberror: UILabel!
    
    @IBOutlet weak var lbScore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func close(_ sender: UIButton) {
    }
  
}
