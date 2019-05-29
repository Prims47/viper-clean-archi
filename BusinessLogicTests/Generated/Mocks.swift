// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


// swiftlint:disable line_length
// swiftlint:disable variable_name

import Foundation
#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

import BusinessLogic














class BookingRepositoryProtocolMock: BookingRepositoryProtocol {

    //MARK: - fetchMyCurrentBooking

    var fetchMyCurrentBookingSuccessFailureCallsCount = 0
    var fetchMyCurrentBookingSuccessFailureCalled: Bool {
        return fetchMyCurrentBookingSuccessFailureCallsCount > 0
    }
    var fetchMyCurrentBookingSuccessFailureReceivedArguments: (success: (BookingRepositoryResponseProtocol) -> Void, failure: (BookingRepositoryErrorResponse) -> Void)?
    var fetchMyCurrentBookingSuccessFailureClosure: ((@escaping (BookingRepositoryResponseProtocol) -> Void, @escaping (BookingRepositoryErrorResponse) -> Void) -> Void)?

    func fetchMyCurrentBooking(success: @escaping (BookingRepositoryResponseProtocol) -> Void, failure: @escaping (BookingRepositoryErrorResponse) -> Void) {
        fetchMyCurrentBookingSuccessFailureCallsCount += 1
        fetchMyCurrentBookingSuccessFailureReceivedArguments = (success: success, failure: failure)
        fetchMyCurrentBookingSuccessFailureClosure?(success, failure)
    }

}
class BookingRepositoryResponseProtocolMock: BookingRepositoryResponseProtocol {
    var id: String?
    var name: String?
    var imageName: String?
    var date: Date?

}
class HomeInteractorInputMock: HomeInteractorInput {
    var output: HomeInteractorOutput?

    //MARK: - fetch

    var fetchCallsCount = 0
    var fetchCalled: Bool {
        return fetchCallsCount > 0
    }
    var fetchClosure: (() -> Void)?

    func fetch() {
        fetchCallsCount += 1
        fetchClosure?()
    }

}
class HomeInteractorOutputMock: HomeInteractorOutput {

    //MARK: - didSuccessFetchMyCurrentBooking

    var didSuccessFetchMyCurrentBookingCallsCount = 0
    var didSuccessFetchMyCurrentBookingCalled: Bool {
        return didSuccessFetchMyCurrentBookingCallsCount > 0
    }
    var didSuccessFetchMyCurrentBookingReceivedBooking: HomeItemProtocol?
    var didSuccessFetchMyCurrentBookingClosure: ((HomeItemProtocol) -> Void)?

    func didSuccessFetchMyCurrentBooking(_ booking: HomeItemProtocol) {
        didSuccessFetchMyCurrentBookingCallsCount += 1
        didSuccessFetchMyCurrentBookingReceivedBooking = booking
        didSuccessFetchMyCurrentBookingClosure?(booking)
    }

    //MARK: - didFailedFetch

    var didFailedFetchCallsCount = 0
    var didFailedFetchCalled: Bool {
        return didFailedFetchCallsCount > 0
    }
    var didFailedFetchClosure: (() -> Void)?

    func didFailedFetch() {
        didFailedFetchCallsCount += 1
        didFailedFetchClosure?()
    }

    //MARK: - notifyErrorCurrentBooking

    var notifyErrorCurrentBookingCallsCount = 0
    var notifyErrorCurrentBookingCalled: Bool {
        return notifyErrorCurrentBookingCallsCount > 0
    }
    var notifyErrorCurrentBookingClosure: (() -> Void)?

    func notifyErrorCurrentBooking() {
        notifyErrorCurrentBookingCallsCount += 1
        notifyErrorCurrentBookingClosure?()
    }

}
class HomeItemProtocolMock: HomeItemProtocol {
    var id: String {
        get { return underlyingId }
        set(value) { underlyingId = value }
    }
    var underlyingId: String!
    var name: String {
        get { return underlyingName }
        set(value) { underlyingName = value }
    }
    var underlyingName: String!
    var imageName: String {
        get { return underlyingImageName }
        set(value) { underlyingImageName = value }
    }
    var underlyingImageName: String!
    var date: Date {
        get { return underlyingDate }
        set(value) { underlyingDate = value }
    }
    var underlyingDate: Date!

}
class HomeModuleFactoryInputMock: HomeModuleFactoryInput {

    //MARK: - interactor

    var interactorBookingRepositoryCallsCount = 0
    var interactorBookingRepositoryCalled: Bool {
        return interactorBookingRepositoryCallsCount > 0
    }
    var interactorBookingRepositoryReceivedBookingRepository: BookingRepositoryProtocol?
    var interactorBookingRepositoryReturnValue: HomeInteractorInput!
    var interactorBookingRepositoryClosure: ((BookingRepositoryProtocol) -> HomeInteractorInput)?

    func interactor(bookingRepository: BookingRepositoryProtocol) -> HomeInteractorInput {
        interactorBookingRepositoryCallsCount += 1
        interactorBookingRepositoryReceivedBookingRepository = bookingRepository
        return interactorBookingRepositoryClosure.map({ $0(bookingRepository) }) ?? interactorBookingRepositoryReturnValue
    }

}
class SearchEngineWidgetInteractorInputMock: SearchEngineWidgetInteractorInput {
    var output: SearchEngineWidgetInteractorOutput?

}
class SearchEngineWidgetInteractorOutputMock: SearchEngineWidgetInteractorOutput {

}
class SearchEngineWidgetModuleFactoryProtocolMock: SearchEngineWidgetModuleFactoryProtocol {

    //MARK: - interactor

    var interactorCallsCount = 0
    var interactorCalled: Bool {
        return interactorCallsCount > 0
    }
    var interactorReturnValue: SearchEngineWidgetInteractorInput!
    var interactorClosure: (() -> SearchEngineWidgetInteractorInput)?

    func interactor() -> SearchEngineWidgetInteractorInput {
        interactorCallsCount += 1
        return interactorClosure.map({ $0() }) ?? interactorReturnValue
    }

}
class SplashScreenInteractorInputMock: SplashScreenInteractorInput {
    var output: SplashScreenInteractorOutput?

    //MARK: - loading

    var loadingCallsCount = 0
    var loadingCalled: Bool {
        return loadingCallsCount > 0
    }
    var loadingClosure: (() -> Void)?

    func loading() {
        loadingCallsCount += 1
        loadingClosure?()
    }

}
class SplashScreenInteractorOutputMock: SplashScreenInteractorOutput {

    //MARK: - routeToHome

    var routeToHomeCallsCount = 0
    var routeToHomeCalled: Bool {
        return routeToHomeCallsCount > 0
    }
    var routeToHomeClosure: (() -> Void)?

    func routeToHome() {
        routeToHomeCallsCount += 1
        routeToHomeClosure?()
    }

}
class SplashScreenModuleFactoryProtocolMock: SplashScreenModuleFactoryProtocol {

    //MARK: - interactor

    var interactorCallsCount = 0
    var interactorCalled: Bool {
        return interactorCallsCount > 0
    }
    var interactorReturnValue: SplashScreenInteractorInput!
    var interactorClosure: (() -> SplashScreenInteractorInput)?

    func interactor() -> SplashScreenInteractorInput {
        interactorCallsCount += 1
        return interactorClosure.map({ $0() }) ?? interactorReturnValue
    }

}
