IGNORE_FILES = ['Rakefile', 'README.md', 'bash']

# Colors the provided message green
def green(msg)
  "\033[0;32m#{msg}\033[0;37m"
end

# Colors the provided message red
def red(msg)
  "\033[0;31m#{msg}\033[0;37m"
end

# Method that puts the message provided 
# to the STDOUT
def info(msg, status)
  puts "* #{msg} [ #{green(status)} ]"
end

# Shows an error
def error(msg, status)
  puts "! #{msg} [ #{red(status)} ]"
end

# Lets the user confirm
def user_agrees?(msg)
  puts "#{msg} (y/n)"
  STDIN.gets.match(/^y/i)
end

desc "Installs the applications"
task :apps do

end

# Task that installs all the symlinks needed
desc "Installs the dotfiles."
task :install do
  Dir['*'].each do |file|

    source = File.join(Dir.pwd, file)
    basename = File.basename source
    next if IGNORE_FILES.include? basename

    destination = File.expand_path "~/.#{basename}"
    current_action = "creating symlink for #{destination}"
    if File.symlink? destination
      symlink_to = File.readlink destination
      next unless symlink_to != source && user_agrees?("symlink #{destination} -> #{symlink_to} exist, replace?")
      FileUtils.rm destination
    elsif File.exist? destination
      next unless user_agrees? "#{destination} exists replace it?"
      FileUtils.rm_rf destination
    end

    File.symlink(source, destination)
    info(current_action, 'Done')
  end

  puts green("ok!")
end
