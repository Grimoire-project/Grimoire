import Quick
import Nimble
import Foundation
@testable import GrimoireKit

final class FileSpec: QuickSpec {
  override func spec() {
    describe("read") {
      context("when file path is faulty") {
        let path = "Sources /Commands/Help.swift"

        it("throws the correct error") {
          expect { try File.read(path) }.to(throwError { error in
            expect(error.localizedDescription) == "The file “Help.swift” couldn’t be opened because there is no such file."
          })
        }
      }

      context("when file path is valid") {
        let currentDir = FileManager.default.currentDirectoryPath
        let path = currentDir + "/Tests/GrimoireKitTests/Fixtures/FileSpecFixture.txt"

        it("fetch the correct file") {
          expect { try File.read(path) } == "some text content\n"
        }
      }
    }
  }
}
