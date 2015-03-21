#
# Packages to be installed on all our systems. 
#

# List packages common to all machines.  These are our favorites and stuff we
# just expect to be there without thinking.
packages = %w{ 
  git
  htop
  lsof
  screen
}

# Loop through and install packages
packages.each do |pkg|
  # This is the Chef resource.  It is taking the pkg 
  # variable from the list above
  # and installing it with the apt provider.  Provider, in Chef-speak, is the 
  # underlying OS function or built-in that Chef is using to carry out your
  # instructions.
  package pkg do
    action :install
  end
end
