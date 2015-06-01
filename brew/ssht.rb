require 'formula'

class Ssht < Formula
  homepage 'https://github.com/brejoc/ssht/'
  url 'https://github.com/brejoc/ssht/archive/0.3.tar.gz'
  sha1 'bcfde2a7c90fbe88e111cb45c18ebd800e60477f'

  head 'https://github.com/brejoc/ssht.git', :revision => '4e895def2b901737ba91bca16b6f708881de18f6'

  def install
    bin.install "ssht"
  end
end
