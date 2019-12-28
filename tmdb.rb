require "FileUtils"

class Tmdb < Formula
  homepage "https://github.com/ssuareza/tmdb"

  $v = "v0.0.1"
  url "https://github.com/ssuareza/themoviedb-cli/releases/download/#{$v}/tmdb-#{$v}-darwin-amd64"
  version $v
  sha256 "651600fc6ad74667d7ab8ef865db7f75bd0e64c7f3958286a4919ab9d1bbd584"

  def install
    FileUtils.mv("tmdb-#{$v}-darwin-amd64", "tmdb")
    bin.install "tmdb"
  end
end
