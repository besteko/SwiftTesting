//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Beste Kocaoglu on 15.10.2023.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {

        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        /* let addButton =  app.navigationBars["SwiftTesting.View"].buttons["Add"]
         let elementsQuery =  app.alerts["Add Item"].scrollViews.otherElements.buttons["Ok"]
         let textField = elementsQuery.collectionViews.textFields["Enter Item"]
         
         let okButton = elementsQuery.buttons["OK"]
         
         let addedCell = app.tables.cells.containing(.staticText, identifier: "my to do").element
         
         addButton.tap()
         textField.tap()
         textField.typeText("my to do")
         okButton.tap()
         
         XCTAssertTrue(addedCell.exists)
         */
        
        
        func testToDoItem() throws {
            let app = XCUIApplication()
            app.launch()
            
            
            let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
            
            let textField =  app.alerts["Add Item"].scrollViews.otherElements.collectionViews.textFields["Enter Item"]
            
            let okBUtton = app.alerts["Add Item"].scrollViews.otherElements.buttons["OK"]
            
            let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do").element
            
            
            addButton.tap()
            textField.tap()
            textField.typeText("my to do")
            okBUtton.tap()
            
            XCTAssertTrue(addedCell.exists)
            
            
        }
        
        func testDeleteItem() throws {
            let app = XCUIApplication()
            app.launch()
            
            
            let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
            
            let textField =  app.alerts["Add Item"].scrollViews.otherElements.collectionViews.textFields["Enter Item"]
            
            let okBUtton = app.alerts["Add Item"].scrollViews.otherElements.buttons["OK"]
            
            let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do").element
            
            
            //tables
            
            let tablesQuery = app.tables
            let deleteButton = tablesQuery.buttons["Delete"]
            
            
            addButton.tap()
            textField.tap()
            textField.typeText("my to do")
            okBUtton.tap()
            
            addedCell.swipeLeft()
            deleteButton.tap()
            
            XCTAssertFalse(addedCell.exists)
            
            
        }
        
    }

   

