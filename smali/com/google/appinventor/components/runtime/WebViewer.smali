.class public final Lcom/google/appinventor/components/runtime/WebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for viewing Web pages. The Home URL can be specified in the Designer or in the Blocks Editor. The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser. For example, pressing the phone\'s hardware Back key will exit the app, rather than move back in the browser history.<p />You can use the WebViewer.WebViewString property to communicate between your app and Javascript code running in the Webviewer page. In the app, you get and set WebViewString.  In the WebViewer, you include Javascript that references the window.Kodular object, using the methoods <em>getWebViewString()</em> and <em>setWebViewString(text)</em>. <p />For example, if the WebViewer opens to a page that contains the Javascript command <br /><em>document.write(\"The answer is\" + window.Kodular.getWebViewString());</em> <br />and if you set WebView.WebVewString to \"hello\", then the web page will show <br /><em>The answer is hello</em>. <br />And if the Web page contains Javascript that executes the command <br /><em>window.Kodular.setWebViewString(\"hello from Javascript\")</em>, <br />then the value of the WebViewString property will be <br /><em>hello from Javascript</em>."
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;,
        Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;,
        Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebViewer"

.field private static REQUEST_CODE_FILE_PICKER:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private final androidUIHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private cookieMgr:Landroid/webkit/CookieManager;

.field private desktopMode:Z

.field private followLinks:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private haveLocationPermission:Z

.field private havePermission:Z

.field private homeUrl:Ljava/lang/String;

.field private ignoreSslErrors:Z

.field private jsEnabled:Z

.field private loadImages:Z

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private prompt:Z

.field private scrollbar:Z

.field private useExternalBrowser:Z

.field private final webview:Landroid/webkit/WebView;

.field wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field private zoomControl:Z

.field private zoomEnabled:Z

