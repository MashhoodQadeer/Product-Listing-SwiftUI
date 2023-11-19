// HomeScreenModel.swift
// EcomeranceApplication
// Created by Mashhood Qadeer on 20/11/2023.

import Foundation

class HomeScreenModel: ObservableObject {

  @Published
  var selectedProduct: Product = DataFactory.instance.productsList.first!

  @Published
  var products: [Product] = DataFactory.instance.productsList

  @Published
  var profileIcon: String = Values.ProfileIcon.rawValue

  @Published
  var navIcon: String = Values.NavButton.rawValue

  @Published
  var selectedTab: String = DataFactory.instance.homeScreenNav.first ?? ""

  var tabs: [String] = DataFactory.instance.homeScreenNav

  func updateSelectedProduct(with newProduct: Product) {
    selectedProduct = newProduct
  }

}
