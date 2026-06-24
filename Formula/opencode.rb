class Opencode < Formula
  desc "AI-powered CLI for software development"
  homepage "https://github.com/WrkX/opencode"
  license "Apache-2.0"
  head "https://github.com/WrkX/opencode.git", branch: "dev"

  depends_on "bun" => :build

  def install
    system "bun", "install"
    system "bun", "run", "--cwd", "packages/opencode", "script/build.ts", "--single"

    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "packages/opencode/dist/opencode-darwin-arm64/bin/opencode"
      else
        bin.install "packages/opencode/dist/opencode-darwin-x64/bin/opencode"
      end
    else
      if Hardware::CPU.arm?
        bin.install "packages/opencode/dist/opencode-linux-arm64/bin/opencode"
      else
        bin.install "packages/opencode/dist/opencode-linux-x64/bin/opencode"
      end
    end
  end

  test do
    system "#{bin}/opencode", "--version"
  end
end
