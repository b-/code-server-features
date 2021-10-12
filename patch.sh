#!/usr/bin/env sh

if [ "${1}" = "-R" ]; then
  sed -i -e 's/^[[:blank:]]*"nameLong":.*/\t"nameLong": "Code - OSS",/' \
    -e 's/^[[:blank:]]*"extensionAllowedProposedApi":.*/\t"extensionAllowedProposedApi": ["ms-vscode.vscode-js-profile-flame", "ms-vscode.vscode-js-profile-table", "ms-vscode.remotehub", "ms-vscode.remotehub-insiders", "GitHub.remotehub", "GitHub.remotehub-insiders"],/' \
    -e '/^[[:blank:]]*"extensionSyncedKeys/d' \
    /usr/lib/code/product.json
else
  sed -i -e 's/^[[:blank:]]*"nameLong":.*/\t"nameLong": "Visual Studio Code",/' \
    -e 's/^[[:blank:]]*"extensionAllowedProposedApi":.*/\t"extensionAllowedProposedApi": ["GitHub.codespaces", "GitHub.copilot-nightly", "GitHub.copilot", "GitHub.vscode-pull-request-github-insiders", "GitHub.vscode-pull-request-github", "GitHub.remotehub", "GitHub.remotehub-insiders", "Microsoft.vscode-nmake-tools", "ms-ai-tools.notebook-renderers", "ms-dotnettools.dotnet-interactive-vscode", "ms-python.gather", "ms-python.python", "ms-toolsai.jupyter", "ms-toolsai.vscode-ai", "ms-toolsai.vscode-ai-remote", "ms-vscode-remote.remote-containers-nightly", "ms-vscode-remote.remote-containers", "ms-vscode-remote.remote-ssh-edit-nightly", "ms-vscode-remote.remote-ssh-edit", "ms-vscode-remote.remote-ssh-nightly", "ms-vscode-remote.remote-ssh", "ms-vscode-remote.remote-ssh-serverless", "ms-vscode-remote.remote-wsl-nightly", "ms-vscode-remote.remote-wsl", "ms-vscode-remote.remote-wsl-recommender", "ms-vscode-remote.vscode-remote-extensionpack-nightly", "ms-vscode-remote.vscode-remote-extensionpack", "ms-vscode.anycode", "ms-vscode.azure-account", "ms-vscode.azure-sphere-tools-ui", "ms-vscode.azure-sphere-tools", "ms-vscode.remotehub", "ms-vscode.remotehub-insiders", "ms-vscode.js-debug-nightly", "ms-vscode.js-debug", "ms-vscode.lsif-browser", "ms-vscode.vscode-js-profile-flame", "ms-vscode.vscode-js-profile-table", "ms-vscode.vscode-selfhost-test-provider", "ms-vscode.test-adapter-converter", "ms-vsliveshare.cloudenv-explorer", "ms-vsliveshare.cloudenv", "ms-vsliveshare.vsliveshare", "ms-vsonline.vsonline", "dbaeumer.vscode-eslint", "tanhakabir.rest-book", "ms-playwright.playwright", "VisualStudioExptTeam.vscodeintellicode", "VisualStudioExptTeam.vscodeintellicode-insiders", "VisualStudioExptTeam.vscodeintellicode-completions", "vscode.vscode-web-playground", "ms-azuretools.vscode-azureappservice"],/' \
    -e '/^[[:blank:]]*"extensionSyncedKeys/d' \
    -e '/^[[:blank:]]*"extensionAllowedProposedApi/a\\t"extensionSyncedKeys": { "ritwickdey.liveserver": ["liveServer.setup.version"] }, "linkProtectionTrustedDomains": ["https:\/\/*.visualstudio.com", "https:\/\/*.microsoft.com", "https:\/\/aka.ms", "https:\/\/vscode-auth.github.com", "https:\/\/client-auth-staging-14a768b.herokuapp.com", "https:\/\/*.gallerycdn.vsassets.io", "https:\/\/github.com\/microsoft\/", "https:\/\/github.com\/MicrosoftDocs\/", "https:\/\/login.microsoftonline.com"], "auth": { "loginUrl": "https:\/\/login.microsoftonline.com\/common\/oauth2\/authorize", "tokenUrl": "https:\/\/login.microsoftonline.com\/common\/oauth2\/token", "redirectUrl": "https:\/\/vscode-redirect.azurewebsites.net\/", "clientId": "aebc6443-996d-45c2-90f0-388ff96faa56" }, "configurationSync.store": { "url": "https:\/\/vscode-sync.trafficmanager.net\/", "stableUrl": "https:\/\/vscode-sync.trafficmanager.net\/", "insidersUrl": "https:\/\/vscode-sync-insiders.trafficmanager.net\/", "canSwitch": false, "authenticationProviders": { "microsoft": { "scopes": ["openid", "profile", "email", "offline_access"] }, "github": { "scopes": ["user:email"] } } },' \
    /usr/lib/code/product.json
fi
