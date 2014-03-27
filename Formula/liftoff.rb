require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/techery/liftoff'
  url 'http://techery.github.io/liftoff/Liftoff-1.1.2.tar.gz'
  sha1 'df836a64b6983f404e19e690c3d2d34ad79b37a2'

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
