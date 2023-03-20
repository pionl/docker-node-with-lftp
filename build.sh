versions=(8 10 12 18 latest 8-alpine 10-alpine 12-alpine 18-alpine alpine)

set -e

for i in "${versions[@]}"
do
	# Check if the version directory exists
	if [ -d $i ]
	then
	    echo "Updating $i"
	else
		echo "Creating $i"
	    mkdir $i
	fi

	# Build the Docker file from template
	if [[ $i == *"alpine"* ]]; then
		templateFile=`cat Dockerfile-alpine.template`
	else
		templateFile=`cat Dockerfile.template`
	fi


	dockerFile="${templateFile/VERSION/$i}"
	dockerFilePath="$i/Dockerfile"

	echo "$dockerFile" > "$dockerFilePath"

	# Build the image
	imageName="pionl/node-with-lftp:$i"

	# Should we deploy?
	if [ "$1" = "deploy" ]; then
		echo "Pushing $imageName"
	   	docker push $imageName
	else
		echo "Bulding $imageName"
	 	docker build -t "$imageName" "./$i"
	fi

done
