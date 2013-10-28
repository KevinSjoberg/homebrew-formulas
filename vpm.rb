require 'formula'

class Vpm < Formula
  url      'https://github.com/KevinSjoberg/vpm/archive/v0.0.1.tar.gz'
  sha1     '4665519f1b1af46d303681407656dc304386a337'
  homepage 'https://github.com/KevinSjoberg/vpm'

  def install
    inreplace 'libexec/vpm', 'VPM_LIBEXECDIR=${VPM_LIBEXECDIR:-""}', "VPM_LIBEXECDIR=${VPM_LIBEXECDIR:-#{libexec}}"
    prefix.install Dir['*']
  end
end
