import Quick
import Nimble
import Foundation
@testable import GrimoireKit

final class FileSpec: QuickSpec {
  override func spec() {
    describe("read") {
      context("when file path is faulty") {
        let path = "fo  oo / bba r / bazz"

        it("throws the correct error") {
          expect { try File.read(path) }.to(throwError { error in
            if case let File.Error.invalidFilePath(actual) = error {
              expect(actual).to(equal("file://" + path))
            } else {
              fail("Wrong error type")
            }
          })
        }
      }

      context("when file path is valid") {
        let currentDir = FileManager.default.currentDirectoryPath
        let path = currentDir + "/Tests/GrimoireKitTests/Fixtures/FileSpecFixture.txt"

        it("fetch the correct file") {
          expect { try File.read(path) } == "foo\n"
        }
      }
    }
  }
}
