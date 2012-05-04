IGNORE_FILES = ['Rakefile', 'README.md', 'bash', 'bash_profile']

# Method that puts the message provided 
# to the STDOUT
def info(msg, status)
  puts "* #{msg} [ \033[0;32m#{status}\033[0;37m ]"
end

def error(msg, status)
  puts "! #{msg} [ \033[0;31m#{status}\033[0;37m ]"
end

desc "Installs the dotfiles."
task :install do
  Dir['*'].each do |file|

    source = File.join(Dir.pwd, file)
    basename = File.basename source
    next if IGNORE_FILES.include? basename

    current_action = "Creating Symlink for .#{basename}"
    destination = File.expand_path "~/.#{basename}"
    if File.symlink? destination
      info(current_action, 'Exist')
    elsif File.exist? destination
      error(current_action, 'Error')
    else
      File.symlink(source, destination)
      info(current_action, 'Done')
    end
  end
end
