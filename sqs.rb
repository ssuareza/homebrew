require "FileUtils"

class Sqs < Formula
  homepage "https://github.com/ssuareza/sqsmover"

  $v = "v0.0.2"
  url "https://github.com/ssuareza/sqsmover/releases/download/#{$v}/sqs-#{$v}-darwin-amd64"
  version $v
  sha256 "2afcd9bf324e08f47c86ab7950b0f7a8c18ba56f235f2e6d9672f6f941f503b1"

  def install
    FileUtils.mv("sqs-#{$v}-darwin-amd64", "sqs")
    bin.install "sqs"
  end
end
