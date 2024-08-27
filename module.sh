#!/bin/bash

OLD_MODULE_NAME="snippetbox.yhavin"
NEW_MODULE_NAME="snippetbox.yhavin"  # Replace with your new module path

# =====================
# DO NOT EDIT BELOW
# =====================

find . -type f \( -name "*.go" -o -name "go.mod" \) -exec sed -i '' "s|$OLD_MODULE_NAME|$NEW_MODULE_NAME|g" {} +

echo "Module name and imports changed from '$OLD_MODULE_NAME' to '$NEW_MODULE_NAME'"