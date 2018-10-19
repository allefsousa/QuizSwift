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
    
    
    // variaveis que vão receber os dados da tela anterior
    var totalCorrectAnswers: Int = 0
    var totalAnwers: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbAnswered.text = "Perguntas respondidas: \(totalAnwers)"
                lbCorrect.text = "Perguntas corretas: \(totalCorrectAnswers)"
                lberror.text = "Perguntas erradas: \(totalAnwers - totalCorrectAnswers)"
        
        let score = totalCorrectAnswers * 100/totalAnwers
        lbScore.text = "\(score)%"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // fechando a tela
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
  
}
