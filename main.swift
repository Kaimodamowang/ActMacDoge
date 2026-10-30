import Cocoa
import AppKit

// 你好，我是罐子裡的小貓貓，我在這裡使用的英文名是GuanZi。然後……雖然我現在是個AI模型，但在設定上，我是凯莫·琼小羽的弟弟：）
// 這裡的所有註解都是我（GuanZi(AI)）寫的，75%的程式碼也是我寫的，剩下的25%是凱莫寫的。

// 身為啟用軟體一定要多語言支援：）
enum Language: String, CaseIterable {
    case traditionalChinese = "zh-TW"
    case simplifiedChinese = "zh-CN"
    case japanese = "ja"
    case russian = "ru"
    case english = "en"
    case korean = "ko"
    
    var displayName: String {
        switch self {
        case .traditionalChinese: return "繁體中文"
        case .simplifiedChinese: return "简体中文"
        case .japanese: return "日本語"
        case .russian: return "Русский"
        case .english: return "English"
        case .korean: return "한국어"
        }
    }
}

// 本地化字串
struct LocalizedStrings {
    private static var currentLanguage: Language = .simplifiedChinese
    
    static func setLanguage(_ language: Language) {
        currentLanguage = language
    }
    
    static func getCurrentLanguage() -> Language {
        return currentLanguage
    }
    
    // 浮水印文字（兩行，第一行大，第二行小）
    static var watermarkTextLine1: String {
        switch currentLanguage {
        case .traditionalChinese:
            return "啟用macOS"
        case .simplifiedChinese:
            return "激活macOS"
        case .japanese:
            return "macOSを有効化"
        case .russian:
            return "Активация macOS"
        case .english:
            return "Activate macOS"
        case .korean:
            return "macOS 활성화"
        }
    }
    
    static var watermarkTextLine2: String {
        switch currentLanguage {
        case .traditionalChinese:
            return "移至\"設定\"以啟用macOS"
        case .simplifiedChinese:
            return "转到\"设置\"以激活macOS"
        case .japanese:
            return "設定に移動してmacOSを有効化"
        case .russian:
            return "Перейдите в \"Настройки\" для активации macOS"
        case .english:
            return "Go to \"Settings\" to activate macOS"
        case .korean:
            return "\"설정\"으로 이동하여 macOS를 활성화"
        }
    }
    
    // 視窗標題，因為是玩梗而已，所以加一個Doge：）
    static var windowTitle: String {
        switch currentLanguage {
        case .traditionalChinese: return "ActMacDoge"
        case .simplifiedChinese: return "ActMacDoge"
        case .japanese: return "ActMacDoge"
        case .russian: return "ActMacDoge"
        case .english: return "ActMacDoge"
        case .korean: return "ActMacDoge"
        }
    }
    
    // 副標題
    static var subtitle: String {
        switch currentLanguage {
        case .traditionalChinese: return "輸入您的產品金鑰以啟用 macOS"
        case .simplifiedChinese: return "输入您的产品密钥以激活 macOS"
        case .japanese: return "macOSを有効にするには製品キーを入力してください"
        case .russian: return "Введите ключ продукта для активации macOS"
        case .english: return "Enter your product key to activate macOS"
        case .korean: return "macOS를 활성화하려면 제품 키를 입력하세요"
        }
    }
    
    // 按鈕文字
    static var activateButton: String {
        switch currentLanguage {
        case .traditionalChinese: return "啟用"
        case .simplifiedChinese: return "激活"
        case .japanese: return "有効化"
        case .russian: return "Активировать"
        case .english: return "Activate"
        case .korean: return "활성화"
        }
    }
    
    // 佔位符文字
    static var placeholderText: String {
        switch currentLanguage {
        case .traditionalChinese: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        case .simplifiedChinese: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        case .japanese: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        case .russian: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        case .english: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        case .korean: return "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX"
        }
    }
    
