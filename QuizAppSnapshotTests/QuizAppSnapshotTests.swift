//
//  QuizAppSnapshotTests.swift
//  QuizAppSnapshotTests
//
//  Created by Nik Uzair on 23/11/2024.
//

import XCTest
import SnapshotTesting
@testable import QuizApp
import SwiftUI

final class QuizAppSnapshotTests: XCTestCase {
  
  private var screenWidth: CGFloat {
    return UIScreen.main.bounds.size.width
  }
  
  func testQuizListScreen() {
      let quiz = QuizData.loadQuizes()[0]
      let quizSubmission = QuizSubmission(quizId: quiz.quizId)
      
      let view = QuestionListScreen(quiz: quiz, quizSubmission: quizSubmission)
      
      let hostingController = UIHostingController(rootView: view)
      
      let size = CGSize(width: screenWidth, height: 48)
      hostingController.view.frame = CGRect(origin: .zero, size: size)
      
      assertSnapshot(of: hostingController.view, as: .image(size: size), record: true)
    }
}
