//
//  showmorebutton.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI

struct shmorebutton1: View{
    
    @State private var showingSheet = false
    
    var body: some View{
        Button(){
            showingSheet.toggle()
        }label: {
            Text("Show More")
            //                        .padding(.horizontal, 0)
                .frame(width: 353, height: 45)
                .foregroundColor(.white)
                .background((Color(uiColor: UIColor(red: 191/255, green: 131/255, blue: 0/255, alpha: 1))))
                .cornerRadius(7)
        }
        .sheet(isPresented: $showingSheet) {
            chart1sales()
        }
    }
}
