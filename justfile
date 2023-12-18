
set export
set shell := ["bash", "-uc"]

VISION_ENDPOINT := `az cognitiveservices account show --name "cloud-ai-challenge-vision" --resource-group "cloud-ai-challenge1-rg"  | jq '.. | .endpoint? | values'`
VISION_KEY      := `az cognitiveservices account keys list --name "cloud-ai-challenge-vision" --resource-group "cloud-ai-challenge1-rg" | jq '.key1'`

## .NET stuff
# build
build:
   #!/usr/bin/env bash
    dotnet build

watch:
    dotnet watch run

# Azure Login
az-login:
    az login --use-device-code

# export a variable
az-get-vision-endpoint:
    @echo $VISION_ENDPOINT

az-get-vision-key:
    @echo $VISION_KEY

