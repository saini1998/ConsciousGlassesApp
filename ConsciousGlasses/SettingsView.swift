//
//  SettingsView.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI
import SwiftUIX

struct SettingsView: View {
    
    @State private var willGoBack: Bool = false
    
    var body: some View {
        ZStack{
            background
            
            content
        }.navigate(to: HomeView(), when: $willGoBack)
        
    }
    var background: some View{
        ZStack{
            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1))]), center: .center, angle: .degrees(30))
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
        }
        .edgesIgnoringSafeArea(.all)
    }
    var content: some View{
        VStack{
           
            
            
            HStack{
                Button(action: {
                    willGoBack = true
                }) {
                    Image(systemName: "arrowshape.turn.up.backward.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
                .clipShape(Circle())
                
                Spacer()
                
                Text("Bob's Glasses")
                    .foregroundColor(.black)
                    .font(.system(size: 40))
                    .bold()
    //                    .frame(maxHeight: .infinity)
                    .lineLimit(0)
    //                .rotationEffect(.degrees(-90))
                Spacer()
            }
            
            
            Spacer()
            VStack(alignment: .leading){
                Image("leftView")
                    .resizable()
                    .scaledToFit()
                HStack{
                    Spacer()
                    Image(systemName: "wifi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    VStack(alignment: .leading){
                        Text("Wifi")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                            .multilineTextAlignment(.leading)
                        ZStack(alignment: .leading){
                            Capsule()
                                .frame(width: 190, height: 10)
                                .foregroundColor(.white)
                            Capsule()
                                .frame(width: 150, height: 10)
                                .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        }
                    }
                    Spacer()
                }
                
                HStack{Spacer()
                    Image(systemName: "bolt.fill")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    VStack(alignment: .leading){
                        Text("Power")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        ZStack(alignment: .leading){
                            Capsule()
                                .frame(width: 190, height: 10)
                                .foregroundColor(.white)
                            Capsule()
                                .frame(width: 90, height: 10)
                                .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        }
                    }
                    Spacer()
                }
                HStack{Spacer()
                    Image(systemName: "square.stack.fill")
                        
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    VStack(alignment: .leading){
                        Text("Memory")
                            .foregroundColor(.white)
                            .font(.system(size: 20))
                        ZStack(alignment: .leading){
                            Capsule()
                                .frame(width: 190, height: 10)
                                .foregroundColor(.white)
                            Capsule()
                                .frame(width: 40, height: 10)
                                .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        }
                    }
                    Spacer()
                }
                .padding()
                
            }
            .padding()
            
            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
            .cornerRadius(40)

            Spacer()
//            Button(action: {}) {
//                HStack{
//                    Image(systemName: "mic.fill")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 40, height: 40)
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.3628501892, blue: 1, alpha: 1)))
//                    Text("Alice here, how can I help?")
//                        .font(.system(size: 25))
//                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.3628501892, blue: 1, alpha: 1)))
//                }
//            }
//            .buttonStyle(PlainButtonStyle())
//            .frame(maxWidth: .infinity)
//            .frame(height: 100)
//            .padding()
//            .background(VisualEffectBlurView(blurStyle: .light))
//            .offset(y: 24)
        }
        .padding()
        
        
        
    }
    
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
