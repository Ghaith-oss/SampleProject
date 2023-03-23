//
//  Format.swift
//  
//
//  Created by Ghaith Alnajjar on 21/03/2023.
//

import Foundation
import ProjectDescription

let formatAction = TuistAutomation.Action(
    name: "Format",
    meet: ["swiftformat . --config /Users/ghaithalnajjar/Library/Group Containers/group.com.apple.notes/Accounts/36B6475E-E425-44B2-8134-3A564886F1A9/Media/3262794C-F61B-4E23-B132-89647CBCFAD7/SampleProject/BuildTools/.swiftformat"],
    isMet: ["swiftformat --lint . --config /Users/ghaithalnajjar/Library/Group Containers/group.com.apple.notes/Accounts/36B6475E-E425-44B2-8134-3A564886F1A9/Media/3262794C-F61B-4E23-B132-89647CBCFAD7/SampleProject/BuildTools/.swiftformat"]
)

let tuistAutomation = TuistAutomation(
    actions: [
        formatAction
    ]
)

