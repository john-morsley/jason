#!/bin/bash

dotnet --version

rm -rf obj
rm -rf bin
rm -rf published

dotnet clean --nologo \
             --verbosity normal

dotnet restore --verbosity normal

dotnet build --configuration Release \
             --no-restore \
             --verbosity normal

dotnet publish --configuration Release \
               --nologo \
               --no-build \
               --no-restore \
               --output published \
               --verbosity normal

docker build -t jasontestapi .       

docker run -p 5000:5000 -p 5001:5001 jasontestapi        