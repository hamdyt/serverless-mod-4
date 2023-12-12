# This script deploys initial state of the Serverless Patterns workshop Module 3
# Cleanup - delete module start state setup package
rm -f ../ws-serverless-patterns.zip
# Cleanup - delete module directory if it exists already
rm -Rf ./userprofile
# Get module start state setup package and unzip it into a temporary directory
echo "Downloading module start state setup package..."
#wget -O ws-serverless-patterns.zip 'https://github.com/hamdyt/serverless-mod-4/raw/main/ws-serverless-patterns-2023-12-10.zip' -q
wget -O ws-serverless-patterns.zip https://github.com/hamdyt/serverless-mod-4/blob/61fb02c11b7f9b76b880eca60915125675202e81/ws-serverless-patterns-2023-12-10.zip
unzip -qq ws-serverless-patterns.zip 'ws-serverless-patterns/userprofile/*' -d ./tmp/
# Move module directory with start state into workshop root directory
echo "Setting up module directory..."
mkdir -p -- ./userprofile/
mv -f ./tmp/ws-serverless-patterns/userprofile/* ./userprofile
# Cleanup - delete temporary directory, start state setup package
echo "Cleaning up..."
rm -f ./ws-serverless-patterns.zip
rm -Rf ./tmp
# Navigate to the module directory
echo "Navigating to module directory..."
cd userprofile
