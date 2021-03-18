# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clitrans < Formula
  desc "Yet another command-line translator (Chinese <=> English)"
  homepage "https://github.com/wfxr/clitrans"
  url "https://github.com/wfxr/clitrans/releases/download/v0.3.4/clitrans-v0.3.4-x86_64-apple-darwin.tar.gz"
  sha256 "c09e4241e502b2ad6e23785b12c629c853433e36fee85b0c70402c2022c3c717"
  license "MIT/APACHE-2.0"
  version "0.3.4"

  def install
    bin.install "clitrans"
    zsh_completion.install  "completions/zsh/_clitrans"
    bash_completion.install "completions/bash/clitrans.bash"
    fish_completion.install "completions/fish/clitrans.fish"
  end
end

# vim: ft=ruby:
