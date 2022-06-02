//
//  SmallWidget.swift
//  Runner


import Foundation

struct SmallWidgetModel: Decodable {
    let detail: String
    let amount: Float
    let image: URL
    let date: String
    let auGTS: Float
    let euVAT: Float
    let usRWT: Float
    let usBWT: Float
}

