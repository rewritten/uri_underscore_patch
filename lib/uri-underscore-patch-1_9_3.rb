# See the uri_patch_1_8_7.rb file. This has to tested

module URI

  DEFAULT_PARSER = Parser.new(
    :DOMLABEL => "(?:[#{URI::REGEXP::PATTERN::ALNUM}](?:[-_#{URI::REGEXP::PATTERN::ALNUM}]*[#{URI::REGEXP::PATTERN::ALNUM}])?)",
    :HOSTNAME => "(?:[_a-zA-Z0-9\\-.]|%\\h\\h)+"
  )
  DEFAULT_PARSER.pattern.each_pair do |sym, str|
    REGEXP::PATTERN.const_set(sym, str)
  end
  DEFAULT_PARSER.regexp.each_pair do |sym, str|
    const_set(sym, str)
  end

end
