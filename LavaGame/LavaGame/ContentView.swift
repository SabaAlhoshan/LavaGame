//
//  ContentView.swift
//  LavaGame
//
//  Created by saba on 15/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    let string =  NSLocalizedString("welcome", comment: "")
    let lava = NSLocalizedString("The Floor Is Lava", comment: "")
    
    @State  var Letstart = false
    @State private var changeSize = false
    
    var body: some View {
        
       
            
            
            ZStack{
                
                Color.accentColor.edgesIgnoringSafeArea(.all)
               
                ZStack{
                    //           Image("letter-a")
                    //                    .resizable()
                    //
                    //                    .frame(width:50 , height:50)
                    //                    .offset(y:-300)
                    //     Text(lava)
                    
                    Text("The")
                    //                    .rotationEffect(.degrees(-20))
                        .offset(x:-130,y:-330)
                        .foregroundColor(Color("Lets Start Color"))
                        .font(.system(size: 45, weight: .heavy, design: .rounded))
                    
                    Text("Floor")
                    
                    
                        .foregroundColor(Color("Lets Start Color"))
                        .font(.system(size: 45, weight: .heavy, design: .rounded))
                        .offset(x:-25,y:-330)
                    //                    .rotationEffect(.degrees(-2))
                    
                    //                    .font(changeSize ? .largeTitle : .callout)
                    //                onTapGesture {
                    //                    withAnimation{
                    //                        changeSize.toggle()
                    //                    }
                    //                }
                    Text("is")
                        .foregroundColor(Color("Lets Start Color"))
                        .font(.system(size: 45, weight: .heavy, design: .rounded))
                        .frame(width: 400,height :200)
                        .offset(x:-70,y:-300)
                        .rotationEffect(.degrees(23))
                    ZStack{
                        
                        Image(systemName: "flame.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width:20 ,height: 20)
                            .foregroundColor(Color("colororange1"))
                            .offset(x:-15,y:-290)
                            .rotationEffect(.degrees(20))
                        
                        
                        
                        Text("Lava")
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 45, weight: .heavy, design: .rounded))
                        //                    .shadow(color: Color("colororange2"), radius: 3,  y: 1)
                        
                            .frame(width: 400,height :200)
                            .offset(x:30,y:-270)
                            .rotationEffect(.degrees(20))
                    }
            
                        LottieView(lottieFile: "16773-fire.json")
                        //                LottieView(lottieFile: "fire.json")
                            .offset(y:-90)
                            .frame(width: 450 ,height: 450)
                    
                    
                    //  Circle().fill(Color(""))
                    
                    
                    
                    VStack{
                        HStack{
                            //for shimmer text
                            Button {
                                Letstart = true
                                SoundManager.instance.playSound(sound: .LetsPlayTogethersound)
                            }label: {
                                ZStack{
                                    
                                    Text("Lets Start")
                                    
                                    
                                    
                                        .font(.system(size: 60, weight: .heavy, design: .rounded))
                                        .foregroundColor(Color("Lets Start Color"))
                                    
                                    //                            RoundedRectangle(cornerRadius: 50)
                                    //
                                    //                                .fill(Color("Lets Start Color"))
                                    //                                .opacity(0.5)
                                    //
                                    //                                .frame(width: 350, height: 80)
                                    //                                DispatchQueue.main.asyncAfter(deadline: now()+3) {
                                    //
                                    //                                }
                                    //sprite kit
                                }
                            }     //.padding(.bottom,-300)
                            
                            // .frame(width: 300 ,height: 200)
                            
                        }
                        
                    }
                    
                    .padding(.bottom,-300)
                    .offset(y:58)
                    .fullScreenCover(isPresented: $Letstart, content: AreReadyPage.init)
                    
                    
                    
                    
                    
                    
                    Image("LavaD")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 550, height: 500)
                        .bold()
                        .offset(x:-15,y:300)
                    
//                    Image("Image")
//
//
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 550, height: 500)
//                        .bold()
//                        .offset(x:-10,y:287)
                    
                }
               
                Home()
            }
          
                
              
                
        }
        
    }

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    @State  var Letstart = false
    var body: some View {
        VStack(spacing: 25){
            HStack{
                //for shimmer text
                Button {
                    Letstart = true
                    
                }label: {
                    TextShimmer(text: "Let's Start")
                        .font(.system(size: 60, weight: .heavy, design: .rounded))
                        .foregroundColor(Color("Lets Start Color"))
                        .offset(y:95)
                }
                .preferredColorScheme(.light)
            }
        }
    }}

struct TextShimmer : View {
    @State var animation = false
    
    var text :String
    var body: some View {
        ZStack{
            Text(text)
                .font(.system(size: 60, weight: .bold, design: .rounded))
                .foregroundColor(Color.white.opacity(0.5))
            
        }
        .mask(
            Rectangle()
              //  .rotationEffect(.init(Angle(degrees: (75))))
                .rotationEffect(Angle(degrees: (75)))
                    .padding(20)
                    .offset(x:-250)
                    .offset(x: animation ? 500 : 0)
                    .onAppear(perform: {
                        withAnimation(Animation.linear(duration: 2).repeatForever(autoreverses: false)){
                            animation.toggle()
                        }
                    }
                    )
              //  .fill(
                    //LinearGradient(graident: init(colors: [Color.white.opacity(0.5),Color.white,Color.white.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
               // )
           
        )
    }
        
}








//            VStack {
//
//                LottieView(lottieFile: "75465-conffeti-red")
//                    .frame(width:300 , height: 300)
//                LottieView(lottieFile: "16773-fire")
//
//
//
//            LottieView(lottieFile: "12374-animation-red-waves")
