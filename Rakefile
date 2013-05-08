task :deploy do
  IO.popen "ssh -A charlie.bz", "w" do |io|
    io.puts <<-SH
      cd /var/www/melbourne.compilermeet.org
      git fetch --all
      git reset --hard origin/master
      /opt/rubies/ruby-2.0.0-p0/bin/bundle install --deployment | grep -v '^Using'
      touch tmp/restart.txt
    SH
  end
end
