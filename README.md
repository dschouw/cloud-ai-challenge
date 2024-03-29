[![LinkedIn][linkedin-shield]][linkedin-url]

# Cloud Challenge 1

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

## About the project

This project is a cloud AI challenge that aims to develop an intelligent system for image recognition. Follows Cloud with GPS challenge video (links below) with reference to Microsoft instructions.

## Built With
[![VS Code][vscode]][vscodeurl]

* [![.NET][net8]][net8url]
* [![Blazor]][blazorurl]
* [![Azure][azure]][azureurl]

### Utilities 
- [Just](https://github.com/casey/just)
- [JQ](https://jqlang.github.io/jq/)

<!-- GETTING STARTED -->
## Getting Started

## Prerequisites

- Azure account
- VS Code Dev Container extension

## Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/dschouw/cloud-ai-challenge
    ```
2. Get Azure Credentials
    ```bash
    az login --use-device-code
    ```

3. Create Azure resource group
    ```bash
    az group create -g cloud-ai-challenge1-rg -l eastus
    # Confirm group listed with 
    az group list --query "[?location=='eastus']"

4. Create Cognitive services account
    ```bash
    az cognitiveservices account create \    
    --name cloud-ai-challenge-vision \                                   
    --resource-group cloud-ai-challenge1-rg \
    --kind ComputerVision \
    --sku F0 \
    --location eastus \
    --yes
    ```
    > This might not work if it is the first time you create a AI services on AI due to requirement for reading/accepting usage terms. If it does not work, sign into Azure console and create first coginitive service manually with accepting T&C's.

5. Set VISION_ENDPOINT and VISION_KEY environment variables with
    ```bash
        export VISION_ENDPOINT=$(just az-get-vision-endpoint)
        export VISION_KEY=$(just az-get-vision-key)
    ```


## Usage

### Debug locally
On a command prompt , use ```dotnet watch run``` to start a debug session


## Links
* [Cloud with GPS Cloud Challenge 1](https://www.youtube.com/watch?v=GjLTdKr73pc)
* [Microsoft Challenge Project - Add Image analysis and generation capabilities to your application](https://learn.microsoft.com/en-us/training/modules/challenge-project-add-image-analysis-generation-to-app/)
* [Azure AI Vision Documentation](https://learn.microsoft.com/en-us/azure/ai-services/computer-vision/)


## License

This project is licensed under the [MIT License](LICENSE).

<!-- Markdown Links and Images -->
[net8]:https://img.shields.io/badge/.NET_8-5C2D91?style=for-the-badge&logo=.net&logoColor=white
[net8url]:https://dotnet.microsoft.com/en-us/download/dotnet/8.0
[blazor]:https://img.shields.io/badge/Blazor-5C2D91?style=for-the-badge&logo=Blazor&logoColor=white
[blazorurl]:https://dotnet.microsoft.com/en-us/apps/aspnet/web-apps/blazor
[azure]:https://img.shields.io/badge/azure-%230072C6.svg?style=for-the-badge&logo=microsoftazure&logoColor=white
[azureurl]:http://azure.microsoft.com
[vscode]:https://img.shields.io/static/v1?label=VS+Code&message=DEV+Containers&logo=visualstudiocode&color=007ACC&logoColor=007ACC&labelColor=2C2C32
[vscodeurl]:https://code.visualstudio.com/docs/devcontainers/containers
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/denverschouw
