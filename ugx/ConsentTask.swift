//
//  GnemConsentTask.swift
//  Handles all of the Policy/ Terms before the security question.  Also includes intro survey.
//
//  Created by Austin Vershel on 6/24/16.
//  Copyright © 2016 Austin Vershel. All rights reserved.
//

import Foundation
import ResearchKit

public var ConsentTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    //TODO: add instructions step
//    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
//    instructionStep.optional = false;
//    instructionStep.title = "Survey Registration"
//    instructionStep.text = "Please complete the following questions in order to register for this survey."
//    steps += [instructionStep]
//    
//    //TODO: add 'ROle' question
//    let roleQuestionStepTitle = "What is your role?"
//    
//    let roletextChoices = [
//        ORKTextChoice(text: "Participant", value: 0),
//        ORKTextChoice(text: "Parent/Legal Guardian", value: 1)
//    ]
//    let roleAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: roletextChoices)
//    let roleQuestionStep = ORKQuestionStep(identifier: "RoleChoiceQuestionStep", title: roleQuestionStepTitle, answer: roleAnswerFormat)
//    roleQuestionStep.optional = false;
//    steps += [roleQuestionStep]
//    
//    
//    
//    //TODO: add 'sex' question
//    let sexQuestionStepTitle = "What is the gender of the participant?"
//    let sextextChoices = [
//        ORKTextChoice(text: "Male", value: 0),
//        ORKTextChoice(text: "Female", value: 1)
//        //        ORKTextChoice(text: "More than three times per week", value: 2)
//    ]
//    let sexAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: sextextChoices)
//    let sexQuestionStep = ORKQuestionStep(identifier: "SexChoiceQuestionStep", title: sexQuestionStepTitle, answer: sexAnswerFormat)
//    sexQuestionStep.optional = false;
//    steps += [sexQuestionStep]
//    
//    //TODO: add 'age' question
//    let ageQuestionStepTitle = "What is the age of the participant?"
//    let agetextChoices = [
//        ORKTextChoice(text: "6-10", value: 0),
//        ORKTextChoice(text: "11-17", value: 1),
//        ORKTextChoice(text: "18 or older", value: 2)
//    ]
//    let ageAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: agetextChoices)
//    let ageQuestionStep = ORKQuestionStep(identifier: "AgeChoiceQuestionStep", title: ageQuestionStepTitle, answer: ageAnswerFormat)
//    ageQuestionStep.optional = false;
//    steps += [ageQuestionStep]
//    
    
    
    //TODO: Add VisualConsentStep
    var consentDocument = GnemInformedConsentDocument
    let visualConsentStep = ORKVisualConsentStep(identifier: "VisualConsentStep", document: consentDocument)
    steps += [visualConsentStep]
    
    
//    //TODO: add 'age' question
    let tryQuestionStepTitle = "How long is your Medical Information stored?"
    let trytextChoices = [
        ORKTextChoice(text: "1 Year", value: 0),
        ORKTextChoice(text: "10 Years", value: 1),
        ORKTextChoice(text: "15 Years", value: 2)
    ]
    let tryAnswerFormat: ORKTextChoiceAnswerFormat = ORKAnswerFormat.choiceAnswerFormatWithStyle(.SingleChoice, textChoices: trytextChoices)
    
    let tryQuestionStep = ORKQuestionStep(identifier: "QuizChoiceQuestionStep", title: tryQuestionStepTitle, answer: tryAnswerFormat)
    tryQuestionStep.optional = false;
    steps += [tryQuestionStep]
    
    
    
    
    
    return ORKOrderedTask(identifier: "ConsentTask", steps: steps)
}
