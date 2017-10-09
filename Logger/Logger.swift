//
//  Logger.swift
//  Logger
//
//  Created by Brenton O'Callaghan on 10/9/17.
//  Copyright © 2017 BOCDN. All rights reserved.
//

import Foundation

class Logger {
    
    // Singleton logger
    private static let _logger = Logger()
    
    // Internal log level
    private var logLevel: LogLevel
    
    // Required init function
    private init(){
        // Always start with error logging.
        logLevel = LogLevel.error
    }
    
    // the type of message the caller is passing
    enum MessageType: Int {
        case debug = 2
        case info  = 1
        case error = 0
    }
    
    // the level of logging currently being printed
    enum LogLevel: Int {
        case debug = 3
        case info  = 2
        case error = 1
        case off = 0
    }
    
    // external function for logging
    // passing in the message to be posted and what level it should be posted at.
    static func post(message:String, type:MessageType) -> String {
        switch _logger.logLevel {
            case .debug:
                NSLog("%s", message)
                return message
            case .info:
                if(type == .info){ NSLog("%s", message)}
                return message
            case .error:
                if(type == .error){ NSLog("%s", message)}
                return message
            default:
                return message
        }
    }
    
    // Allows for dynamic updating of the log level
    // if the assignment is successful we return true
    static func setLogLevel(newLogLevel:LogLevel){
        _logger.logLevel = newLogLevel
    }
    
    // Get the current log level
    static func getLogLevel() -> LogLevel{
        return _logger.logLevel
    }
}