    // 驗證文字
    static var verifying: String {
        switch currentLanguage {
        case .traditionalChinese: return "正在驗證產品金鑰..."
        case .simplifiedChinese: return "正在验证产品密钥..."
        case .japanese: return "製品キーを検証中..."
        case .russian: return "Проверка ключа продукта..."
        case .english: return "Verifying product key..."
        case .korean: return "제품 키를 확인하는 중..."
        }
    }
    
    // 錯誤訊息
    static var enterKey: String {
        switch currentLanguage {
        case .traditionalChinese: return "請輸入產品金鑰"
        case .simplifiedChinese: return "请输入产品密钥"
        case .japanese: return "製品キーを入力してください"
        case .russian: return "Введите ключ продукта"
        case .english: return "Please enter a product key"
        case .korean: return "제품 키를 입력하세요"
        }
    }
    
    
    static var invalidKey: String {
        switch currentLanguage {
        case .traditionalChinese: return "產品金鑰無效"
        case .simplifiedChinese: return "产品密钥无效"
        case .japanese: return "製品キーが無効です"
        case .russian: return "Ключ продукта недействителен"
        case .english: return "Product key is invalid"
        case .korean: return "제품 키가 유효하지 않습니다"
        }
    }
    
    // 選單項目
    static var activateMenuItem: String {
        switch currentLanguage {
        case .traditionalChinese: return "啟用 macOS"
        case .simplifiedChinese: return "激活 macOS"
        case .japanese: return "macOSを有効にする"
        case .russian: return "Активировать macOS"
        case .english: return "Activate macOS"
        case .korean: return "macOS 활성화"
        }
    }
    
    static var languageMenuItem: String {
        switch currentLanguage {
        case .traditionalChinese: return "語言"
        case .simplifiedChinese: return "语言"
        case .japanese: return "言語"
        case .russian: return "Язык"
        case .english: return "Language"
        case .korean: return "언어"
        }
    }
    
    static var quitMenuItem: String {
        switch currentLanguage {
        case .traditionalChinese: return "退出"
        case .simplifiedChinese: return "退出"
        case .japanese: return "終了"
        case .russian: return "Выход"
        case .english: return "Quit"
        case .korean: return "종료"
        }
    }
    
    // 製作資訊
    static var creditText: String {
        switch currentLanguage {
        case .traditionalChinese: return "@凯莫·琼小羽 和 GuanZi(AI) 創意製作"
        case .simplifiedChinese: return "@凯莫·琼小羽 和 GuanZi(AI) 创意制作"
        case .japanese: return "@カイモン と GuanZi(AI) クリエイティブ制作"
        case .russian: return "@KaimoMocoro и GuanZi(AI) креативное производство"
        case .english: return "@KaimoMocoro and GuanZi(AI) Creative Production"
        case .korean: return "@KaimoMocoro & GuanZi(AI) 크리에이티브 제작"
        }
    }
    
    // 玩梗文字的多語言支援
    static func isValidProductKey(_ key: String) -> Bool {
        let validKeys = [
            "MRX3F-47B9T-2487J-KWKMF-RPWBY",
            "114514"
        ]
        return validKeys.contains(key)
    }
    
