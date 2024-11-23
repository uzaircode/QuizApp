//
//  QuizAppSnapshotTests.swift
//  QuizAppSnapshotTests
//
//  Created by Nik Uzair on 23/11/2024.
//

import XCTest
import SnapshotTesting
@testable import QuizApp

final class QuizAppSnapshotTests: XCTestCase {
  
  func testQuizListScreen() {
    let view = QuizListScreen()
    assertSnapshot(of: view, as: .image)
  }
}
