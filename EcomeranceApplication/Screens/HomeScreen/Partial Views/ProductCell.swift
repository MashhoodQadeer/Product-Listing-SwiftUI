// ProductCell.swift
// EcomeranceApplication
// Created by Mashhood Qadeer on 16/05/2021.

import Foundation
import SwiftUI
import UIKit

struct ProductCell: View {

  @ObservedObject
  var product: Product
  var animation: Namespace.ID
  var likeTapCallback: ((Product) -> Void)?
  var body: some View {
    VStack {
      HStack {
        Spacer()
        Text(product.itemPrice ?? "$0")
          .fontWeight(.heavy)
          .foregroundColor(.black)
          .padding(.horizontal, Dimensions.getValue(dimension: .Padding) * 2)
          .background(Color.white.opacity(0.2))
          .cornerRadius(Dimensions.getValue(dimension: .RoundCorners))

      }
      Image(uiImage: product.itemImage!)
        .resizable()
        .aspectRatio(contentMode: .fit)
        .matchedGeometryEffect(
          id: String.concat(["image", "-", "\(product.id)"]), in: animation, isSource: true
        )
        .padding(.top, Dimensions.getValue(dimension: .Padding))
        .padding(.bottom, Dimensions.getValue(dimension: .Padding))
        .padding(.horizontal, Dimensions.getValue(dimension: .Padding))
        .background(Color.clear)
        .frame(maxHeight: 70)
      Text(product.name ?? "Not Available")
        .fontWeight(.bold)
        .foregroundColor(.black)
        .matchedGeometryEffect(
          id: String.concat(["name", "-", "\(product.id)"]), in: animation, isSource: true)
      Text(product.description ?? "Not Available")
        .font(.system(size: 10))
        .foregroundColor(.gray)
        .matchedGeometryEffect(
          id: String.concat(["description", "-", "\(product.id)"]), in: animation, isSource: true)
      HStack {
        Button(
          action: {
            product.isLiked.toggle()
            self.likeTapCallback?(product)
          },
          label: {
            Image(systemName: product.isLiked ? "suit.heart.fill" : "suit.heart")
              .frame(
                width: Dimensions.getValue(dimension: .SmallImageIcon),
                height: Dimensions.getValue(dimension: .SmallImageIcon), alignment: .center
              )
              .foregroundColor(product.isLiked ? Color.red : Color.blue)
              .matchedGeometryEffect(
                id:
                  String.concat(["heart", "-", "\(product.id)"]), in: animation, isSource: true)
          })
        Spacer()
        Text(product.rating ?? "0.0")
          .fontWeight(.heavy)
          .foregroundColor(.black)
          .matchedGeometryEffect(
            id: String.concat(["rating", "-", "\(product.id)"]), in: animation, isSource: true)
      }
    }
    .padding(Dimensions.getValue(dimension: .Padding))
    .background(
      product.backgroundColor.toColor
        .matchedGeometryEffect(
          id: String.concat(["color", "-", "\(product.id)"]), in: animation, isSource: true)
    )
    .cornerRadius(Dimensions.getValue(dimension: .RoundCorners))

  }
}
