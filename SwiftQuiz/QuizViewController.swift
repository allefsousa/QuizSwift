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

    @IBOutlet weak var vTimer: UIView!
    @IBOutlet var btAnswer: [UIButton]! // array de botoes da view
    @IBOutlet weak var lbQuestion: UILabel! // label com as questões
    @IBOutlet weak var viTimer: UILabel! // label que é o timer
    
    let quizManager = QuizManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // metodo inicia quando a view é carregada
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
        
        vTimer.frame.size.width = view.frame.size.width
        UIView.animate(withDuration: 60.0, delay: 0, options: .curveLinear, animations: {
            self.vTimer.frame.size.width = 0
        }) { (success) in
            self.showResults()
        }
        
        
        getNewQuiz()
        
        
        
    }
    // exibindo resultado do quiz
    func showResults(){
        // chamando uma nova tela. Porem para isso foi atribuido um nome a segue para que a mesma possa ser acessada via codigo
        performSegue(withIdentifier: "resultSegue", sender: nil)
        
    }
    // metodo chamada pelo sistema antes da nova tela aparecer
    // onde os dados são passados para a proxima tela
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as!
        ResultViewController
        resultViewController.totalAnwers = quizManager.totalAnswers
        resultViewController.totalCorrectAnswers = quizManager.totalCorrectAnswers
    }
    
    // iniciar um novo quiz
    func getNewQuiz(){
       quizManager.refresh()
        lbQuestion.text = quizManager.questions
            // percorrendo as respostas para adicionar aos botoes da view
        for i in 0..<quizManager.options.count{
            let options = quizManager.options[i]
            let button = btAnswer[i]
            button.setTitle(options, for: .normal)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // relação de ações do Botão que vai scorresponder ao botão selecionado
    @IBAction func selectAnswer(_ sender: UIButton) {
        
        let index = btAnswer.index(of: sender)!
        quizManager.validateAnswers(index: index)
            getNewQuiz()
        
        
    }
}
