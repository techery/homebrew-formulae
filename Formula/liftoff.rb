require 'formula'

class Liftoff < Formula
  homepage 'https://github.com/thoughtbot/liftoff'
  url 'http://thoughtbot.github.io/liftoff/Liftoff-1.1.2.tar.gz'
  sha1 'efe55e2fb428df1e998539e3ab853c690d738b46'

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
