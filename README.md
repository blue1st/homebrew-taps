# blue1st Homebrew Taps

blue1st の個人的なリポジトリで公開しているツールの Homebrew Tap です。

## 使い方

以下のコマンドで Tap を追加してください：

```bash
brew tap blue1st/taps
```

その後、各ツールをインストールできます。

## 公開ツール

### [GemmaSight](https://github.com/blue1st/gemma-sight)

Real-time AI screen description app powered by Gemma 4 and Transformers.js.

```bash
brew install --cask gemmasight
```

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

### [TimesFM Sandbox](https://github.com/blue1st/timesfm-sandbox)

TimesFMベースの時系列予測を行うためのSandbox環境を提供するmacOS向けデスクトップアプリケーション。

```bash
brew install --cask timesfm-sandbox
```

### [Danmaku Electron](https://github.com/blue1st/danmaku-electron)

デスクトップ画面をAIがリアルタイムに実況・解説するオーバーレイアプリケーション。

```bash
brew install --cask danmaku-electron
```

---

## 開発者向け

新しく Cask を追加した場合は、`Casks/` ディレクトリに `.rb` ファイルを配置してください。
