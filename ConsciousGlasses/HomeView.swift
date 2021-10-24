//
//  HomeView.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI
import SwiftUIX

struct HomeView: View {
    
    @State private var willMoveToSettingsScreen: Bool = false
    
    var body: some View {
        ZStack{
            background
            content
        }.navigate(to: SettingsView(), when: $willMoveToSettingsScreen)
        
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
                }) {
                    Image(systemName: "person.fill")
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
                Button(action: {
                    willMoveToSettingsScreen = true
                }) {
                    Image(systemName: "eyeglasses")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
                .clipShape(Circle())
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    ZStack{
                        Image("pair")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .cornerRadius(40)
                        Text("Pair")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .bold()
                            .frame(width: 180, height: 180)
//                            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialLight))
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                            .cornerRadius(40)


                    }
                    Spacer()
                    ZStack{
                        Image("health")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .cornerRadius(40)
                        Text("Health")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .bold()
                            .frame(width: 180, height: 180)
//                            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialLight))
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                            .cornerRadius(40)


                    }
                }.padding()
                
                HStack{
                    ZStack{
                        Image("family")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .cornerRadius(40)
                        Text("Family")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .bold()
                            .frame(width: 180, height: 180)
//                            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialLight))
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                            .cornerRadius(40)


                    }
                    Spacer()
                    ZStack{
                        Image("access")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .cornerRadius(40)
                        Text("Accessibility")
                            .foregroundColor(.white)
                            .font(.system(size: 28))
                            .bold()
                            .frame(width: 180, height: 180)
//                            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialLight))
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                            .cornerRadius(40)


                    }
                }.padding()
                
                HStack{
                    ZStack{
                        Image("info")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 180, height: 180)
                            .cornerRadius(40)
                        Text("Info")
                            .foregroundColor(.white)
                            .font(.system(size: 38))
                            .bold()
                            .frame(width: 180, height: 180)
//                            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialLight))
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                            .cornerRadius(40)


                    }
                    Spacer()

                    
                }.padding()
            }
            
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "mic.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    Text("Alice here, how can I help?")
                        .font(.system(size: 25))
                        .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                }
            }
            .buttonStyle(PlainButtonStyle())
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialDark))
            .offset(y: 24)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
