require 'formula'

class M < Formula
  homepage 'https://github.com/KevinSjoberg/m'
  url 'https://github.com/KevinSjoberg/m/archive/v0.1.1.tar.gz'
  sha1 '1bfe55fc9ee908a3d1a6fd0e98805757287340c9'

  def install
    (share/'m').install "m"
  end

  def caveats; <<-EOS.undent
    Make sure to add the following in your ~/.bashrc.

      source #{HOMEBREW_PREFIX}/share/m/m
    EOS
  end
end
