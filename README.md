# cocoapods-src

cocoapods-src is a CocoaPods plugin that `git clone` the pod's source.

## Installation

```bash
$ gem install cocoapods-src
```

## Usage

```bash
$ pod src NTYAirData
```

`pod src NAME` command clones the repo into `~/.cocoapods/src/NAME`.

```bash
$ cd YOUR_PROJECT
$ pod src
```

`pod src` command at your project root clones repos listed at `Podfile`.

## Contribution

1. Fork
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

cocoapods-src is available under the MIT license. See the LICENSE file for more info.

## Author

[naoty](https://github.com/naoty)

