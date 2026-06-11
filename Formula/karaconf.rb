class Karaconf < Formula
  desc "Karabiner config manager"
  homepage "https://github.com/vgalanti/karaconf"
  version "0.1.2"
  license "MIT"

  on_arm do
    url "https://github.com/vgalanti/karaconf/releases/download/v0.1.2/karaconf-aarch64-apple-darwin.tar.gz"
    sha256 "831ed7ae2f0cced4243ecc5cc790d6609c69a40c5305d939da07d93cf3db416f"
  end

  on_intel do
    url "https://github.com/vgalanti/karaconf/releases/download/v0.1.2/karaconf-x86_64-apple-darwin.tar.gz"
    sha256 "0ed997a1abd2a37a4303619f8fc9448764e4bfb0d6cf5db42865e2a17ab64c45"
  end

  depends_on :macos

  def install
    bin.install "karaconf"
  end

  def caveats
    <<~EOS
      karaconf needs Karabiner-Elements:
        brew install --cask karabiner-elements
    EOS
  end

  test do
    assert_match "karaconf", shell_output("#{bin}/karaconf --help")
  end
end
