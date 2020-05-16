# NCTU Thesis Template

此專案為「國立交通大學」碩博士論文模板。

---
## Description

### Prerequisite

> 關於安裝資訊：https://www.latex-project.org/get/#tex-distributions

* Windows
    * 安裝 [MiKTeX](https://miktex.org/)
* MacOS
    * 安裝 [MacTeX](http://www.tug.org/mactex/)
* Ubuntu Linux
    1. Install the package XeLatex
        ```bash
        $ sudo apt-get install -y texlive-full
        ```
    2. Install and reload necessary fonts
        ```bash
        $ sudo apt-get install -y texlive-fonts-extra fonts-arphic-ukai fonts-arphic-uming ttf-mscorefonts-installer
        $ sudo fc-cache
        ```
* Online LaTeX Service
    * [Overleaf](https://www.overleaf.com)
* Docker Image
    1. Install [Docker](https://www.docker.com/get-started) on your machine
    2. Pull our Docker image on your machine
        ```bash
        $ docker pull
        ```

### Usages

0. 下載此專案。
1. 執行以下指令進行編譯。
    ```bash
    # Make sure your current directory is correct
    $ make
    ```
    * 需等待 2-3 秒，若編譯成功，會在最後一行出現以下範例訊息，而不會有任何錯誤訊息。
        ```bash
        ...
        Output written on main.pdf (23 pages).
        ```
    * 編譯成功後會自動生成 PDF 檔案 `main.pdf`。
2. 如何移除編譯過程所產生的中間檔案 (e.g., `main.aux`, `main.bbl`, `main.blg`, etc.)？
    ```bash
    # Make sure your current directory is correct
    $ make clean
    ```
    * 中間檔案為非必要檔案，已經寫入 `.gitignore` 中。
3. 如何選擇輸出格式？
    * 圖書館上傳格式 (Upload Mode)
        1. 開啟 [`main.tex`](main.tex)。
        2. 將以下程式碼 (Line 6) 中的 `print` 改為 `upload`。
            ```latex
            % Set the class of document by NCTU
            \documentclass[master, watermark, final, upload]{Class/NCTUtran}
            ```
        3. 重新編譯即可。
            ```bash
            $ make
            ```
    * 印刷格式 (Print Mode)
        1. 開啟 [`main.tex`](main.tex)。
        2. 將以下程式碼 (Line 6) 中的 `upload` 改為 `print`。
            ```latex
            % Set the class of document by NCTU
            \documentclass[master, watermark, final, print]{Class/NCTUtran}
            ```
        3. 重新編譯即可。
            ```bash
            $ make
            ```

### File Structure

```bash
# In alphabetical order
nctu-thesis-template
├── 0-Cover/                        # 0-論文封面文件 (自行編輯)
│   └── Spine.docx                  #   書背製作檔 (自行編輯)
├── 1-Cert/                         # 1-論文口試審定書 (可自行新增)
│   ├── .gitkeep
│   ├── 1-Certification-zh.pdf      #   論文口試審定書範本 (網工所)
│   └── 2-Certification-en.pdf      #   論文口試審定書範本 (資科工所)
├── 2-Auth/                         # 2-論文授權書 (可自行新增)
│   ├── .gitkeep
│   └── 1-Authorization.pdf         #   論文授權書範本
├── 3-Abs/                          # 3-摘要 (自行編輯)
│   ├── 1-Abstract-zh.tex           #   中文摘要 (自行編輯)
│   └── 2-Abstract-en.tex           #   英文摘要 (自行編輯)
├── 4-Ack/                          # 4-誌謝與題獻 (自行編輯)
│   ├── 1-Acknowledgement.tex       #   誌謝頁 (自行編輯)
│   └── 2-Dedication.tex            #   題獻頁 (自行編輯) [博士論文使用]
├── 5-Chapters/                     # 5-論文各節內容 (可自行新增)
│   ├── 1-Introduction.tex
│   ├── 2-RelatedWork.tex
│   ├── 3-Design.tex
│   ├── 4-Evaluation.tex
│   └── 5-Conclusion.tex
├── 6-Bib/                          # 6-參考文獻
│   ├── BSTcontrol.bib              #   IEEE 論文參考書目設定 (不需更動)
│   └── thesis.bib                  #   參考文獻檔 (自行編輯)
├── 7-Appx/                         # 7-附錄 (可自行新增)
│   └── 1-Appx.tex           
├── 8-Author/                       # 8-作者簡歷與著作列表 (自行編輯) [博士論文使用]
│   ├── 1-CV.tex                    #   作者簡歷 (自行編輯) [博士論文使用]
│   └── 2-Publications.tex          #   著作列表 (自行編輯) [博士論文使用]                               
├── Class/                          # * 論文模板 (不需更動)
│   ├── IEEEtran.bst                #   IEEE 論文參考書目樣式 (不需更動)
│   ├── IEEEtrantools.sty           #   IEEE 論文模板樣式指令 (不需更動)
│   ├── NCTUtran.cls                #   國立交通大學碩博論文模板 (不需更動)
│   └── xCJKnumb.sty                #   中文套件 (不需更動)
├── Config/                         # * 相關參數設定
│   ├── config.tex                  #   設定論文標題、作者資訊等 (自行編輯)
│   └── fonts.tex                   #   字型設定 (不需更動)
├── Figurs/                         # * 論文圖片 (可自行新增)
│   └── ...
├── Tools/                          # * 相關小工具 (不需更動)
│   └── ...
├── .gitignore                      # 檔案忽略清單 (不需更動)
├── CHANGELOG.md                    # 紀錄文件：本專案修改記錄 (不需更動)
├── CONTRIBUTING.md                 # 說明文件：如何貢獻本專案 (不需更動)
├── GNUmakefile                     # 編譯論文檔案所用 (不需更動)
├── LICENSE                         # 專案授權 (不需更動)
├── main.tex                        # 論文主要檔案 (自行編輯)
├── main.pdf                        # 論文輸出檔案
└── README.md                       # 說明文件 (本檔案)
```

---
## Useful Plugins

* **LaTeX Workshop** (on Visual Studio Code)
    * 備註：LaTeX Workshop 有時會出現無法按下 `Enter` 的錯誤訊息，可以改安裝 `v6.0` 版本就會解決。

---
## Reference

* [The LaTex Project](https://www.latex-project.org/)
* [CTAN](https://www.ctan.org/)
* [LaTeX Wikibooks](https://en.wikibooks.org/wiki/LaTeX)

---
## Acknowledgement

在編修此模板時，同時也參考以下的模板，感謝以下前輩之貢獻：
* 交通大學：[Po-haoHuang/nctu-thesis](https://github.com/Po-haoHuang/nctu-thesis)
* 臺灣大學：[tzhuan/ntu-thesis](https://github.com/tzhuan/ntu-thesis)
* 臺灣科技大學：[ntust-thesis](https://code.google.com/archive/p/ntust-thesis/downloads)

---
## Contributor

> **NOTICE:** You can follow the contributing process [CONTRIBUTING.md](CONTRIBUTING.md) to join me. I am very welcome any issue!

This repository is dedicatd for all members in Networking and Sensing Systems Laboratory (NSSLAB).

* [David Lu](https://github.com/yungshenglu)

---
## License

[GNU GENERAL PUBLIC LICENSE Version 3](LICENSE)
