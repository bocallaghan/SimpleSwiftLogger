//
//  LoggerTests.swift
//  LoggerTests
//
//  Created by Brenton O'Callaghan on 10/9/17.
//  Copyright © 2017 BOCDN. All rights reserved.
//

import XCTest
@testable import Logger

class LoggerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInfo() {
        XCTAssertNotNil(
            Logger.post(message: "Info Message", type: Logger.MessageType.info),
            "Posting info message to logger failed")
    }
    
    func testError() {
        XCTAssertNotNil(
            Logger.post(message: "Error Message", type: Logger.MessageType.info),
            "Posting error message to logger failed")
    }
    
    func testDebug() {
        XCTAssertNotNil(
            Logger.post(message: "Debug Message", type: Logger.MessageType.info),
            "Posting Debug message to logger failed")
    }
    
    func testSetDebugLogLevel() {
        Logger.setLogLevel(newLogLevel: Logger.LogLevel.debug)
        XCTAssertEqual(Logger.getLogLevel(), Logger.LogLevel.debug)
    }
    
    func testSetInfoLogLevel() {
        Logger.setLogLevel(newLogLevel: Logger.LogLevel.info)
        XCTAssertEqual(Logger.getLogLevel(), Logger.LogLevel.info)
    }
    
    func testSetErrorLogLevel() {
        Logger.setLogLevel(newLogLevel: Logger.LogLevel.error)
        XCTAssertEqual(Logger.getLogLevel(), Logger.LogLevel.error)
    }
    
    func testSetOffLogLevel() {
        Logger.setLogLevel(newLogLevel: Logger.LogLevel.off)
        XCTAssertEqual(Logger.getLogLevel(), Logger.LogLevel.off)
    }
    
}
