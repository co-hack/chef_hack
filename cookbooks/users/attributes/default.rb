users Mash.new unless attribute?("users")
groups Mash.new unless attribute?("groups")
#ssh_keys Mash.new unless attribute?("ssh_keys")
#roles Mash.new unless attribute?("roles")
 
groups[:wheel] = {:gid => 4000}
#groups[:site] = {:gid => 6000}
#groups[:admin] = {:gid => 7000}
 
#roles[:chef] = {:groups => [:admin], :sudo_groups => [:admin]}
#roles[:app] = {:groups => [:admin, :app], :sudo_groups => [:admin]}
 
# passwords must be in shadow password format with a salt. To generate: openssl passwd -1
 
users[:taelor] = {:password => "$1$CXov1axH$tY4nm4rTgX4TKjQarwm0n0", :comment => "Taylor Redden", :uid => 4001, :group => :wheel}
users[:penguincoder] = {:password => "$1$CXov1axH$tY4nm4rTgX4TKjQarwm0n0", :comment => "Andrew Coleman", :uid => 4002, :group => :wheel}
users[:rledge21] = {:password => "$1$CXov1axH$tY4nm4rTgX4TKjQarwm0n0", :comment => "Ralph Edge", :uid => 4003, :group => :wheel}
users[:cohack] = {:password => "$1$CXov1axH$tY4nm4rTgX4TKjQarwm0n0", :comment => "Co-Hack", :uid => 5000, :group => :wheel} 
 
#ssh_keys[:jose] = "ssh-dss keydata"
#ssh_keys[:francisco] = "ssh-rsa keydata"
