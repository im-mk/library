#!/bin/bash

# check arg for solution name
if [ -z "$1" ]
then
    solution="WebApi"
else
    # default solution name
    solution=$1    
fi
echo creating webapi named $solution

dotnet new sln -o $solution

cd $solution

dotnet new webapi -o $solution
dotnet sln add ./$solution/$solution.csproj

dotnet new xunit -o $solution.Tests
dotnet sln add ./$solution.Tests/$solution.Tests.csproj

dotnet add ./$solution.Tests/$solution.Tests.csproj reference ./$solution/$solution.csproj
