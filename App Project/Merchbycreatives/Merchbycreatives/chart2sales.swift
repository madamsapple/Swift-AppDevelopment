//
//  chart2sales.swift
//  Merchbycreatives
//
//  Created by Iti on 09/06/2023.
//

import Foundation
import SwiftUI

struct chart2sales: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        
        Group{
            ScrollView{
                

                VStack{
                    HStack{
                        Group{
                            Image("uparrow").shadow(color: .black, radius: 4, x: 1, y: 2).padding(10)
                            Text("Sales for the Blue Shirt in the past 30 days are up 43%, totalling 2,463.")
                        }
                    }.padding(10)
                }
                
                VStack{
                    HStack{
                        Group{
                            Image("uparrow").shadow(color: .black, radius: 4, x: 1, y: 2).padding(.trailing,15)
                            Text("Sales for the T-Shirt in the past 30 days are up 13%, totalling 1,179.")
                        }
                    }.padding(10)
                }
                
                VStack{
                    HStack{
                        Group{
                            Image("dnarrow").shadow(color: .black, radius: 4, x: 1, y: 2).padding(10)
                            Text("Sales for the mug in the past 30 days are down 38%, totalling 992.")
                        }
                    }.padding(10)
                }
            }
        }
    }
}

//provides preview of page
struct chart2sales_Previews: PreviewProvider {
    static var previews: some View {
        chart2sales()
    }
}
