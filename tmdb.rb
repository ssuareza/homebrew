require "FileUtils"

class Tmdb < Formula
  homepage "https://github.com/ssuareza/tmdb"

  $v = "v0.0.2"
  url "https://github.com/ssuareza/tmdb/releases/download/#{$v}/tmdb-#{$v}-darwin-amd64"
  version $v
  sha256 "5582347ddbcd73711fc1226b99053f4916e5985e0805e3cd8ac8e2cc80ba2ffa"

  def install
    FileUtils.mv("tmdb-#{$v}-darwin-amd64", "tmdb")
    bin.install "tmdb"
  end
end
