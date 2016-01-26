desc "Build"
task :build do
    puts "## Bulding website"
    status = system("bundle exec middleman build --clean")
    puts status ? "OK" : "FAILED"
end

desc "Deploy"
task :deploy do
    puts "## Deploying website"
    status = system("bundle exec middleman build --clean")
    puts status ? "OK" : "FAILED"
    if status == "OK"
        system("bundle exec middleman deploy")
    end
end

desc "Run Development Server"
task :server do
    system("bundle exec middleman server")
end

task :default => [:build, :deploy]
