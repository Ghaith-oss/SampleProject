
import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin
//import TuistSupport
//import ProjectAutomation

/*
                +-------------+
                |             |
                |     App     | Contains SampleProject App target and SampleProject unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Local plugin loaded
let localHelper = LocalHelper(name: "MyPlugin")

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project(name: "SampleProject",
                         // platform: .iOS,
                         // path: "/Users/ghaithalnajjar/Downloads/SampleProject",
                          targets: [
                              Target(
                                  name: "CountryWiki",
                                  platform: .iOS,
                                  product: .app,
                                  bundleId: "com.rabobank.app",
                                  infoPlist: .default,
                                                                                                                          
                                  sources: ["/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/Resolvers/CountriesResolver.swift",
                                            
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesProvider.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/URLSessionProviderProtocol.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/MainViewController.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesList.Country+CountriesAPI.Country.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Controllers/CountriesAdapterViewController.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/AppDelegate.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/URLSessionProvider.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Views/MBProgressHUDAdapter.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Constants/AccessibilityIdentifiers.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/CountriesViewControllerDelegate.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/ViewModels/CountryDetailsViewModel+CountriesAPI.Country.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/CountriesViewControllerProtocol.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/MainResolverProtocol.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/Resolvers/MainResolver.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Views/ActivityIndicatorProtocol.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/MainSceneDelegate.swift",
                                            "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesProvider+CountriesProviderProtocol.swift",
                                            
                                      ],
                                  dependencies: [
                                   // .package(url: "https://github.com/realm/SwiftLint.git", from: "0.51.0-rc.2")
                                             ]
                                  
                                     /* preActions: [
                                                      TargetAction.tool(
                                                          name: "SwiftLint",
                                                          tool: "swiftlint",
                                                          arguments: ["lint", "--config /Users/ghaithalnajjar/Library/Group Containers/group.com.apple.notes/Accounts/36B6475E-E425-44B2-8134-3A564886F1A9/Media/3262794C-F61B-4E23-B132-89647CBCFAD7/SampleProject/BuildTools/.swiftlint.yml"],
                                                          inputPaths: ["/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/Resolvers/CountriesResolver.swift",
                                                                       
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesProvider.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/URLSessionProviderProtocol.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/MainViewController.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesList.Country+CountriesAPI.Country.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Controllers/CountriesAdapterViewController.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/AppDelegate.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/URLSessionProvider.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Views/MBProgressHUDAdapter.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Constants/AccessibilityIdentifiers.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/CountriesViewControllerDelegate.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/ViewModels/CountryDetailsViewModel+CountriesAPI.Country.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Controllers/CountriesViewControllerProtocol.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/MainResolverProtocol.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Components/Resolvers/MainResolver.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Views/ActivityIndicatorProtocol.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Main/Components/MainSceneDelegate.swift",
                                                                       "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Modules/Countries/Models/CountriesProvider+CountriesProviderProtocol.swift",],
                                                          inputFileListPaths: [],
                                                          outputPaths: [],
                                                          outputFileListPaths: []
                                                      )
                                                  ],
                                  
                                  preBuildScripts: [
                                                  .script(
                                                      name: "Format",
                                                      scriptPath: "/Users/ghaithalnajjar/Desktop/SampleProject/Format.swift"
                                                  )
                                              ]

                              
                           */),
                              
                              
                              
                              Target(
                                  name: "CountryWikiTests",
                                  platform: .iOS,
                                  product: .unitTests,
                                  bundleId: "com.rabobank.app",
                                  infoPlist: .default,
                                  sources: [
                                 
                                    "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWikiTests/Cases/CountryWikiTests.swift"
                                  ],
                                      
                                  dependencies: [
                                      .target(name: "CountryWiki")
                                  ]
                              ),
                              
                              Target(
                                  name: "CountryWikiUITests",
                                  platform: .iOS,
                                  product: .unitTests,
                                  bundleId: "com.rabobank.app",
                                  infoPlist: .default,
                                  sources: [
                                    
                                    "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWikiUITests/Cases/CountryWikiUITests.swift",
                                    "/Users/ghaithalnajjar/Downloads/SampleProject/iOSApp/CountryWiki/Constants/AccessibilityIdentifiers.swift"
                                     
                                      
                                  ],
                                  dependencies: [
                                      .target(name: "CountryWiki")
                                  ]
                              )
                          ],
                          additionalFiles: []
                          
                              
                              
                          )









                         //     let project = Project(
                         //        name: "MyApp",
                          //        targets: [
                            //          Target(
                              //            name: "MyApp",
                                //          platform: .iOS,
                                //          product: .app,
                                          // ... other target properties ...
                               //           dependencies: [
                               //               .package(url: "https://github.com/realm/SwiftLint.git", from: "0.43.1")
                               //           ],
                               //           preActions: [
                               //               TargetAction.tool(
                               //                   name: "SwiftLint",
                               //                   tool: "swiftlint",
                                //                  arguments: ["lint", "--config", "path/to/your/swiftlint/config/file"],
                                //                  inputPaths: ["//Sources"],
                                //                  inputFileListPaths: [],
                                //                  outputPaths: [],
                                //                  outputFileListPaths: []
                                //              )
                                //         ]
                                //      )
                               //   ]
                          //    )
                             

//    sources: [
 //        "Sources/CountriesResolver.swift/**",
 //        "Sources/CountriesProvider.swift/**",
 //        "Sources/RLSessionProviderProtocol.swift/**",
 //        "Sources/MainViewController.swift/**",
  //       "Sources/CountriesList.Country+CountriesAPI.Country.swift.swift/**",
  //       "Sources/CountriesAdapterViewController.swift/**",
 //        "Sources/AppDelegate.swift/**",
  //       "Sources/URLSessionProvider.swift/**",
  //       "Sources/MBProgressHUDAdapter.swift/**",
  //       "Sources/AccessibilityIdentifiers.swift/**",
  //       "Sources/CountriesViewControllerDelegate.swift/**",
  //       "Sources/CountryDetailsViewModel+CountriesAPI.Country.swift/**",
  //       "Sources/CountriesViewControllerProtocol.swift/**",
  //       "Sources/MainResolverProtocol.swift/**",
  //       "Sources/MainResolver.swift/**",
   //      "Sources/MainSceneDelegate.swift/**",
  //       "Sources/CountriesViewControllerDelegate.swift/**",
  //      "Sources/CountriesProvider+CountriesProviderProtocol.swift/**"
  //       ],




