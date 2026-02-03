# Homebrew Tools

A Homebrew tap providing a curated collection of command-line tools and developer utilities focused on productivity, automation, and developer experience.

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
| [swift-member-lineup](https://github.com/ericodx/swift-member-lineup) | Reorder Swift type members without rewriting code. |

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

## License

This tap is licensed under the MIT License.

Note: individual tools distributed through this tap may use different licenses (e.g., BSD-3-Clause). Check each project for details.
