//
//  GnemLateConsent.swift
//  This is the consent and registration following the security question
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var GnemLateConsent: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    //TODO: Add VisualConsentStep
    
    
    //TODO: Add VisualConsentStep
    var consentDocument2 = GnemValidateDocument
    let visualConsentStep2 = ORKVisualConsentStep(identifier: "VisualConsentStep2", document: consentDocument2)
    steps += [visualConsentStep2]
    
    
    var formsteps = [ORKFormItem]()
    //    ORKNavigableOrderedTask()
    //TODO: add ID/Pass question
    let idAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    idAnswerFormat.validationRegex = "[A-Z0-9a-z._%+-]+"
    idAnswerFormat.invalidMessage = "Invalid Username"
    idAnswerFormat.multipleLines = false
    let idQuestionStepTitle = "Username:"
    let idQuestionStep = ORKFormItem(identifier: "IDQuestionStep", text: idQuestionStepTitle, answerFormat: idAnswerFormat)
    idQuestionStep.optional = false;
    formsteps += [idQuestionStep]
    
    let passAnswerFormat = ORKTextAnswerFormat(maximumLength: 20)
    //    passAnswerFormat.validationRegex = "as"
    passAnswerFormat.validationRegex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"
    passAnswerFormat.invalidMessage = "Invalid Password.  Password must contain at least 8 characters, 1 number, both lower and uppercase characters, and a non-alphabetic character."
    passAnswerFormat.multipleLines = false
    let passQuestionStepTitle = "Password:"
    let passQuestionStep = ORKFormItem(identifier: "PassQuestionStep", text: passQuestionStepTitle, answerFormat: passAnswerFormat)
    passQuestionStep.optional = false;
    formsteps += [passQuestionStep]
    
    
    //TODO: add email question
    let emailAnswerFormat = ORKEmailAnswerFormat()
    //    emailAnswerFormat.multipleLines = false
    let emailQuestionStepTitle = "Email:"
    let emailQuestionStep = ORKFormItem(identifier: "EmailQuestionStep", text: emailQuestionStepTitle, answerFormat: emailAnswerFormat)
    emailQuestionStep.optional = false;
    formsteps += [emailQuestionStep]
    
    
    let forms = ORKFormStep(identifier: "RegisterSurveyTask");
    forms.formItems = formsteps;
    forms.optional = false;
    //    forms.initwith
    
    
    steps += [forms]
    
    
    
    //    TODO: Add ConsentReviewStep
    
    var consentDocument = GnemAllConsentDocument
    
    let signature = consentDocument.signatures!.first! as ORKConsentSignature
    
    let reviewConsentStep = ORKConsentReviewStep(identifier: "ConsentReviewStep", signature: signature, inDocument: consentDocument)
    
    reviewConsentStep.text = "Review Consent!"
    reviewConsentStep.reasonForConsent = "Consent to join study"
    
    steps += [reviewConsentStep]
    
    
    let summaryStep = ORKCompletionStep(identifier: "ThankYouStep")
    summaryStep.title = "Thank you for Registering!"
    summaryStep.text = "You will be automatically routed to your survey by clicking the Done button in the top right corner."
    //    summaryStep.
    steps += [summaryStep]
    return ORKOrderedTask(identifier: "ConsentLateTask", steps: steps)
}
