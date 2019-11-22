require "FileUtils"

class Yaml2json < Formula
  homepage "https://github.com/ssuareza/yaml2json"

  $v = "v0.0.1"
  url "https://github.com/ssuareza/yaml2json/releases/download/#{$v}/yaml2json-#{$v}-darwin-amd64"
  version $v
  sha256 "2b24f80dca2191d7b6c0057a7ca6faa91a872ad5b0d0e39d7881ae343b9241d9"

  def install
    FileUtils.mv("yaml2json-#{$v}-darwin-amd64", "yaml2json")
    bin.install "yaml2json"
  end
end