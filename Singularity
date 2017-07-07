Bootstrap: docker
From: bvlc/caffe:gpu

%setup
	#Runs on host
	#The path to the image is $SINGULARITY_ROOTFS


%post
	#Post setup script

	#Use bash as default shell
	echo "\n #Using bash as default shell \n" >> /environment
	echo 'SHELL=/bin/bash' >> /environment

	#Make environment file executable
	chmod +x /environment

  #Default mount paths
	mkdir /scratch /data /shared /fastdata

  #Nvidia Library mount paths
	mkdir /nvlib /nvbin

	#Add nvidia driver paths
	echo "\n #Nvidia driver paths \n" >> /environment
	echo 'export PATH="/nvbin:$PATH"' >> /environment
	echo 'export LD_LIBRARY_PATH="/nvlib:$LD_LIBRARY_PATH"' >> /environment

	#Add Caffe paths
	echo "\n #Caffe paths \n" >> /environment
  echo 'export CAFFE_ROOT="/opt/caffe"' >> /environment
  echo 'export PYCAFFE_ROOT="$CAFFE_ROOT/python"' >> /environment
  echo 'export PYTHONPATH="$PYCAFFE_ROOT:$PYTHONPATH"' >> /environment
  echo 'export PATH="$CAFFE_ROOT/build/tools:$PYCAFFE_ROOT:$PATH"' >> /environment


%runscript
	#Executes with the singularity run command
	#delete this section to use existing docker ENTRYPOINT command




%test
	#Test that script is a success
