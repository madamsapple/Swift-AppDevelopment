//
//  File.swift
//  Merchbycreatives
//
//  Created by Iti on 20/05/2023.
//

import Foundation
import SwiftUI



struct SignIn: View {

    @StateObject var vm = ViewModel()

    
    var body: some View {
        
        
        

        VStack{
            
            
            if vm.authenticated{
                Main()
            } else {
                // Show a login screen
                ZStack {
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Spacer()
                        Text("Log in")
                            .foregroundColor(.white)
                            .font(.system(size: 40, weight: .medium, design: .rounded))
                            .underline()
                        
                        TextField("Username", text: $vm.username)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                        SecureField("Password", text: $vm.password)
                            .textFieldStyle(.roundedBorder)
                            .textInputAutocapitalization(.never)
                            .privacySensitive()
                        HStack {
                            Spacer()
                            
                            Button("Sign In",role: .cancel, action: vm.authenticate)
                                .buttonStyle(.bordered)
                            Spacer()
                        }
                        Spacer()
                    }
                    .alert("Access denied", isPresented: $vm.invalid) {
                        Button("Dismiss", action: vm.logPressed)
                    }
                    .frame(width: 300)
                    .padding()
                }
                .transition(.offset(x: 0, y: 850))
            }
        }

        
    }
}

//provides preview of page
struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
