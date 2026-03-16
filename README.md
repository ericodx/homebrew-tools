# Homebrew Tools

Homebrew formulas for my open source macOS tools

## Install

Add the tap:

``` bash
brew tap ericodx/tools
```

Install a tool:

``` bash
brew install <formula>
```

## Available Tools

| Formula | Description |
|---|---|
| [swift-cpd](https://github.com/ericodx/swift-cpd) | Detect duplicated code in Swift and Objective-C/C codebases. |
| [swift-marshal](https://github.com/ericodx/swift-marshal) | Reorder Swift type members without altering logic or formatting. |

## Development

### Install locally

``` bash
brew install --build-from-source Formula/<formula>.rb
```

### Audit

``` bash
brew audit --strict Formula/<formula>.rb
```

### Test

``` bash
brew test Formula/<formula>.rb
```

### Style check

``` bash
brew style Formula/<formula>.rb
```

### Generate SHA256

``` bash
curl -L <release-url> | shasum -a 256
```
