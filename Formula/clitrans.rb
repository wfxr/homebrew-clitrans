# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitrans < Formula
  desc "Yet another command-line translator (Chinese <=> English)"
  homepage "https://github.com/wfxr/clitrans"
  url "https://github.com/wfxr/clitrans/releases/download/v0.3.1/clitrans-v0.3.1-x86_64-apple-darwin.tar.gz"
  sha256 "bc1061cf102af67fe4f1f53762d9c6fc4b87e95b2ebd62169e86896205a2e342"
  license "MIT/APACHE-2.0"
  version "0.3.1"

  def install
    bin.install "clitrans"
    zsh_completion.install  "completions/zsh/_clitrans"
    bash_completion.install "completions/bash/clitrans.bash"
    fish_completion.install "completions/fish/clitrans.fish"
  end
end

# vim: ft=ruby:
