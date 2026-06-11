class Karaconf < Formula
    desc "Karabiner config manager"
    homepage "https://github.com/vgalanti/karaconf"
    url "https://github.com/vgalanti/karaconf/archive/refs/tags/v0.1.0.tar.gz"
    sha256 "5a306be4ceb6b67dc7b713cc0324a3cec2105f6158fd1210dd160e405ce57671  -"
    license "MIT"
    head "https://github.com/vgalanti/karaconf.git", branch: "main"

    depends_on "rust" => :build

    def install
      system "cargo", "install", *std_cargo_args
    end

    test do
      assert_match "karaconf", shell_output("#{bin}/karaconf --help")
    end
  end
