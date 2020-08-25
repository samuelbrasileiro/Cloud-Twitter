//
//  ViewController.swift
//  CloudTwitter
//
//  Created by Samuel Brasileiro on 23/08/20.
//  Copyright © 2020 Samuel Brasileiro. All rights reserved.
//

import UIKit

class CloudViewController: UIViewController {
    
    //MARK:- Outlets
    
    @IBOutlet var writeTweetButton: UIButton!
    
    @IBOutlet var updateConsoleButton: UIButton!
    
    @IBOutlet var clearDatabaseButton: UIButton!
    
    @IBOutlet var createNewUserButton: UIButton!
    
    @IBOutlet var tweetsTableView: UITableView!
    
    @IBOutlet var consoleIndicator: UIActivityIndicatorView!
    
    //MARK:- Variáveis
    //adicione as variáveis aqui:
    
    
    

    
    //MARK:- Configurações iniciais
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()

        consoleIndicator.hidesWhenStopped = true
    }
    
    func configureTableView(){
        tweetsTableView.backgroundColor = .systemGray6
        tweetsTableView.layer.cornerRadius = 10
        tweetsTableView.layer.masksToBounds = true
        
        tweetsTableView.delegate = self
        tweetsTableView.dataSource = self
        
        tweetsTableView.tableFooterView = UIView(frame: .zero)
    }
    
    
    @IBAction func buttonAction(_ sender: UIButton){
        if sender == createNewUserButton{
            //write something here...
        }
        else if sender == writeTweetButton{
            //write something here...
        }
        else if sender == updateConsoleButton{
            //write something here...
        }
        else if sender == clearDatabaseButton{
            //write something here...
        }
        
    }
    
    //MARK:- Funções
    
}



//MARK:- Extensão do Table View
extension CloudViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 105
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TweetTableViewCell", for: indexPath) as? TweetTableViewCell else{
            fatalError("Can't dequeue tweet table view cell")
        }
        //configurar a célula
        
        
        return cell
    }
}

