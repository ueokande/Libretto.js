def editor_files
  Dir.glob(File.expand_path('../src/core/**/*.coffee',  __FILE__)) +
  Dir.glob(File.expand_path('../src/editor/**/*.coffee',  __FILE__))
end

def viewer_files
  Dir.glob(File.expand_path('../src/main.coffee',  __FILE__)) +
  Dir.glob(File.expand_path('../src/core/**/*.coffee',  __FILE__)) +
  Dir.glob(File.expand_path('../src/viewer/**/*.coffee',  __FILE__)) +
  Dir.glob(File.expand_path('../src/viewer-plugins/**/*.coffee',  __FILE__))
end

def spec_files
  Dir.glob(File.expand_path('../spec/**/*.coffee',  __FILE__))
end
