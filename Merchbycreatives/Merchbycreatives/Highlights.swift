//
//  Highlights.swift
//  Merchbycreatives
//
//  Created by Iti on 02/06/2023.
//


import Foundation
import SwiftUI


struct Highlights: View {
    
    let bullet = Text("\u{2022} ").font(Font.title3.weight(.heavy))
    
    var catalogue = Catalogue()
    
    var body: some View {
        
        
        ScrollView{
            
            Spacer(minLength: 10)
            
            Group{
                Text("Monthly Highlights").padding(.top, 40).padding(.trailing, 60).padding(.bottom, -5).font(Font.largeTitle.weight(.bold))
                Image("line1").padding(.trailing,60)
            }
            
            
            
            Spacer(minLength: 30)
            
            Group{
                
                
                //first block - hottest overall product
                HStack{
                    catalogue.products[0].image
                    VStack{
                        Text(catalogue.products[0].title).font(Font.title3.weight(.semibold))
                        Text("was the hottest selling item with the highest inventory turnover.")
                    }
                }
                
                //second block - offline sales
                HStack{
                    
                    VStack{
                        Text(catalogue.products[1].title).font(Font.title3.weight(.semibold))
                        Text("This product sold the most during your live events, scoring the highest in purely offline sales.").frame(width: 210)
                    }
                    catalogue.products[1].image
                }
                
                //third block - online sales
                HStack{
                    catalogue.products[2].image
                    VStack{
                        Text(catalogue.products[2].title).font(Font.title3.weight(.semibold))
                        
                        Text("had the highest online sales.")


                    }
                    
                }
                
                Spacer(minLength: 30)
                
                //online sales
                Text("Online Sales").padding(.top, 40).padding(.trailing, 170).padding(.bottom, -5).font(Font.largeTitle.weight(.bold))
                Image("line2").padding(.trailing,60)
                
                VStack{
                    
                    //FIRST section
                    HStack{
                        
                        catalogue.products[2].image
                        VStack{
                            Group{
                                Text("Blue Shirt was viewed")
                                 Text("134").font(Font.title2.weight(.semibold))
                               Text("times on an average during a user’s journey.")
                            }.frame(width: 200)
                        }
                            
                        
                    }
                    
                    Spacer(minLength: 30)
                    //second section - traffic sources hstack
                    
                    Group{
                        VStack{
                            Text("Traffic Sources").padding(.top, 40).padding(.bottom, -5).font(Font.body.weight(.bold))
                            
                            Image("line3")
                            Text("Where your visitors come from").font(.custom(
                            "HelveticaNeue-ThinItalic", size: 20))
                            
                            Image("bars")

                        }
                    }
                    
                    
                    
                    
                    //Clicks section
                    Spacer(minLength: 40)
                    HStack{
                        Image("pie").padding(.trailing, 30)
                        VStack{
                            Text("of total visitors end up purchasing from your website.").padding(.bottom, 60).font(Font.body.weight(.bold))
                            Text("The remaining 33% leave without any purchases")
                        }.padding(.trailing, 20)
                        
                        
                    }
                    
                }
                
                
                Spacer(minLength: 50)
                
                Group{
                    Text("Demographics").padding(.top, 40).padding(.trailing, 140).padding(.bottom, -5).font(Font.largeTitle.weight(.bold))
                    Image("line4").padding(.trailing,60)
                }
                
                
                VStack{
                    //entire UK block
                    HStack{
                        Image("ukmap").padding(.top, 30)
                        VStack(alignment: .center){
                            
                            Group{
                                Text("United Kingdom").font(.custom("HelveticaNeue-Bold", size: 26)).padding(.bottom, 22)
                                
                                Text("was the country with the highest number of visitors on your website.").frame(maxWidth: 230, alignment: .center).padding(.bottom, 50)
                                
                                (Text("London was the most popular city within the distribution"))
                            }
                            
                            
                        }
                    }.padding(.top, 30)
                    
                    HStack{
                        Text("Women's merch sold 1.7x more than men's merch.").font(.custom("HelveticaNeue-ThinItalic", size: 22))
                        Image("woman")
                        
                    }.padding( 30)
                }
                
                
            }
            
        }

    }
}

struct Highlights_Previews: PreviewProvider {
    
    static var previews: some View {
        Highlights()
    }
}
