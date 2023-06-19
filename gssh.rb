require 'FileUtils'

class Gssh < Formula
  homepage 'https://github.com/ssuareza/golang/gssh'

  $v = 'v0.0.3'
  url "https://github.com/ssuareza/gssh/releases/download/#{$v}/gssh-#{$v}-darwin-amd64"
  version $v
  sha256 '102d20687b546ad53f079481915c2f09edf230750db7035adb11be43ae40eec4'

  def install
    FileUtils.mv("gssh-#{$v}-darwin-amd64", 'gssh')
    bin.install 'gssh'
  end
end
