//
//  ConversationsController.swift
//  TwitterTutorial
//
//  Created by 渡辺大智 on 2023/05/31.
//

import UIKit

class ConversationsController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    

    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Messages"
    }
}