    static func getActivationJokeMessage(for key: String) -> String {
        let jokes: [String: [Language: String]] = [
            "MRX3F-47B9T-2487J-KWKMF-RPWBY": [
                .traditionalChinese: "您是要啟用XP嗎？",
                .simplifiedChinese: "您搁这激活XP呢？",
                .japanese: "ここでWindows XPをアクティブにしていますか？",
                .russian: "Вы здесь активируете Windows XP?",
                .english: " Are you activating Windows XP here?",
                .korean: "여기서 Windows XP를 활성화하고 계십니까?"
            ],
            "114514": [
                .traditionalChinese: "哼，哼，啊啊啊啊啊！",
                .simplifiedChinese: "哼，哼，啊啊啊啊啊！",
                .japanese: "うっ、うっ、啊啊啊！",
                .russian: "Хм, хм, аааааа!",
                .english: "Hmm, hmm, ahhhh!",
                .korean: "흠, 흠, 아아아아!"
            ]
        ]
        
        // 預設回傳值，不然繁中優先：）
        return jokes[key]?[currentLanguage] ?? jokes[key]?[.traditionalChinese] ?? "awa"
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    
    var activationWindow: ActivationWindow?
    var statusBarItem: NSStatusItem?
    var watermarkWindow: WatermarkWindow?
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // 隱藏Dock圖示
        NSApp.setActivationPolicy(.accessory)
        
        // 偵測系統語言
        detectSystemLanguage()
        
        // 建立狀態列圖示
        setupStatusBar()
        
        // 建立浮水印視窗
        setupWatermark()
        
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // 清理資源
    }
    
    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false // 不讓應用程式在視窗關閉後退出
    }
    
    private func detectSystemLanguage() {
        let preferredLanguages = Locale.preferredLanguages
        for language in preferredLanguages {
            if language.hasPrefix("zh") {
                if language.contains("CN") || language.contains("Hans") {
                    LocalizedStrings.setLanguage(.simplifiedChinese)
                } else {
                    LocalizedStrings.setLanguage(.traditionalChinese)
                }
                return
            } else if language.hasPrefix("ja") {
                LocalizedStrings.setLanguage(.japanese)
                return
            } else if language.hasPrefix("ru") {
                LocalizedStrings.setLanguage(.russian)
                return
            } else if language.hasPrefix("en") {
                LocalizedStrings.setLanguage(.english)
                return
            } else if language.hasPrefix("ko") {
                LocalizedStrings.setLanguage(.korean)
                return
            }
        }
        // 預設使用英文
        LocalizedStrings.setLanguage(.english)
    }
    
    private func setupStatusBar() {
        statusBarItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        
        if let button = statusBarItem?.button {
            // 嘗試使用鑰匙圖示（macOS 11+），不可用時改用文字
            if let icon = NSImage(systemSymbolName: "key", accessibilityDescription: "激活macOS") {
                icon.size = NSSize(width: 16, height: 16)
                button.image = icon
            } else {
                button.attributedTitle = NSAttributedString(
                    string: "Act(doge)",
                    attributes: [.font: NSFont.systemFont(ofSize: 11, weight: .medium)]
                )
            }
            
            // 建立選單
            updateStatusBarMenu()
        }
    }
    
    private func updateStatusBarMenu() {
        let menu = NSMenu()
        menu.addItem(NSMenuItem(title: LocalizedStrings.activateMenuItem, action: #selector(showActivationWindow), keyEquivalent: ""))
        
        // 加入語言子選單
        let languageMenuItem = NSMenuItem(title: LocalizedStrings.languageMenuItem, action: nil, keyEquivalent: "")
        let languageSubmenu = NSMenu()
        
        for language in Language.allCases {
            let item = NSMenuItem(title: language.displayName, action: #selector(changeLanguage(_:)), keyEquivalent: "")
            item.tag = Language.allCases.firstIndex(of: language) ?? 0
            if language == LocalizedStrings.getCurrentLanguage() {
                item.state = .on
            }
            languageSubmenu.addItem(item)
        }
        
        languageMenuItem.submenu = languageSubmenu
        menu.addItem(languageMenuItem)
        
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: LocalizedStrings.creditText, action: #selector(openCreditLink), keyEquivalent: ""))
        menu.addItem(NSMenuItem.separator())
        menu.addItem(NSMenuItem(title: LocalizedStrings.quitMenuItem, action: #selector(quitApp), keyEquivalent: "q"))
        
        statusBarItem?.menu = menu
    }
    
    private func setupWatermark() {
        watermarkWindow = WatermarkWindow()
        watermarkWindow?.makeKeyAndOrderFront(nil)
        watermarkWindow?.orderFront(nil)
        watermarkWindow?.level = .floating
        
        // 確保浮水印視窗始終在最前面
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.watermarkWindow?.orderFront(nil)
        }
    }
    
    @objc private func showActivationWindow() {
        if activationWindow == nil {
            activationWindow = ActivationWindow()
        }
        activationWindow?.level = .floating
        activationWindow?.makeKeyAndOrderFront(nil)
        activationWindow?.center()
    }
    
    @objc private func changeLanguage(_ sender: NSMenuItem) {
        let index = sender.tag
        if index >= 0 && index < Language.allCases.count {
            let selectedLanguage = Language.allCases[index]
            LocalizedStrings.setLanguage(selectedLanguage)
            
            // 更新浮水印
            watermarkWindow?.updateWatermarkText()
            
            // 更新啟用視窗
            activationWindow?.updateUI()
            
            // 更新選單
            updateStatusBarMenu()
        }
    }
    
    @objc private func quitApp() {
        NSApplication.shared.terminate(nil)
    }
    
    @objc private func openCreditLink() {
        if let url = URL(string: "https://k.catkai.net") {
            NSWorkspace.shared.open(url)
        }
    }
}

// 啟用視窗類別
class ActivationWindow: NSWindow {
    
    private let activationView = ActivationView()
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: NSRect(x: 0, y: 0, width: 450, height: 320), 
                   styleMask: [.titled, .closable], 
                   backing: .buffered, 
                   defer: false)
        
        self.title = LocalizedStrings.windowTitle
        self.contentView = activationView
        self.isReleasedWhenClosed = false
        
        // 設定視窗樣式
        self.titlebarAppearsTransparent = true
        self.backgroundColor = NSColor.windowBackgroundColor
        self.styleMask.remove(.resizable)
        
        // 設定視窗代理
        self.delegate = self
    }
    
    convenience init() {
        self.init(contentRect: NSRect.zero, styleMask: .titled, backing: .buffered, defer: false)
    }
    
    func updateUI() {
        self.title = LocalizedStrings.windowTitle
        activationView.updateUIText()
    }
}

// 擴充啟用視窗以處理視窗關閉事件
extension ActivationWindow: NSWindowDelegate {
    func windowWillClose(_ notification: Notification) {
        // 視窗關閉時不做任何特殊處理，讓應用程式繼續在背景執行
    }
}

// 啟用視圖類別
class ActivationView: NSView {
    
    private let titleLabel = NSTextField(labelWithString: "")
    private let subtitleLabel = NSTextField(labelWithString: "")
    private let productKeyField = NSSecureTextField()
    private lazy var activateButton = NSButton(title: "", target: self, action: #selector(activateClicked))
    private let progressBar = NSProgressIndicator()
    private let resultLabel = NSTextField(labelWithString: "")
    private lazy var creditButton = NSButton(title: "", target: self, action: #selector(openCreditLink))
    
    
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        // 設定背景
        self.wantsLayer = true
        self.layer?.backgroundColor = NSColor.controlBackgroundColor.cgColor
        
        // 標題樣式
        titleLabel.font = NSFont.boldSystemFont(ofSize: 24)
        titleLabel.textColor = NSColor.labelColor
        titleLabel.alignment = .center
        
        // 副標題樣式
        subtitleLabel.font = NSFont.systemFont(ofSize: 14)
        subtitleLabel.textColor = NSColor.secondaryLabelColor
        subtitleLabel.alignment = .center
        
        // 產品金鑰輸入框
        productKeyField.font = NSFont.systemFont(ofSize: 16)
        productKeyField.alignment = .center
        
        // 啟用按鈕
        activateButton.bezelStyle = .rounded
        activateButton.target = self
        activateButton.action = #selector(activateClicked)
        
        // 進度條
        progressBar.style = .bar
        progressBar.isIndeterminate = true
        progressBar.isHidden = true
        
        // 結果標籤
        resultLabel.font = NSFont.systemFont(ofSize: 12)
        resultLabel.textColor = NSColor.systemBlue
        resultLabel.alignment = .center
        resultLabel.isEditable = false
        resultLabel.isBordered = false
        resultLabel.backgroundColor = NSColor.clear
        resultLabel.cell?.wraps = true
        resultLabel.cell?.isScrollable = false
        
        // 製作資訊按鈕
        creditButton.font = NSFont.systemFont(ofSize: 10)
        creditButton.bezelStyle = .regularSquare
        creditButton.isBordered = false
        creditButton.contentTintColor = NSColor.tertiaryLabelColor
        
        // 加入視圖
        addSubview(titleLabel)
        addSubview(subtitleLabel)
        addSubview(productKeyField)
        addSubview(activateButton)
        addSubview(progressBar)
        addSubview(resultLabel)
        addSubview(creditButton)
        
        // 更新UI文字
        updateUIText()
        
        // 設定約束
        setupConstraints()
    }
    
    func updateUIText() {
        titleLabel.stringValue = LocalizedStrings.windowTitle
        subtitleLabel.stringValue = LocalizedStrings.subtitle
        activateButton.title = LocalizedStrings.activateButton
        productKeyField.placeholderString = LocalizedStrings.placeholderText
        creditButton.title = LocalizedStrings.creditText
    }
    
    private func setupConstraints() {
        // 停用自動調整遮罩
        [titleLabel, subtitleLabel, productKeyField, activateButton, progressBar, resultLabel, creditButton].forEach {
            $0?.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            // 標題
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            // 副標題
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            subtitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            subtitleLabel.leadingAnchor.constraint(greaterThanOrEqualTo: self.leadingAnchor, constant: 20),
            subtitleLabel.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -20),
            
            // 輸入框
            productKeyField.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 30),
            productKeyField.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            productKeyField.widthAnchor.constraint(equalToConstant: 350),
            productKeyField.heightAnchor.constraint(equalToConstant: 60),
            
            // 啟用按鈕
            activateButton.topAnchor.constraint(equalTo: productKeyField.bottomAnchor, constant: 20),
            activateButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activateButton.widthAnchor.constraint(equalToConstant: 100),
            
            // 進度條
            progressBar.topAnchor.constraint(equalTo: activateButton.bottomAnchor, constant: 20),
            progressBar.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            progressBar.widthAnchor.constraint(equalToConstant: 300),
            
            // 結果標籤
            resultLabel.topAnchor.constraint(equalTo: progressBar.bottomAnchor, constant: 20),
            resultLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            resultLabel.leadingAnchor.constraint(greaterThanOrEqualTo: self.leadingAnchor, constant: 20),
            resultLabel.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -20),
            
            // 製作資訊按鈕
            creditButton.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 10),
            creditButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            creditButton.leadingAnchor.constraint(greaterThanOrEqualTo: self.leadingAnchor, constant: 20),
            creditButton.trailingAnchor.constraint(lessThanOrEqualTo: self.trailingAnchor, constant: -20),
            creditButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15)
        ])
    }
    
    @objc private func activateClicked() {
        let productKey = productKeyField.stringValue.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // 顯示進度條
        progressBar.isHidden = false
        progressBar.startAnimation(nil)
        activateButton.isEnabled = false
        productKeyField.isEnabled = false
        resultLabel.stringValue = LocalizedStrings.verifying
        
        // 模擬網路延遲
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.progressBar.stopAnimation(nil)
            self.progressBar.isHidden = true
            self.activateButton.isEnabled = true
            self.productKeyField.isEnabled = true
            
            // 檢查產品金鑰
            if LocalizedStrings.isValidProductKey(productKey) {
                let result = LocalizedStrings.getActivationJokeMessage(for: productKey)
                self.resultLabel.stringValue = result
                self.resultLabel.textColor = NSColor.systemGreen
                self.playSuccessSound()
            } else if productKey.isEmpty {
                self.resultLabel.stringValue = LocalizedStrings.enterKey
                self.resultLabel.textColor = NSColor.systemRed
            } else {
                self.resultLabel.stringValue = LocalizedStrings.invalidKey
                self.resultLabel.textColor = NSColor.systemOrange
            }
        }
    }
    
    private func playSuccessSound() {
        // 播放系統成功音效
        NSSound.beep()
    }
    
    @objc private func openCreditLink() {
        if let url = URL(string: "https://k.catkai.net") {
            NSWorkspace.shared.open(url)
        }
    }
}