.field private zoomPercent:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 160
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 112
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    .line 115
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 122
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    .line 124
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    const/16 v2, 0x64

    .line 126
    iput v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    .line 129
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    .line 132
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    .line 135
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 137
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    .line 138
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    .line 144
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    .line 145
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    .line 146
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->androidUIHandler:Landroid/os/Handler;

    .line 162
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->context:Landroid/content/Context;

    .line 163
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    .line 165
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 166
    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 167
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 168
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v1

    sput v1, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    .line 170
    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    .line 171
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 174
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 177
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 178
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 181
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 182
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 183
    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 186
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 187
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 188
    iget v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 190
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 191
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 193
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 196
    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string v2, "AppInventor"

    .line 197
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string v2, "Makeroid"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string v2, "Kodular"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/WebViewer$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 219
    invoke-virtual {v1, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 221
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 223
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->EnableJavaScript(Z)V

    .line 224
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->DesktopMode(Z)V

    const-string p1, ""

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->HomeUrl(Ljava/lang/String;)V

    const/4 p1, -0x2

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->Width(I)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->Height(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/WebViewer;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    return p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-object p1
.end method

.method static synthetic access$400()I
    .locals 1

    .line 96
    sget v0, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    return p1
.end method

.method private loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "file:///mnt/sdcard/AppInventor/"

    .line 632
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppInventor"

    const-string v1, "Kodular"

    .line 633
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 636
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/appinventor/components/runtime/WebViewer$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void

    .line 652
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private resetWebViewClient()V
    .locals 2

    .line 962
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 2

    .line 973
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 975
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->initialize(Landroid/content/Context;)V

    .line 976
    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$6;

    invoke-direct {v0, p0, p2}, Lcom/google/appinventor/components/runtime/WebViewer$6;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method private shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    .line 347
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "mailto:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 352
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebViewer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final AfterJSEvaluated(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Get the result of the evaluated JS"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterJSEvaluated"

    .line 958
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CanGoBack()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back in the history list."
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public final CanGoBackOrForward(I)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back or forward the number of steps in the history list."
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public final CanGoForward()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go forward in the history list."
    .end annotation

    .line 594
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public final ClearCaches()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear WebView caches."
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public final ClearCookies()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to clear the WebView cookies."
    .end annotation

    const-string v0, "WebViewer"

    const-string v1, "Api is bigger than 21"

    .line 752
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$4;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 758
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public final ClearLocations()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear stored location permissions."
    .end annotation

    .line 732
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    return-void
.end method

.method public final CookiesRemoved(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event return true when the cookies have been successfully removed. If the cookies was successfully cleared then the next run returns false as status, if in this time no new cookies was set."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 765
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CookiesRemoved"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CurrentPageTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final CurrentUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page currently viewed. This could be different from the Home URL if new pages were visited by following links."
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final DesktopMode(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 912
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    .line 914
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 916
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Mobile"

    const-string v2, "eliboM"

    .line 917
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Android"

    const-string v2, "diordnA"

    .line 918
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 921
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public final DesktopMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get/Set Desktop mode by altering the user agent string."
    .end annotation

    .line 927
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    return v0
.end method

.method public final EnableJavaScript(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable/Disable JavaScript. Enabled by default"
    .end annotation

    .line 933
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    .line 934
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public final EnableJavaScript()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Evaluate Javascript in current page context"
    .end annotation

    .line 939
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    return v0
.end method

.method public final EvaluateJS(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Evaluate JS in the context of the current page"
    .end annotation

    .line 944
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/appinventor/components/runtime/WebViewer$5;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/WebViewer$5;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final FollowLinks(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 518
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 519
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    return-void
.end method

.method public final FollowLinks()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. "
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    return v0
.end method

.method public final GoBack()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go back to the previous page in the history list. Does nothing if there is no previous page."
    .end annotation

    .line 566
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public final GoBackOrForward(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward or backward a number of steps away from the current page. Steps is negative if backward and positive if forward."
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    return-void
.end method

.method public final GoForward()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward to the next page in the history list. Does nothing if there is no next page."
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public final GoHome()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the home URL page. This happens automatically when the home URL is changed."
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    const-string v1, "GoHome"

    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final GoToUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the page at the given URL."
    .end annotation

    const-string v0, "file:///mnt/sdcard/AppInventor/"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AppInventor"

    const-string v1, "Kodular"

    .line 626
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "GoToUrl"

    .line 628
    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 444
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public final HomeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "URL of the page the WebViewer should initially open to. Setting this will load the page."
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final HomeUrl(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    .line 468
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->clearHistory()V

    .line 469
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    const-string v0, "HomeUrl"

    invoke-direct {p0, v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final IgnoreSslErrors(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 544
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 545
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    return-void
.end method

.method public final IgnoreSslErrors()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determine whether or not to ignore SSL errors. Set to true to ignore errors. Use this to accept self signed certificates from websites."
    .end annotation

    .line 532
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    return v0
.end method

.method public final LoadHtml(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load HTML content using Base64-encoded data URI scheme"
    .end annotation

    .line 657
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    .line 658
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    const-string v1, "text/html"

    const-string v2, "base64"

    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final LoadImages(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .line 864
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    .line 865
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 866
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    return-void
.end method

.method public final LoadImages()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to automatically load images"
    .end annotation

    .line 857
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    return v0
.end method

.method public final OnConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Get webpage console output"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "OnConsoleMessage"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for listening download links."
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    .line 260
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "OnDownloadStart"

    .line 259
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PageLoaded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when page finished loading"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PageLoaded"

    .line 891
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ProgressChanged(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the loading progress has changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 394
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ProgressChanged"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final PromptforPermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 721
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    return-void
.end method

.method public final PromptforPermission()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If True, then prompt the user of the WebView to give permission to access the geolocation API. If False, then assume permission is granted."
    .end annotation

    .line 709
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    return v0
.end method

.method public final Reload()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reloads the current page"
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public final Scrollbar(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar"
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 777
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    return-void
.end method

.method public final Scrollbar()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 782
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    return v0
.end method

.method public final StopLoading()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops the current load."
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public final UseExternalBrowser(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Open a link in the webviewer page using the external browser. If true the page will be loaded in the external browser and not in the webviewer itself."
    .end annotation

    .line 885
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 886
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    return-void
.end method

.method public final UseExternalBrowser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Open a link in the webviewer page using the external browser. If true the page will be loaded in the external browser and not in the webviewer itself."
    .end annotation

    .line 875
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    return v0
.end method

.method public final UserAgent()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get User Agent"
    .end annotation

    .line 904
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final UserAgent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 899
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public final UsesLocation(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether or not to give the application permission to use the Javascript geolocation API. This property is available only in the designer."
        userVisible = false
    .end annotation

    if-eqz p1, :cond_0

    .line 674
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    if-nez v0, :cond_0

    .line 676
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->androidUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/appinventor/components/runtime/WebViewer$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/WebViewer$3;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 696
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public final WebViewString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the WebView\'s String, which is viewable through Javascript in the WebView as the window.AppInventor object"
    .end annotation

    .line 1019
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->getWebViewString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final WebViewString(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewStringFromBlocks(Ljava/lang/String;)V

    return-void
.end method

.method public final WebViewStringChange(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the JavaScript calls AppInventor.setWebViewString this event is run."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WebViewStringChange"

    .line 1035
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 435
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public final ZoomDisplay(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .line 804
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    .line 805
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    return-void
.end method

.method public final ZoomDisplay()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show or Hide the zoom display."
    .end annotation

    .line 793
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    return v0
.end method

.method public final ZoomEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .line 827
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    .line 828
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    return-void
.end method

.method public final ZoomEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or Disable pinch zooming. This effects both pinch zooming and the zoom controls."
    .end annotation

    .line 816
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    return v0
.end method

.method public final ZoomPercent()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom of the page in percent %"
    .end annotation

    .line 839
    iget v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    return v0
.end method

.method public final ZoomPercent(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .line 850
    iput p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    .line 851
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected final handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 18

    move-object/from16 v0, p1

    const-string v1, "WebViewer"

    const-string v2, "file:///android_asset/"

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x16

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "//localhost/"

    .line 325
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string v2, "webviewer requested path = "

    .line 329
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p0

    .line 330
    :try_start_1
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3, v0}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 331
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Access-Control-Allow-Origin"

    const-string v4, "localhost"

    .line 332
    invoke-interface {v9, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "utf-8"

    const-string v3, "Mime type = "

    .line 335
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "text/"

    .line 336
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    move-object v6, v0

    .line 339
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const/16 v7, 0xc8

    const-string v8, "OK"

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object/from16 v2, p0

    .line 341
    :catch_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v1, "404 Not Found"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 342
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const/16 v14, 0x194

    const/16 v16, 0x0

    const-string v12, "text/plain"

    const-string v13, "utf-8"

    const-string v15, "Not Found"

    move-object v11, v1

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    return-object v1
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-wide v4, p5

    .line 254
    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/WebViewer;->OnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    :cond_0
    return-void
.end method

.method public final resultReturned(IILandroid/content/Intent;)V
    .locals 3

    .line 404
    sget v0, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p2, p1, :cond_0

    .line 407
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 408
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    return-void

    .line 412
    :cond_0
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_2

    .line 414
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p2

    .line 416
    new-array p3, p2, [Landroid/net/Uri;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 419
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    aput-object v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, p3

    .line 422
    :cond_2
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 423
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_3
    return-void
.end method
