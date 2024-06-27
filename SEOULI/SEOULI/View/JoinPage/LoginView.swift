//
//  LoginView.swift
//  SEOULI
//
//  Created by 김소리 on 6/25/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var id = ""
    @State var password = ""
    @FocusState var isTextFieldFocused: Bool
    
    var body: some View {
        
        // MARK: NavigationView
        NavigationView(content: {
            
            // MARK: ZStack
            ZStack {
                // MARK: VStack
                VStack {
                    
                    Spacer(minLength: 300)
                    
                    // MARK: 배경색 설정
                    LinearGradient(gradient: Gradient(colors: [Color.white, Color.theme]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                } // VStack
                
                // MARK: VStack
                VStack(content: {
                    
                    Spacer()
                    
                    // MARK: LOGO
                    Image("logo")
                        .resizable()
                        .frame(width: 230, height: 50)
                    
                    // 간격 조절
                    Spacer().frame(height: 50)
                    
                    
                    // MARK: 아이디
                    TextField("아이디", text: $id)
                        .keyboardType(.emailAddress)
                        // 높이 조절
                        .frame(height: 54)
                        // 내각 여백
                        .padding([.horizontal], 20)
                        // 배경색
                        .background(Color.white)
                        // 둥근 테두리를 추가
                        .cornerRadius(16)
                        // 그림자 추가
                        .shadow(
                            color: Color.gray.opacity(0.4),
                            radius: 5, x: 0, y: 2
                        )
                        // 테두리 둥근 정도, 색상
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                        // 외각 여백
                        .padding([.horizontal], 30)
                        // 폰트 사이즈
                        .font(.system(size: 20))
                        .focused($isTextFieldFocused)
                    
                    
                    // 간격 조절
                    Spacer().frame(height: 20)
                    
                    // MARK: 비밀번호
                    SecureField("비밀번호", text: $password)
                        // 높이 조절
                        .frame(height: 54)
                        // 내각 여백
                        .padding([.horizontal], 20)
                        // 배경색
                        .background(Color.white)
                        // 둥근 테두리를 추가
                        .cornerRadius(16)
                        // 그림자 추가
                        .shadow(
                            color: Color.gray.opacity(0.4),
                            radius: 5, x: 0, y: 2
                        )
                        // 테두리 둥근 정도, 색상
                        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
                        // 외각 여백
                        .padding([.horizontal], 30)
                        // 폰트 사이즈
                        .font(.system(size: 20))
                        .focused($isTextFieldFocused)
                    
                    
                    // 간격 조절
                    Spacer().frame(height: 20)
                    
                    // MARK: ID, Password 찾기
                    HStack {
                        NavigationLink {
                            FindInfoView(selectedFindInfo: 0)
                        } label: {
                            Text("아이디 찾기")
                                .foregroundStyle(.black)
                                .padding(.leading, 10)
                        }
                        Divider()
                            .frame(height: 14)
                            .overlay(Rectangle().frame(width: 1))
                        NavigationLink {
                            FindInfoView(selectedFindInfo: 1)
                        } label: {
                            Text("비밀번호 찾기")
                                .foregroundStyle(.black)
                        }
                    } // HStack
                    .padding(.top, 30)
                    
                    // 간격 조절
                    Spacer().frame(height: 30)
                    
                    // MARK: 로그인 버튼
                    Button{
                        //
                    } label: {
                        Text("로그인")
                            .padding()
                            .frame(width: 200)
                            .background(.theme)
                            .foregroundStyle(.white)
                            .clipShape(.buttonBorder)
                    }
                    
            //        Spacer()
                    
                    // MARK: 개인 회원 로그인
                    HStack(content: {
                        VStack{
                            Divider()
                                .overlay(Rectangle().frame(height: 1))
                                .padding(.leading, 30)
                        }
                        Text("개인회원 SNS 로그인")
                            .frame(width: 160)
                            .bold()
                        
                        VStack{
                            Divider()
                                .overlay(Rectangle().frame(height: 1))
                                .padding(.trailing, 30)
                        }

                    }) // HStack
                    .padding([.top, .bottom], 30)
                    
                    // MARK: 소셜 로그인 버튼
                    HStack(spacing: 20, content: {
                        Button(action: {
                            //
                        }, label: {
                            Image("google_icon")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFit()
                        })
                        
                        Button(action: {
                            //
                        }, label: {
                            Image("apple_icon")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .scaledToFit()
                        })
                        
                    }) // HStack
                    
                    // MARK: 회원 가입
                    HStack {
                        Text("계정이 없으세요?")
                        
                        NavigationLink(destination: JoinView()) {
                            Text("가입하기")
                                .bold()
                                .underline()
                                .foregroundColor(.black)
                        }
                    } // HStack
                    .padding(.top, 30)
                    
                    Spacer()
                    
                }) // VStack
            } // ZStack
        }) // NavigationView
        

    } //body
    
} // LoginView

//struct TextFieldComponent: View {
//    var foreground: String
//    @Binding var data: String
//    var body: some View {
//        TextField("비밀번호", text: $data)
//            // 높이 조절
//            .frame(height: 60)
//            // 내각 여백
//            .padding([.horizontal], 20)
//            // 배경색
//            .background(Color.white)
//            // 둥근 테두리를 추가
//            .cornerRadius(16)
//            // 그림자 추가
//            .shadow(
//                color: Color.gray.opacity(0.4),
//                radius: 5, x: 0, y: 2
//            )
//            // 테두리 둥근 정도, 색상
//            .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.gray))
//            // 외각 여백
//            .padding([.horizontal], 24)
//            // 폰트 사이즈
//            .font(.system(size: 20))
//    }
//}


#Preview {
    LoginView()
}
