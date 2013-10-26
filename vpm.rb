require 'formula'

class Vpm < Formula
  homepage 'https://github.com/KevinSjoberg/vpm'
  url 'https://github.com/KevinSjoberg/vpm/archive/v0.0.1.tar.gz'
  sha1 '921907e0463aae9b43350f97c79ef8de9305094b'

  def install
    inreplace 'libexec/vpm', '%VPM_LIBEXECDIR%', libexec
    prefix.install Dir['*']
  end
end
