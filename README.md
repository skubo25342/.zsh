# .zsh #

.zshは，zsh関連の設定をまとめたリポジトリである。


## Usage ##

zshが正しく`.zshrc`を読み込むためには，`.zshenv`から`~/.zshenv`にシンボリックリンクを張る必要がある。


### OS依存の設定 ##

OS依存の設定は，`.zshrc_<prefix>`に記述する。`.zshrc`の内部でOSを判断し，対応する`.zshrc_<prefix>`を読み込んでいる。
* `<prefix> = darwin`: Mac OS X
* `<prefix> = cygwin`: Windows Cygwin


### 環境依存の設定 ##

環境依存の設定は`.zshrc_local.***`に記述し，`~/.zshrc_local`にシンボリックリンクを張る。


## Ref. ##

* [.zshrcを色んな環境で共有する方法を考えてみた - Qiita](http://qiita.com/catatsuy/items/00ebf78f56960b6d43c2)
* [catatsuy/dot.zsh](https://github.com/catatsuy/dot.zsh)
* [MacOSX - Macで開発したい人のための基本的なことまとめ - Qiita](http://qiita.com/catatsuy/items/50b339ead2571fd3f628)
* [seebi/dircolors-solarized](https://github.com/seebi/dircolors-solarized)
