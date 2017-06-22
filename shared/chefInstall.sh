
source chefVersionConfig.conf

if ! yum -q list installed chef; 
	then				
		#echo "Installing..."
		#echo $chefVersion

   		curl -LO https://omnitruck.chef.io/install.sh && sudo bash ./install.sh -v $chefVersion && rm install.sh

else
	
	echo "Chef already installed"

fi



if ! yum -q list installed chefdk; 
	then
		
		curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable -v $chefdkVersion

else
	
	echo "Chef development kit already installed"

fi


# if ! yum -q list installed apt; 
# 	then
		
# 		sudo yum install apt

# else
	
# 	echo "Chef development kit already installed"

# fi

# if ! [ -d "./$CookBookName" ]; then
 
#   		chef generate cookbook $CookBookName

# else
# 		echo "running ....."

	sudo ruby -c $CookBookName.rb && sudo foodcritic $CookBookName.rb

	chef-client --local-mode $CookBookName/recipes/default.rb  

# fi

	




#yum -q list installed chef && echo "Installed" || echo "Not installed"

