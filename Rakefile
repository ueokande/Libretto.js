require 'coffee_script'
require_relative 'file_list'

def file_coffee_task(target, sources)
  file target => sources do |t|
    open t.name, 'w' do |f|
      content = ''
      sources.each do |s|
        content += File.read(s)
      end
      f.puts CoffeeScript.compile(content)
    end
  end
end

task :default => [:build]

desc "Build a javascripts"
task :build => ['js', 'js/scena.js', 'js/scena_editor.js', 'js/scena_spec.js']

directory 'js'
file_coffee_task 'js/scena.js', viewer_files
file_coffee_task 'js/scena_editor.js', editor_files
file_coffee_task 'js/scena_spec.js', spec_files

