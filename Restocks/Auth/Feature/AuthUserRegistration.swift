//
//  AuthUserRegistration.swift
//  Restocks
//
//  Created by Scott Hodson on 12/07/2021.
//

public struct AuthUserRegistration: Equatable {
    let firstName: String
    let lastName: String
    let phoneCode: String
    let phoneNumber: String
    let email: String
    let password: String
    let passwordConfirmation: String

    public init(firstName: String, lastName: String, phoneCode: String, phoneNumber: String, email: String, password: String, passwordConfirmation: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneCode = phoneCode
        self.phoneNumber = phoneNumber
        self.email = email
        self.password = password
        self.passwordConfirmation = passwordConfirmation
    }
}
