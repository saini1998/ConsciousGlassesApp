//
//  SignUpView.swift
//  ConsciousGlasses
//
//  Created by Aaryaman Saini on 23/10/21.
//

import SwiftUI
import SwiftUIX

struct SignUpView: View {
    @State private var willMoveToHomeScreen: Bool = false
    
    var body: some View {
        ZStack{
            background
            signupcontent
            
        }        .navigate(to: ContentView(), when: $willMoveToHomeScreen)

        
    }
    var background: some View{
        ZStack{
            AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0.4744538665, green: 0.4745411873, blue: 0.4744548202, alpha: 1)),Color(#colorLiteral(red: 2.514852531e-05, green: 0, blue: 0.004306100775, alpha: 1)),Color(#colorLiteral(red: 0.9957614541, green: 0.5791325569, blue: 0, alpha: 1))]), center: .center, angle: .degrees(30))
            LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0), Color.white.opacity(1)]), startPoint: .bottom, endPoint: .top)
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    var signupcontent: some View{
        VStack{
            Text("Sign Up")
                .foregroundColor(.black)
                .font(.system(size: 50))
                .bold()
                .multilineTextAlignment(.center)
                .padding()
            Spacer()
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person.fill.questionmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        Text("Profile").frame(height: 50).font(.system(size: 30))
                        
                    }
                    VStack{
                        Text("Name")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Email")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        Text("Password")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                    }
                    .cornerRadius(20)
                }
                .padding()
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "heart.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        Text("Health").frame(height: 50).font(.system(size: 30))
                        
                    }
                    VStack{
                        Text("Age")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Weight")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                    }
                    .cornerRadius(20)
                }
                .padding()
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "exclamationmark.square.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        Text("Emergency Contact").frame(height: 50).font(.system(size: 30))
                        
                    }
                    VStack{
                        
                        Text("Mom")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Dad")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Ruby")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Moon")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        Text("Beck")
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                    }
                    .cornerRadius(20)
                }
                .padding()
                VStack(alignment: .leading){
                    HStack{
                        Image(systemName: "person.crop.rectangle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 25, height: 25)
                            .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                        Text("Disability").frame(height: 50).font(.system(size: 30))
                        
                    }
                    HStack{
                        VStack{
                            Image(systemName: "eye.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding()
                            Text("Blind")
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                
                        }.background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                        VStack{
                            Image(systemName: "ear.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                                .padding()
                            Text("Deaf")
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                
                        }.background(VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark))
                        
                    }
                    .cornerRadius(20)
                }
                .padding()
            }
            
            
            
            
            
            
            Spacer()
            
            Button(action: {
                willMoveToHomeScreen = true
            }) {
                Text("Submit")
                    .font(.system(size: 30))
                    .foregroundColor(Color(#colorLiteral(red: 0.9948499799, green: 0.5876758695, blue: 0.008249755017, alpha: 1)))
                    .bold()
            }
            .buttonStyle(PlainButtonStyle())
            .frame(width: 300, height: 30)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemThickMaterialDark))
            .cornerRadius(18)
            
//            Spacer()
            
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
            .frame(height: 70)
            .padding()
            .background(VisualEffectBlurView(blurStyle: .systemChromeMaterialDark))
            .offset(y: 30)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
