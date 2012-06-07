case RUBY_VERSION
when "1.9.3"
  require 'uri-underscore-patch_1_9_3'
when "1.8.7"
  require 'uri-underscore-patch_1_8_7'
end
