require "FileUtils"

class Tmdb < Formula
  homepage "https://github.com/ssuareza/tmdb"

  $v = "v0.0.1"
  url "https://github.com/ssuareza/themoviedb-cli/releases/download/#{$v}/tmdb-#{$v}-darwin-amd64"
  version $v
  sha256 "85862330fce091eb5cafc937540885fd422c9e49eff0f34c65e0f5c16997ae26"

  def install
    FileUtils.mv("tmdb-#{$v}-darwin-amd64", "tmdb")
    bin.install "tmdb"
  end
end
