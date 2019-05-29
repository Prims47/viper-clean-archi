//
//  HomeInteractorTests.swift
//  BusinessLogicTests
//
//  Created by Ilan Z on 29/05/2019.
//  Copyright © 2019 Ilan Z. All rights reserved.
//

import XCTest
import Nimble

@testable import BusinessLogic

class HomeInteractorTests: XCTestCase {
    private var interactor: HomeInteractor!
    private var output: HomeInteractorOutputMock!
    private var repository: BookingRepositoryProtocolMock!

    override func setUp() {
        self.output = HomeInteractorOutputMock()
        self.repository = BookingRepositoryProtocolMock()

        self.interactor = HomeInteractor(bookingRepository: repository)
        self.interactor.output = self.output
    }

    override func tearDown() {
        self.interactor = nil
        self.output = nil
        self.repository = nil
    }

    func test_givenFailureFetch_whenFetchIsCalled_ThenCallOutputFailed() {
        // Given
        self.repository.fetchMyCurrentBookingSuccessFailureClosure = { _, failure in
            failure(.network)
        }

        // When
        self.interactor.fetch()

        // Then
        expect(self.output.didSuccessFetchMyCurrentBookingCalled).to(beFalse())
        expect(self.output.notifyErrorCurrentBookingCalled).to(beFalse())
        expect(self.output.didFailedFetchCallsCount).to(equal(1))

    }

    func test_givenSuccessFetchWithWrongDate_whenFetchIsCalled_ThenCallOutputFailed() {
        // Given
        self.repository.fetchMyCurrentBookingSuccessFailureClosure = { success, _ in
            var date = Date()
            date.addTimeInterval(-1000)

            success(BookingRepositoryResponse(id: "47", name: "Pepito", imageName: "Image", date: date))
        }

        // When
        self.interactor.fetch()

        // Then
        expect(self.output.didSuccessFetchMyCurrentBookingCalled).to(beFalse())
        expect(self.output.notifyErrorCurrentBookingCallsCount).to(equal(1))
        expect(self.output.didFailedFetchCalled).to(beFalse())

    }
}

// MARK: - BookingRepositoryResponseProtocol

private struct BookingRepositoryResponse: BookingRepositoryResponseProtocol {
    var id: String?
    var name: String?
    var imageName: String?
    var date: Date?
}
