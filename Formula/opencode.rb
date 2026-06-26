class Opencode < Formula
  desc "AI-powered CLI for software development"
  homepage "https://github.com/WrkX/opencode"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/WrkX/opencode/releases/download/v0.0.2/opencode-darwin-arm64.zip"
      sha256 "948e3bf26016ab2fc04399297c33b0a5aee737eec89d8af3a0faab2faf7bb5ff"
    else
      url "https://github.com/WrkX/opencode/releases/download/v0.0.2/opencode-darwin-x64.zip"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/WrkX/opencode/releases/download/v0.0.2/opencode-linux-arm64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/WrkX/opencode/releases/download/v0.0.2/opencode-linux-x64.tar.gz"
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
