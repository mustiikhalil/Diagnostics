//
//  HTMLGeneratingTests.swift
//  DiagnosticsTests
//
//  Created by Antoine van der Lee on 02/12/2019.
//  Copyright © 2019 WeTransfer. All rights reserved.
//

import XCTest
@testable import Diagnostics

final class HTMLGeneratingTests: XCTestCase {

    /// It should generate HTML for diagnostic chapters correctly.
    func testDiagnosticsChapterHTML() {
        let chapter = DiagnosticsChapter(title: "TITLE", diagnostics: "CONTENT")
        let expectedHTML = "<div><h3>\(chapter.title)</h3></div><div>\(chapter.diagnostics.html())</div>"
        XCTAssertEqual(chapter.html(), expectedHTML)
    }

    /// It should correctly transform a Dictionary to HTML.
    func testDictionaryHTML() {
        let dict = ["App Name": "Collect by WeTransfer"]
        let expectedHTML = "<ul><li><b>\(dict.keys.first!)</b>\(dict.values.first!)</li></ul>"
        XCTAssertEqual(dict.html(), expectedHTML)
    }

}