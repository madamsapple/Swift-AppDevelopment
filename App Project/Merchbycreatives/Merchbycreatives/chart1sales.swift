//
//  chartno1sales.swift
//  Merchbycreatives
//
//  Created by Iti on 07/06/2023.
//

import Foundation
import SwiftUI

struct chart1sales: View {
  
    @State private var selectedperiod = "month"
    var body: some View {
        
        
        Group{
            
            ScrollView{
                VStack{
                    
                    Text("For the Period").font(Font.largeTitle.weight(.regular)).padding([.trailing], 138).padding(.top, 50)
                    Text("12 May - 11 Jun 2023").padding(.trailing, 180)
                    VStack{
                            Group{
                                Text("Best Sales Day").padding([.trailing], 209).font(Font.title3)
                                    .overlay(Rectangle().frame(width: nil, height: 1, alignment: .bottom).foregroundColor(Color.gray), alignment: .bottom)
                                
                                HStack{
                                    VStack{
                                        Text("T-Shirt")
                                        Text("19 May").font(Font.largeTitle.weight(.bold))
                                        Text("33 sold").italic()
                                    }.frame(width: 90, height: 180,alignment: .center).background(CustomColor.olive).cornerRadius(25).padding([.trailing], 0)
                                    
                                    VStack{
                                        Text("Blue Shirt").padding(.leading, 0)
                                        Text("27 May").font(Font.largeTitle.weight(.bold))
                                        Text("65 sold").italic()
                                    }.frame(width: 90, height: 180,alignment: .center).background(CustomColor.maroon).cornerRadius(25).padding([.trailing], 0)
                                    VStack{
                                        Text("Mug").padding(.leading, 0)
                                        Text("01 Jun").font(Font.largeTitle.weight(.bold))
                                        Text("21 sold").italic()
                                    }.frame(width: 90, height: 180,alignment: .center).background(CustomColor.purplish).cornerRadius(25).padding([.trailing], 0)
                                }
                                
                            }
                        
                    }.padding(.top, 40)
                    
                    
                    VStack{
                        Text("Average Merch Sold").padding([.trailing], 165).font(Font.title3)
                            .overlay(Rectangle().frame(width: nil, height: 1, alignment: .bottom).foregroundColor(Color.gray), alignment: .bottom)
                        
                        Image("average").padding(.top,10)
                        Picker("Period", selection: $selectedperiod) {
                            Text("Past 30 Days").tag("month")
                            Text("Past 12 Months").tag("year")
                        }
                        .pickerStyle(.segmented).padding(15).frame(width: 300)
                        
                        if selectedperiod == "month"{
                            Group{
                                VStack{
                                    Text("T-Shirt").padding(.leading, 15)
                                    Text("37").font(Font.largeTitle.weight(.bold))
                                }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.olive).cornerRadius(25).padding([.trailing], 90)
                                
                                VStack{
                                    Text("Blue Shirt").padding(.leading, 15)
                                    Text("51").font(Font.largeTitle.weight(.bold)).padding(.trailing, 24)
                                }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.maroon).cornerRadius(25).padding([.trailing], 90)
                                
                                VStack{
                                    Text("Mug     ").padding(.leading, 14)
                                    Text("24").font(Font.largeTitle.weight(.bold))
                                }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.purplish).cornerRadius(25).padding([.trailing], 90)
                            }
                        } else if selectedperiod == "year"{
                                Group{
                                    VStack{
                                        Text("T-Shirt   ").padding(.trailing, 3)
                                        Text("  1,148").font(Font.largeTitle.weight(.bold))
                                    }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.olive).cornerRadius(25).padding([.trailing], 90)
                                    
                                    VStack{
                                        Text("Blue Shirt      ").padding(.leading, 15)
                                        Text("1,967").font(Font.largeTitle.weight(.bold))
                                    }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.maroon).cornerRadius(25).padding([.trailing], 90)
                                    
                                    VStack{
                                        Text("Mug").padding(.trailing, 13)
                                        Text("524").font(Font.largeTitle.weight(.bold)).padding(.leading, 11)
                                    }.frame(width: 250, height: 100,alignment: .leading).background(CustomColor.purplish).cornerRadius(25).padding([.trailing], 90)
                                }
                            }
                    }.padding(.top, 50)
                }
            }
            

            
                
        }
    }
}

//provides preview of page
struct chart1sales_Previews: PreviewProvider {
    static var previews: some View {
        chart1sales()
    }
}
