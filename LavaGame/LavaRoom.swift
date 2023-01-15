//
//  LavaFloorPage.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct LavaRoom: View {
    @State var isActive : Bool = false
    @State private var textSwitch = false
    
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            
            if isActive {
                BacktoNormalPage()
            }  else {
                VStack{
                    ZStack{
                        
                        LottieViewTime(lottieFile: "OVERLORD_EMPTY-4.json")
                        
                        
                            .frame(width: 1000 , height: 1000)
                            .offset(y:100)
                        
                        LottieViewTime(lottieFile: "OLas-3.json")
                            .frame(width:1000 , height: 1000)
                            .offset(y:300)
                        LottieViewTime(lottieFile: "OLas-3.json")
                            .frame(width:1000 , height: 1000)
                            .offset(y:350)
                        
                        
                        LottieView(lottieFile: "Comp 1-7.json")
                            .offset(x:100)
                        //                        Text((textSwitch ? "The Lava everywere " : "be carfull"))
                        
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:-100)
                        LottieViewTime(lottieFile: "OVERLORD_EMPTY-5.json")
                            .offset(y:100)
                        
                        Text("\" Lava is EVERYWERE ")
                        
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:-200)
                        Text("Be carfull..! \"")
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 30, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:-150)
                        LottieView(lottieFile: "16773-fire.json")
                            .frame(width:200 ,height:200)
                            .offset(x:-100 ,y:-50)
                        Image("broken")
                            .resizable()
                            .scaledToFit()
                            .frame(width:30 ,height:30)
                            .offset(x:-80 ,y:-80)
                            .rotationEffect(.degrees(10))
                        
                        
                        
                        
                        
                        
                        LottieViewTime(lottieFile: "컴포지션 1.json")
                        
                        
                        //                            .offset(y:100)
                        //التكست الاول بالطرف
                        //                        LottieView(lottieFile: "16773-fire.json")
                        //                            .offset(y:-250)
                        
                        //
                        //           LottieViewTime(lottieFile: "Cadre 7-2.json")
                        //                            .frame(width:500, height:2000)
                        //                            .offset(y:200)
                        //3 second for the fire json lottie
                        //
                        //                        LottieViewTime(lottieFile: "MC-2.json")
                        //                            .offset(y:200)
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        self.textSwitch.toggle()
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }}
    }
}


struct LavaRoom_Previews: PreviewProvider {
    static var previews: some View {
        LavaFloorPage()
    }
}

