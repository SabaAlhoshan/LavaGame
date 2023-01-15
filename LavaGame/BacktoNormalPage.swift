//
//  BacktoNormalPage.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct BacktoNormalPage: View {
    @State var isActive : Bool = false
    @State private var textSwitch = false
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                WaterFullPage()
            }  else {
                ZStack{
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color"))
                        .frame(width:100,height:100)
                        .offset(x:-150,y:-400)
                    
                    Circle()
                        .foregroundColor(Color("Lets Start Color 2"))
                        .frame(width:50,height:50)
                        .offset(x:90,y:-220)
                    
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
                        Text("! Back To Normal !")
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 40, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:-300)
                        Text((textSwitch ? "\" We got 30 seconds, Lets Drink Some Water \"" : "\" WOAH That lava was HOT \""))
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 32, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:170)
                        
                        //التكست الاول بالطرف
                        LottieView(lottieFile: "16773-fire.json")
                            .offset(y:30)
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 6) {
                        self.textSwitch.toggle()
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 9){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }}
    }
}


struct BacktoNormalPage_Previews: PreviewProvider {
    static var previews: some View {
        BacktoNormalPage()
    }
}
