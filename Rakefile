namespace :assets do
  task :precompile do
    sh 'middleman build'
  end
end

desc "Build the website from source"
task :build do
  puts "## Building website"
  status = system("bundle exec middleman build --clean")
  puts status ? "OK" : "FAILED"
end

desc "deploy basic rack app to Github master"
multitask :push do
  puts "## Deploying to Github master"
  cd "build" do
    system "echo 'rsloan39.com' >> CNAME"
    system "git add ."
    system "git add -u"
    puts "\n## Committing: Site updated at #{Time.now.utc}"
    message = "Site updated at #{Time.now.utc}"
    system "git commit -m '#{message}'"
    puts "\n## Pushing generated website"
    system "git push -f origin master"
    puts "\n## Github deploy complete"
  end
end

desc "Build and deploy website"
task :deploy => [:build, :push] do
end
