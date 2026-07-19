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

Gemma 4 と Transformers.js を活用した、リアルタイム AI 画面解説アプリケーション。

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

### [VLM-Tactile](https://github.com/blue1st/vlm-tactile)

Vision Language Model (VLM) を利用したデスクトップ操作自動化エージェント。

```bash
brew install --cask vlm-tactile
```

### [SnapSet](https://github.com/blue1st/snapset)

コンテンツ作成時のサイズ指定があるスクリーンショットを効率的に作成するためのツール。

```bash
brew install --cask snapset
```

### [MAGI System](https://github.com/blue1st/magi-system)

3つのAIモデルによる合議制意思決定・ブレインストーミングを行うためのElectronベースのデスクトップアプリケーション。

```bash
brew install --cask magi-system
```

### [Obsidian Quick Entry](https://github.com/blue1st/obsidian-quick-entry)

システムトレイから素早くObsidianへメモを入力・保存するためのウィジェットアプリケーション。

```bash
brew install --cask obsidian-quick-entry
```

### [Playwright Studio](https://github.com/blue1st/playwright-gui)

Playwrightのスクリプト記録および実行スケジュール管理を行うためのElectron GUIアプリケーション。

```bash
brew install --cask playwright-studio
```

### [Vive](https://github.com/blue1st/vive)

ターミナルセッションを記録し、クリーンな概要を自動生成するコマンドラインツール。

```bash
brew install vive
```

---

## 開発者向け

新しく Cask を追加した場合は、`Casks/` ディレクトリに `.rb` ファイルを配置してください。

