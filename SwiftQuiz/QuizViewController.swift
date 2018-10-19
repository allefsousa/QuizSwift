//
//  QuizViewController.swift
//  SwiftQuiz
//
//  Created by José Guilherme Scanavini on 19/10/18.
//  Copyright © 2018 teste. All rights reserved.
//

import UIKit

// classe criada que herda de UIViewController

class QuizViewController: UIViewController {

    @IBOutlet var btAnswer: [UIButton]! // array de botoes da view
    @IBOutlet weak var lbQuestion: UILabel! // label com as questões
    @IBOutlet weak var viTimer: UILabel! // label que é o timer
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    // relação de ações do Botão
    @IBAction func selectAnswer(_ sender: UIButton) {
    }
}
