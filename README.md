# blue1st Homebrew Taps

blue1st の個人的なリポジトリで公開しているツールの Homebrew Tap です。

## 使い方

以下のコマンドで Tap を追加してください：

```bash
brew tap blue1st/taps
```

その後、各ツールをインストールできます。

## 公開ツール

### [PhotoSlide](https://github.com/blue1st/photo-slide)

シンプルなフォトスライドショーアプリケーション。

```bash
brew install --cask photo-slide
```

### [Caffei Native](https://github.com/blue1st/caffei-native)

特定プロセスの稼働監視によるスリープ抑制ツール。

```bash
brew install --cask caffei-native
```

---

## 開発者向け

新しく Cask を追加した場合は、`Casks/` ディレクトリに `.rb` ファイルを配置してください。
