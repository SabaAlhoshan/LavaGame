//
//  MovePage.swift
//  LavaGame
//
//  Created by saba on 18/06/1444 AH.
//

import SwiftUI


struct MovePage: View {
    @State var isActive : Bool = false
    @State  var arrowButton = false
    @State private var textSwitch = false
    @State var arrow = false
    @State var TextHide = ""
    @State var extrasound = false
    @State var extrasound11 = false
    var body: some View {
        
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                DanceView()
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
                        
                        
                        
                        
                        
                        
                        Text((textSwitch ? "\" Get of the Floor \"" : "\" When i say the Floor is LAVA ! \""))
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:170)
                            .frame(width: 400,height:300)
                        
                        //التكست الاول بالطرف
                        
                        LottieView(lottieFile: "16773-fire.json")
                            .offset(y:30)
                        
                        
                        VStack{
                            
                            Button {
                                arrow = true
                            } label: {
                                ZStack{
                                    LottieView(lottieFile: "ArrowDown.json")
                                        .frame(width: 70 , height:70)
                                        .rotationEffect(.degrees(270))
                                        .bold()
                                    Circle()
                                        .strokeBorder(Color("Lets Start Color"), lineWidth: 10)
                                    
                                        .frame(width: 70 , height:70)
                                    
                                }
                                
                            }
                            .offset(x:125 ,y:270)
                            .fullScreenCover(isPresented: $arrow, content: DanceView.init)
                            
                            //                            Image(systemName: "arrow.right.circle")
                            //                                .resizable()
                            //                                .scaledToFit()
                            //                                .frame(width: 50 , height:50)
                            //                                .foregroundColor(Color("Lets Start Color"))
                            //                                .offset( x: 100,y:290)
                            //                            
                        }
                    }
                    //                    .fullScreenCover(isPresented: $arrowButton, content: DanceView.init)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    .onAppear{
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3)
                        {
                            self.textSwitch.toggle()
                            
                            
                        }
                        SoundManager.instance.playSound(sound: .allsong)
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5)
                        {
                            //                            SoundManager.instance.playSound(sound: .whenisaydance)
                            //                            withAnimation{
                            self.isActive = true
                            
                        }
                        
                        
                    }
                    //                        DispatchQueue.main.asyncAfter(deadline: .now() + 10){
                    //                            SoundManager.instance.playSound(sound: .whenisaydance)
                    //                           // SoundManager.instance.playSound(sound: .Kidsmusic)
                    //                            withAnimation{
                    //
                    //                                self.extrasound11 = true
                    //
                    //                            }
                    //                            DispatchQueue.main.asyncAfter(deadline: .now() + 5)
                    //
                    //                            {
                    //                                SoundManager.instance.playSound(sound: .whenisaydance)
                    //                                withAnimation{
                    //                                    self.isActive = true
                    //                                }
                    //                        DispatchQueue.main.asyncAfter(deadline: .now() + 6)
                    //                        {
                    //                            self.extrasound.toggle()
                    //                            SoundManager.instance.playSound(sound: .whenisaydance)
                    //
                    //                        }
                    
                }}
        }}
    struct MovePage_Previews: PreviewProvider {
        static var previews: some View {
            MovePage()
        }
    }
}
