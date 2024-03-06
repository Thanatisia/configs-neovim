# LSP Setup

## Table of Contents
+ [pyright](#pyright)
+ [typescript-language-server (aka tsserver)](#typescript-language-server)

## pyright
### Information
- Supported Languages:
    + python

### Setup
- Dependencies:
    + node/npm
        + pyright

- Pre-Requisites:
    + NIL

- Recommendation:
    - Create a dedicated directory for npm packages (i.e. folder named 'npm')
        - Create directory
            ```console
            mkdir -p npm
            ```
        - Change directory
            ```console
            cd npm
            ```
        - Install packages and their dependencies
            ```console
            npm install -D pyright
            ```
        - Add the path 'npm/node_modules/.bin' to the PATH system environment variable
            - Windows
                ```console
                SET PATH=%PATH%;[npm-folder-path]\npm\node_modules\.bin
                ```
            - Linux
                ```console
                PATH+="[npm-folder-path]/npm/node_modules/.bin:"
                ```

## typescript-language-server
### Information
- Supported Languages: 
    + javascript
    + typescript

### Setup
- Dependencies:
    - node/npm
        - typescript
        - typescript-language-server
        ```console
        npm install -D typescript typescript-language-server
        ```

- Pre-Requisites:
    - tsconfig.json/jsconfig.json at the root of the project
    - Add '[project-root-directory]/node_modules/.bin' to the PATH system environment variable
        - Windows
            SET PATH=%PATH%;[project-root-directory]\npm\node_modules\.bin
        - Linux
            PATH+="[project-root-directory]/npm/node_modules/.bin:"

- Recommendation:
    - Create a dedicated directory for npm packages (i.e. folder named 'npm')
        - Create directory
            ```console
            mkdir -p npm
            ```
        - Change directory
            ```console
            cd npm
            ```
        - Install packages and their dependencies
            ```console
            npm install -D typescript typescript-language-server
            ```
        - Add the path 'npm/node_modules/.bin' to the PATH system environment variable
            - Windows
                ```console
                SET PATH=%PATH%;[npm-folder-path]\npm\node_modules\.bin
                ```
            - Linux
                ```console
                PATH+="[npm-folder-path]/npm/node_modules/.bin:"
                ```

### Documentations
- Configuration Files
    - jsconfig
        - Snippets
            - Disables type checking in javascript files
                ```json
                {
                  "compilerOptions": {
                    "module": "commonjs",
                    "target": "es6",
                    "checkJs": false
                  },
                  "exclude": [
                    "node_modules"
                  ]
                }
                ```
            - SvelteKit
                ```json
                {
                    "extends": "./.svelte-kit/tsconfig.json",
                    "compilerOptions": {
                        "allowJs": true,
                        "checkJs": true,
                        "esModuleInterop": true,
                        "forceConsistentCasingInFileNames": true,
                        "resolveJsonModule": true,
                        "skipLibCheck": true,
                        "sourceMap": true,
                        "strict": true,
                        "moduleResolution": "bundler"
                    }
                    // Path aliases are handled by https://kit.svelte.dev/docs/configuration#alias and https://kit.svelte.dev/docs/configuration#files
                    //
                    // If you want to overwrite includes/excludes, make sure to copy over the relevant includes/excludes
                    // from the referenced tsconfig.json - TypeScript does not merge them in
                }
                ```