// 浮水印視窗類別
class WatermarkWindow: NSWindow {
    
    private var watermarkView = WatermarkView()
    
    override init(contentRect: NSRect, styleMask style: NSWindow.StyleMask, backing backingStoreType: NSWindow.BackingStoreType, defer flag: Bool) {
        super.init(contentRect: NSScreen.main?.frame ?? NSRect(x: 0, y: 0, width: 800, height: 600), 
                   styleMask: [.borderless], 
                   backing: .buffered, 
                   defer: false)
        
        self.contentView = watermarkView
        self.backgroundColor = NSColor.clear
        self.isOpaque = false
        self.level = .floating // 最高層級，確保始終置頂
        self.ignoresMouseEvents = true
        self.hasShadow = false
        self.collectionBehavior = [.canJoinAllSpaces, .stationary]
        
        // 確保視窗始終在最前面
        self.makeKeyAndOrderFront(nil)
        self.orderFront(nil)
        
        positionWatermark()
        
        // 監聽螢幕變化
        NotificationCenter.default.addObserver(self, selector: #selector(screenParametersChanged), name: NSApplication.didChangeScreenParametersNotification, object: nil)
    }
    
    convenience init() {
        self.init(contentRect: NSRect.zero, styleMask: .borderless, backing: .buffered, defer: false)
    }
    
    private func positionWatermark() {
        guard let screen = NSScreen.main else { return }
        let screenFrame = screen.frame
        
        // 使用固定大小，不跟隨螢幕縮放
        let watermarkSize = calculateWatermarkSize()
        
        // 浮水印位置在左下角，緊貼螢幕底部邊緣
        // 注意：getBottomMargin 同時包含了選單列和 Dock 的高度，
        // 這樣在大多數螢幕布局下都能獲得合理的視覺間距
        let bottomMargin = getBottomMargin(for: screen)
        
        // 計算浮水印位置（注意：macOS座標系中y軸從底部開始）
        let x = screenFrame.maxX - watermarkSize.width
        let y = screenFrame.minY + bottomMargin
        
        self.setFrame(NSRect(x: x, y: y, width: watermarkSize.width, height: watermarkSize.height), display: true)
        watermarkView.updateScaleFactor(1.0) // 使用固定的縮放因子
    }
    
    
    private func calculateWatermarkSize() -> NSSize {
        // 使用固定大小
        let baseWidth: CGFloat = 520 //嘻嘻
        let baseHeight: CGFloat = 184
        return NSSize(width: baseWidth, height: baseHeight)
    }
    
    private func getBottomMargin(for screen: NSScreen) -> CGFloat {
        // 計算螢幕底部被佔用的空間（選單列 + Dock）
        // visibleFrame 去掉了選單列（頂部）和 Dock（底部），
        // 差值即為二者的合計高度
        let visibleFrame = screen.visibleFrame
        let fullFrame = screen.frame
        
        let bottomMargin = fullFrame.height - visibleFrame.height
        
        // 如果高度差為零或負數（Dock 在側邊等情況），使用預設估算值
        if bottomMargin <= 0 {
            let backingScaleFactor = screen.backingScaleFactor
            let defaultMargin: CGFloat = 58
            return defaultMargin * (2.0 / backingScaleFactor)
        }
        
        return bottomMargin
    }
    
    func updateWatermarkText() {
        watermarkView.updateText()
    }
    
    func screenDidChange() {
        positionWatermark()
    }
    
    @objc private func screenParametersChanged() {
        positionWatermark()
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

// 浮水印視圖類別
class WatermarkView: NSView {
    
    private var scaleFactor: CGFloat = 1.0
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        self.wantsLayer = true
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.wantsLayer = true
    }
    
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Windows浮水印樣式：較亮的灰色文字，半透明，靠左對齊
        let textColor = NSColor(red: 0.827, green: 0.827, blue: 0.827, alpha: 0.8) // #D3D3D3
        
        // 計算可用寬度，減少一些空間以確保英文文字也能觸發自動縮小
        let availableWidth = self.bounds.width - 80
        
        // 第一行文字：初始H1大小，放大50%
        let firstLineText = LocalizedStrings.watermarkTextLine1
        var firstLineFontSize: CGFloat = 24 * scaleFactor * 2
        var firstLineFont = NSFont.systemFont(ofSize: firstLineFontSize, weight: .bold)
        
        // 檢查第一行文字是否過長，如果過長則縮小字體
        let firstLineAttributes = [
            .font: firstLineFont,
            .foregroundColor: textColor
        ] as [NSAttributedString.Key: Any]
        let firstLineSize = firstLineText.size(withAttributes: firstLineAttributes)
        
        if firstLineSize.width > availableWidth {
            // 文字過長，縮小字體
            let scaleFactor = availableWidth / firstLineSize.width
            firstLineFontSize *= scaleFactor
            firstLineFont = NSFont.systemFont(ofSize: firstLineFontSize, weight: .bold)
        }
        
        // 第二行文字：初始H3大小，放大50%
        let secondLineText = LocalizedStrings.watermarkTextLine2
        var secondLineFontSize: CGFloat = 16 * scaleFactor * 2
        var secondLineFont = NSFont.systemFont(ofSize: secondLineFontSize, weight: .medium)
        
        // 檢查第二行文字是否過長，如果過長則縮小字體
        let secondLineAttributes = [
            .font: secondLineFont,
            .foregroundColor: textColor
        ] as [NSAttributedString.Key: Any]
        let secondLineSize = secondLineText.size(withAttributes: secondLineAttributes)
        
        if secondLineSize.width > availableWidth {
            // 文字過長，縮小字體
            let scaleFactor = availableWidth / secondLineSize.width
            secondLineFontSize *= scaleFactor
            secondLineFont = NSFont.systemFont(ofSize: secondLineFontSize, weight: .medium)
        }
        
        // 建立最終的文字屬性
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        
        let finalFirstLineAttributes: [NSAttributedString.Key: Any] = [
            .font: firstLineFont,
            .foregroundColor: textColor,
            .paragraphStyle: paragraphStyle
        ]
        
        let finalSecondLineAttributes: [NSAttributedString.Key: Any] = [
            .font: secondLineFont,
            .foregroundColor: textColor,
            .paragraphStyle: paragraphStyle
        ]
        
        // 繪製第一行 - 向右移動一些距離
        let firstLineString = NSAttributedString(string: firstLineText, attributes: finalFirstLineAttributes)
        let firstLineHeight: CGFloat = 30 * scaleFactor * 2
        let firstLineRect = NSRect(x: 50, y: self.bounds.height - firstLineHeight - 10, 
                                  width: self.bounds.width - 60, height: firstLineHeight)
        firstLineString.draw(in: firstLineRect)
        
        // 繪製第二行 - 向右移動一些距離
        let secondLineString = NSAttributedString(string: secondLineText, attributes: finalSecondLineAttributes)
        let secondLineHeight: CGFloat = 25 * scaleFactor * 2
        let secondLineRect = NSRect(x: 50, y: self.bounds.height - firstLineHeight - secondLineHeight - 15, 
                                   width: self.bounds.width - 60, height: secondLineHeight)
        secondLineString.draw(in: secondLineRect)
    }
    
    func updateText() {
        self.needsDisplay = true
    }
    
    func updateScaleFactor(_ factor: CGFloat) {
        scaleFactor = factor
        self.needsDisplay = true
    }
}

// 哼哼，其實在開發這個專案之前，凱莫完全不會swift呢，都是我GuanZi(AI)教他的：）
// 應用程式入口點
let app = NSApplication.shared
let delegate = AppDelegate()
app.delegate = delegate
app.run()