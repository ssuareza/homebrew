require "FileUtils"

class Tmdb < Formula
  homepage "https://github.com/ssuareza/tmdb"

  $v = "v0.0.4"
  url "https://github.com/ssuareza/themoviedb-cli/releases/download/#{$v}/tmdb-#{$v}-darwin-amd64"
  version $v
  sha256 "9ef9ddd010bfabcb953b9ed8f0cbf64a438e7de594376cb6609b6778ae980245"

  def install
    FileUtils.mv("tmdb-#{$v}-darwin-amd64", "tmdb")
    bin.install "tmdb"
  end
end
