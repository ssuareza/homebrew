require "FileUtils"

class Gssh < Formula
  homepage "https://github.com/ssuareza/gssh"

  $v = "v0.0.2"
  url "https://github.com/ssuareza/gssh/releases/download/#{$v}/gssh-#{$v}-darwin-amd64"
  version $v
  sha256 "140cb5d72d9af40881ba6dabd0a79f9c4a5662f6a3f50667b8d66c0f5c8a9341"

  def install
    FileUtils.mv("gssh-#{$v}-darwin-amd64", "gssh")
    bin.install "gssh"
  end

  #test do
  #  system "#{bin}/gssh", "--version"
  #end
end
