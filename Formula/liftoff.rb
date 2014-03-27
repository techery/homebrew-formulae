require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/techery/liftoff'
  url 'http://techery.github.io/liftoff/Liftoff-1.1.2.tar.gz'
  sha1 '4f3fd25d48188f06f4e1d02aa920c3897edf6f72'

  depends_on 'xcproj' => :recommended

  def install
    prefix.install 'defaults', 'templates', 'vendor'
    prefix.install 'lib' => 'rubylib'

    man1.install ['man/liftoff.1']
    man5.install ['man/liftoffrc.5']

    bin.install 'src/liftoff'
  end

  test do
    system "#{bin}/liftoff", '--version'
  end
end
