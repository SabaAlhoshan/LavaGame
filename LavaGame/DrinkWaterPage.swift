//
//  DrinkWaterPage.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct DrinkWaterPage: View {
    @State var isActive : Bool = false
    
    @State private var textSwitch = false
    
    var body: some View {
        ZStack{
            Color.init("FullWaterPageColor").edgesIgnoringSafeArea(.all)
                .opacity(0.7)
            if isActive {
                Againpage()
            }  else {
                ZStack{
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color"))
                        .frame(width:100,height:100)
                        .offset(x:-150,y:-400)
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color 2"))
                        .frame(width:50,height:50)
                        .offset(x:90,y:-300)
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color"))
                        .frame(width:100,height:100)
                        .offset(x:150,y:400)
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:-100,y:300)
                        .foregroundColor(Color("colororange1"))
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:-90,y:300)
                        .foregroundColor(Color("colororange2"))
                    
                    
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:120,y:-30)
                        .foregroundColor(Color("colororange1"))
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:150)
                        .offset(x:130,y:-30)
                        .foregroundColor(Color("colororange2"))
                    
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:200)
                        .offset(x:-100,y:-150)
                        .foregroundColor(Color("colororange1"))
                    RoundedRectangle(cornerRadius: 45)
                        .frame(width:60,height:200)
                        .offset(x:-90,y:-150)
                        .foregroundColor(Color("colororange2"))
                }
                
                
                VStack{
                    ZStack{
                        
                        Text((textSwitch ? "\"Let's Go Drink Some Water \"" : "\" Its Water Time! \""))
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:170)
                        //التكست الاول بالطرف
                        LottieView(lottieFile: "16773-fire.json")
                            .offset(y:130)
                            .padding(.bottom, 180)
                        //
                        //                        LottieView(lottieFile: "water glass.json")
                        //                            .offset(x:100,y:200)
                        //                            .frame(width:100,height: 100)
                        //                            .padding(.top, 90)
                        //                            .padding(.bottom,180)
                        
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.textSwitch.toggle()
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }}
    }
}

struct DrinkWaterPage_Previews: PreviewProvider {
    static var previews: some View {
        DrinkWaterPage()
    }
}
