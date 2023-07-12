//
//  UserService.swift
//  TwitterTutorial
//
//  Created by 渡辺大智 on 2023/07/10.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService() // こうやって自信を定義できるのか!
    
    func fetchUser(uid: String, completion: @escaping(User) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        // get current user information
        REF_USERS.child(uid).observeSingleEvent(of: .value) { snapshot in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            
            guard let username = dictionary["username"] as? String else { return }
            
            let user = User(uid: uid, dictionary: dictionary)
            completion(user)
        }
    }
}
