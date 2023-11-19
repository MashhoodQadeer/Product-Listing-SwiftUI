// DataFactory.swift
// EcomeranceApplication
// Created by Mashhood Qadeer on 20/11/2023.

import Foundation

class DataFactory {

  static var instance: DataFactory = DataFactory()

  //homeScreenNav
  var homeScreenNav: [String] {
    [
      "Glasses",
      "Lense",
      "Stylish Glasses",
      "Normal Lense",
      "Expensive Lense",
    ]
  }

  //Products list
  var productsList: [Product] {
    [
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product1"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product2"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product3"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product1"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product2"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product3"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
      Product(
        name: "Test Product", rating: "3.8", itemImage: #imageLiteral(resourceName: "g4"),
        title: "Test Product", description: "It is for the testing product", itemPrice: "$10",
        backgroundColor: "Product4"),
    ]
  }

}
