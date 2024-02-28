//
//  Einstein.swift
//
//  Created by Tamer Zreg
//  Created on 2024-02-22
//  Version 1.0
//  Copyright (c) Tamer Zreg. All rights reserved.
//
//  This program calculates the Rest Mass Energy of any Mass.

import Foundation

// Speed of light constant
let SPEED_OF_LIGHT: Double = 299792458

// Variables to store rest mass energy and mass
var restMassEnergy: Double
var mass: Double

// Enum for error messages
enum ErrorMessages: Error {
    case invalidUserChoice
}

// Main program
print("This Program Calculates the Rest Mass Energy of an Object of mass.")
do {
    // Prompt user for mass input
    print("What is the mass of your object: ")
    
    // Read user input
    if let massString = readLine() {
        // Convert input to Double, defaulting to 0.0 if conversion fails
        mass = Double(massString) ?? 0.0
        
        // Check if mass is valid (greater than 0)
        if mass > 0.0 {
            // Calculate rest mass energy
            restMassEnergy = mass * pow(SPEED_OF_LIGHT, 2.0)
            print("Your Rest Mass Energy is \(restMassEnergy) J")
        } else {
            // Throw invalid user choice error if mass is not positive
            throw ErrorMessages.invalidUserChoice
        }
    } else {
        // Throw invalid user choice error if input is nil
        throw ErrorMessages.invalidUserChoice
    }
} catch ErrorMessages.invalidUserChoice {
    // Handle invalid user choice error
    print("Error: Please enter a valid positive mass and try again.")
}
