// Generated using Sourcery 0.15.0 — https://github.com/krzysztofzablocki/Sourcery
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

    //MARK: - didSuccessFetch

    var didSuccessFetchHotelsCallsCount = 0
    var didSuccessFetchHotelsCalled: Bool {
        return didSuccessFetchHotelsCallsCount > 0
    }
    var didSuccessFetchHotelsReceivedHotels: [Hotel]?
    var didSuccessFetchHotelsClosure: (([Hotel]) -> Void)?

    func didSuccessFetch(hotels: [Hotel]) {
        didSuccessFetchHotelsCallsCount += 1
        didSuccessFetchHotelsReceivedHotels = hotels
        didSuccessFetchHotelsClosure?(hotels)
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

}
class HomeModuleFactoryInputMock: HomeModuleFactoryInput {

    //MARK: - interactor

    var interactorCallsCount = 0
    var interactorCalled: Bool {
        return interactorCallsCount > 0
    }
    var interactorReturnValue: HomeInteractorInput
    var interactorClosure: (() -> HomeInteractorInput)?

    func interactor() -> HomeInteractorInput {
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
    var interactorReturnValue: SplashScreenInteractorInput
    var interactorClosure: (() -> SplashScreenInteractorInput)?

    func interactor() -> SplashScreenInteractorInput {
        interactorCallsCount += 1
        return interactorClosure.map({ $0() }) ?? interactorReturnValue
    }

}
