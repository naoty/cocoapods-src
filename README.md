# cocoapods-src

cocoapods-src is a CocoaPods plugin for automatic `git clone`.

This rubygem is inspired by [amatsuda/gem-src](https://github.com/amatsuda/gem-src).

## Installation

```bash
$ gem install cocoapods-src
```

## Usage

```bash
$ pod install
```

After `pod install`, automatically `git clone POD_SOURCE ~/.cocoapods/src/POD_NAME` will be run.

### ghq

You can download sources using `ghq` command ([motemen/ghq](https://github.com/motemen/ghq)) instead of `git clone`. If you like to do it, add `~/.podrc`, `~/.cocoapods/.podrc`, or `./.podrc`, and add a configuration like this.

```yaml
use_ghq: true
```

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

