class SpeedyOcr < Formula
  desc "Fast PDF OCR CLI tool powered by macOS Vision Framework"
  homepage "https://github.com/daiaoki/speedy-ocr"
  url "https://github.com/daiaoki/speedy-ocr/releases/download/v0.1.0/speedy-ocr-macos-universal.tar.gz"
  sha256 "2887d8b51154dc728d0137e6667f3c26564ca77fd6b87264d736a8b0bf840d46"
  version "0.1.0"
  license "MIT"

  depends_on :macos
  depends_on macos: :ventura

  def install
    bin.install "speedy-ocr"
  end

  test do
    assert_match "speedy-ocr", shell_output("#{bin}/speedy-ocr --help")
  end
end
