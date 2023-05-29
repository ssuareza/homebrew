require "FileUtils"

class Tmdb < Formula
  homepage "https://github.com/ssuareza/tmdb"

  $v = "v0.0.3"
  url "https://github.com/ssuareza/themoviedb-cli/releases/download/#{$v}/tmdb-#{$v}-darwin-amd64"
  version $v
  sha256 "8c331eb29d66b1d7ff3acefd4c4f270fd6b66ce0a3347e8bfc9e3f6c80c36e11"

  def install
    FileUtils.mv("tmdb-#{$v}-darwin-amd64", "tmdb")
    bin.install "tmdb"
  end
end
