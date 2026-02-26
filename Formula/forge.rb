class Forge < Formula
  desc "competitive programming exercise scaffolder with a c++ template system"
  homepage "https://github.com/afonp/forge"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/afonp/forge/releases/download/v0.1.2/forge-x86_64-apple-darwin.tar.gz"
    end
    on_intel do
      url "https://github.com/afonp/forge/releases/download/v0.1.1/forge-x86_64-apple-darwin.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/afonp/forge/releases/download/v0.1.1/forge-aarch64-unknown-linux-gnu.tar.gz"
    end
    on_intel do
      url "https://github.com/afonp/forge/releases/download/v0.1.1/forge-x86_64-unknown-linux-gnu.tar.gz"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "competitive programming exercise scaffolder", shell_output("#{bin}/forge --help")
  end
end
