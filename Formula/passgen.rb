class Passgen < Formula
    desc "A simple and secure password generator"
    homepage "https://github.com/Bevisy/passgen"
    version "v0.0.1"
    license "Apache License"

    if Hardware::CPU.arm?
      url "https://github.com/Bevisy/passgen/releases/download/v0.0.1/passgen-v0.0.1-arm64-apple-darwin.tar.gz"
      sha256 "ab4ec1fcf99bf4c61ab377b4792b1a2f835af446482c4062b86e5752abd346cf"
    else
      url "https://github.com/Bevisy/passgen/releases/download/v0.0.1/passgen-v0.0.1-amd64-apple-darwin.tar.gz"
      sha256 "e2ed31d577c1afed43748b60b75659ebf9cfb8d74c233dcc6970a31cf08448f0"
    end
    

    def install
      bin.install "passgen"
    end

    test do
      system "#{bin}/passgen", "--help"
    end
  end