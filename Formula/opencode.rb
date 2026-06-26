class Opencode < Formula
  desc "AI-powered CLI for software development"
  homepage "https://github.com/WrkX/opencode"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/WrkX/opencode/releases/download/v0.0.3/opencode-darwin-arm64.zip"
      sha256 "477fe0fce44efcd83eb740b1860b1bfc52d5e85c241266fce0b79c61479bd755"
    else
      url "https://github.com/WrkX/opencode/releases/download/v0.0.3/opencode-darwin-x64.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WrkX/opencode/releases/download/v0.0.3/opencode-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/WrkX/opencode/releases/download/v0.0.3/opencode-linux-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  def install
    bin.install "opencode"
  end

  test do
    system "#{bin}/opencode", "--version"
  end
end
