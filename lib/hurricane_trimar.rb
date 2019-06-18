# frozen_string_literal: true

require 'hurricane_trimar/version'

module HurricaneTrimmer
end

class String
  def trim
    ltrim.rtrim
  end

  def ltrim
    gsub(%r(\A[[:space:]]*), '')
  end

  def rtrim
    gsub(%r([[:space:]]*\Z), '')
  end
end
