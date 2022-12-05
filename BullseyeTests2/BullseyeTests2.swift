//
//  BullseyeTests2.swift
//  BullseyeTests2
//
//  Created by Nicoly Crispi on 08/02/22.
//

import XCTest
@testable import Bullseye

class BullseyeTests2: XCTestCase {
    
    var sut: Game!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Game()
    }

    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }

    func testScoreIsComputedWhenGuessIsHigherThanTarget() {
      // given
      let guess = sut.target + 5

      // when
      sut.check(guess: guess)

      // then
      XCTAssertEqual(sut.scoreRound, 95, "Score computed from guess is wrong")
    }

}
