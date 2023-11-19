// ContentView.swift
// EcomeranceApplication
// Created by Mashhood Qadeer on 15/05/2021.

import SwiftUI

struct HomeScreen: View {

  @Namespace var animation
  @State var show: Bool = false
  @ObservedObject var modal = HomeScreenModel()

  var body: some View {

    ZStack {
      VStack {
        Navigationbar(
          navTapped: self.navPressed,
          profileTapped: self.profilePressed,
          navBarButtonIcon: $modal.navIcon,
          profileImage: $modal.profileIcon)
        VStack {
          HStack {
            Text("Let's").font( /*@START_MENU_TOKEN@*/.title /*@END_MENU_TOKEN@*/)
              .foregroundColor(.black)
            Spacer()
          }
          HStack {
            Text("Get Started").font(.largeTitle)
              .fontWeight(.heavy)
              .foregroundColor(.black)
            Spacer()
          }
        }.padding(Dimensions.getValue(dimension: .Padding))
        ScrollView(.horizontal, showsIndicators: false) {
          VStack {
            HStack {
              ForEach(self.modal.tabs, id: \.self) { tab in
                TabbarItem(animation: animation, selected: $modal.selectedTab, title: tab)

                Spacer(minLength: Dimensions.getValue(dimension: .Padding))
              }
            }.padding(.horizontal, Dimensions.getValue(dimension: .Padding))
          }.frame(maxWidth: .infinity)
        }
        ScrollView {
          LazyVGrid(
            columns: Array(
              repeating: GridItem(.flexible(), spacing: Dimensions.getValue(dimension: .Padding)),
              count: 2), spacing: Dimensions.getValue(dimension: .Padding)
          ) {
            ForEach(modal.products) { product in
              ProductCell(product: product, animation: animation)
                .gesture(
                  TapGesture()
                    .onEnded {
                      withAnimation(.spring()) {
                        modal.updateSelectedProduct(with: product)
                        self.show = true
                      }
                    }

                )
            }
          }.padding(.horizontal, Dimensions.getValue(dimension: .Padding))
        }
        Spacer()
      }.opacity(show ? 0 : 1)

      if show {
        ProductDetailsScreen(product: modal.selectedProduct, show: $show, animation: animation)
      }
    }

  }

  func navPressed() {

  }

  func profilePressed() {

  }

}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    HomeScreen()
  }
}
