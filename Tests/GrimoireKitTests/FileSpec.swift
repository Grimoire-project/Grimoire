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
          let expected = File.Error.invalidFilePath("file://" + path)
          expect { try File.read(path) }.to(throwError(expected))
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

    describe("Error") {
      describe("==") {
        let errorA = File.Error.invalidFilePath("error A")
        let errorB = File.Error.invalidFilePath("error B")

        context("when localized descriptions are different") {
          it("returns false") {
            expect(errorA) != errorB
          }
        }

        context("when localized descriptions are the same") {
          it("returns true") {
            expect(errorA) == errorA
          }
        }
      }
    }
  }
}
