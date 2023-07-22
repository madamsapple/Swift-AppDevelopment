//
//  ViewModel.swift
//  Merchbycreatives
//
//  Created by Iti on 14/06/2023.
//

import Foundation
import SwiftUI

extension SignIn{
    class ViewModel: ObservableObject{
        @AppStorage("AUTH_KEY") var authenticated = false{
            willSet{objectWillChange.send()}
        }
        @AppStorage("USER_KEY") var username = ""
        @Published var password = ""
        @Published var invalid: Bool = false
        
        private var sampleUser = "username"
        private var samplePassword = "password"
        
        init(){
            print("Currently logged in: \(authenticated)")
            print("Current user: \(username)")
            
        }
        
        func toggleAuthentication(){
            self.password = ""
            withAnimation{
                authenticated.toggle()
            }
        }
        
        func authenticate(){
            guard self.username.lowercased() == sampleUser else {
                self.invalid = true
                return
            }
            guard self.password.lowercased() == samplePassword else {
                self.invalid = true
                return
            }
            toggleAuthentication()
        }
        
        func logOut() {
            toggleAuthentication()
        }
        
        func logPressed() {
            print("Button pressed.")
        }
    }
}
