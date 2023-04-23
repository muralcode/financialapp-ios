#!/bin/bash

client=$(cd ../app-white-labelling; git branch | sed -n '/\* /s///p')

echo "Generating assets..."
cd ../mural-asset-generator
docker rmi assetgeneratornextgen37 #docker image
./start.sh -c=$client -lf=1 -p=ios -l=../app-white-labelling
echo "Assets generated"
