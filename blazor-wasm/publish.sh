#!/bin/bash

# Clean.
rm -r obj/
rm -r bin/Release

# Publish with options.
dotnet publish -c:Release -p:GHPages=true

echo "Done"
echo ""
echo ""

# Print published size.
FRAMEWORK_DLL=`du -chs bin/Release/net5.0/publish/wwwroot/_framework/*.dll | cut -f1 | tail -n1`
FRAMEWORK_DLL_BR=`du -chs bin/Release/net5.0/publish/wwwroot/_framework/*.dll.br | cut -f1 | tail -n1`
FRAMEWORD_ALL_BR=`du -chs bin/Release/net5.0/publish/wwwroot/_framework/*.br | cut -f1 | tail -n1`
echo "Published Size:"
echo "   Framework DLL    : $FRAMEWORK_DLL"
echo "   Framework DLL.br : $FRAMEWORK_DLL_BR"
echo "   Frameword *.br   : $FRAMEWORD_ALL_BR"
