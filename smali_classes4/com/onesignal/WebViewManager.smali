.class Lcom/onesignal/WebViewManager;
.super Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;
.source "WebViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/WebViewManager$OSJavaScriptInterface;,
        Lcom/onesignal/WebViewManager$OneSignalGenericCallback;,
        Lcom/onesignal/WebViewManager$Position;
    }
.end annotation


# static fields
.field private static final IN_APP_MESSAGE_INIT_DELAY:I = 0xc8

.field private static final MARGIN_PX_SIZE:I

.field private static final TAG:Ljava/lang/String; = "com.onesignal.WebViewManager"

.field protected static lastInstance:Lcom/onesignal/WebViewManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private currentActivityName:Ljava/lang/String;

.field private lastPageHeight:Ljava/lang/Integer;

.field private message:Lcom/onesignal/OSInAppMessage;

.field private messageView:Lcom/onesignal/InAppMessageView;

.field private webView:Lcom/onesignal/OSWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    .line 38
    invoke-static {v0}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result v0

    sput v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    const/4 v0, 0x0

    .line 61
    sput-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    return-void
.end method

.method protected constructor <init>(Lcom/onesignal/OSInAppMessage;Landroid/app/Activity;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/onesignal/WebViewManager;->currentActivityName:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/onesignal/WebViewManager;->lastPageHeight:Ljava/lang/Integer;

    .line 74
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    .line 75
    iput-object p2, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p0, p1, p2}, Lcom/onesignal/WebViewManager;->initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/onesignal/WebViewManager;->setupWebView(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/onesignal/WebViewManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/onesignal/WebViewManager;->removeActivityListener()V

    return-void
.end method

.method static synthetic access$200(Lcom/onesignal/WebViewManager;)Lcom/onesignal/InAppMessageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/onesignal/WebViewManager;Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$Position;IZ)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/onesignal/WebViewManager;->createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/onesignal/WebViewManager;)Landroid/app/Activity;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$500(Landroid/app/Activity;Lorg/json/JSONObject;)I
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/onesignal/WebViewManager;->pageRectToViewHeight(Landroid/app/Activity;Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSInAppMessage;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    return-object p0
.end method

.method static synthetic access$700(Lcom/onesignal/WebViewManager;Landroid/app/Activity;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->setWebViewToMaxSize(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/onesignal/WebViewManager;Ljava/lang/Integer;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$900(Lcom/onesignal/WebViewManager;)Lcom/onesignal/OSWebView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    return-object p0
.end method

.method private blurryRenderingWebViewForKitKatWorkAround(Landroid/webkit/WebView;)V
    .locals 2

    .line 363
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private calculateHeightAndShowWebViewAfterNewActivity()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/InAppMessageView;->getDisplayPosition()Lcom/onesignal/WebViewManager$Position;

    move-result-object v0

    sget-object v1, Lcom/onesignal/WebViewManager$Position;->FULL_SCREEN:Lcom/onesignal/WebViewManager$Position;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 258
    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "In app message new activity, calculate height and show "

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/onesignal/WebViewManager$4;

    invoke-direct {v1, p0}, Lcom/onesignal/WebViewManager$4;-><init>(Lcom/onesignal/WebViewManager;)V

    invoke-static {v0, v1}, Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private createNewInAppMessageView(Lcom/onesignal/WebViewManager$Position;IZ)V
    .locals 6

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iput-object p3, p0, Lcom/onesignal/WebViewManager;->lastPageHeight:Ljava/lang/Integer;

    .line 378
    new-instance p3, Lcom/onesignal/InAppMessageView;

    iget-object v1, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    iget-object v0, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v0}, Lcom/onesignal/OSInAppMessage;->getDisplayDuration()D

    move-result-wide v4

    move-object v0, p3

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/onesignal/InAppMessageView;-><init>(Landroid/webkit/WebView;Lcom/onesignal/WebViewManager$Position;ID)V

    iput-object p3, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    .line 379
    new-instance p1, Lcom/onesignal/WebViewManager$6;

    invoke-direct {p1, p0}, Lcom/onesignal/WebViewManager$6;-><init>(Lcom/onesignal/WebViewManager;)V

    invoke-virtual {p3, p1}, Lcom/onesignal/InAppMessageView;->setMessageController(Lcom/onesignal/InAppMessageView$InAppMessageViewListener;)V

    .line 392
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Lcom/onesignal/WebViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    iget-object p3, p3, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/onesignal/ActivityLifecycleHandler;->addActivityAvailableListener(Ljava/lang/String;Lcom/onesignal/ActivityLifecycleHandler$ActivityAvailableListener;)V

    :cond_0
    return-void
.end method

.method static dismissCurrentInAppMessage()V
    .locals 3

    .line 120
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewManager IAM dismissAndAwaitNextMessage lastInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 122
    invoke-virtual {v0, v1}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    :cond_0
    return-void
.end method

.method private static enableWebViewRemoteDebugging()V
    .locals 2

    .line 400
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    .line 401
    invoke-static {v0}, Lcom/onesignal/OneSignal;->atLogLevel(Lcom/onesignal/OneSignal$LOG_LEVEL;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 402
    invoke-static {v0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_0
    return-void
.end method

.method private static getWebViewMaxSizeX(Landroid/app/Activity;)I
    .locals 1

    .line 407
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowWidth(Landroid/app/Activity;)I

    move-result p0

    sget v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static getWebViewMaxSizeY(Landroid/app/Activity;)I
    .locals 1

    .line 411
    invoke-static {p0}, Lcom/onesignal/OSViewUtils;->getWindowHeight(Landroid/app/Activity;)I

    move-result p0

    sget v0, Lcom/onesignal/WebViewManager;->MARGIN_PX_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method private static initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    .line 129
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/4 v0, 0x2

    .line 128
    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 133
    new-instance v0, Lcom/onesignal/WebViewManager;

    invoke-direct {v0, p1, p0}, Lcom/onesignal/WebViewManager;-><init>(Lcom/onesignal/OSInAppMessage;Landroid/app/Activity;)V

    .line 134
    sput-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    .line 137
    new-instance p1, Lcom/onesignal/WebViewManager$3;

    invoke-direct {p1, v0, p0, p2}, Lcom/onesignal/WebViewManager$3;-><init>(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onesignal/OSUtils;->runOnMainUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string p2, "Catch on initInAppMessage: "

    invoke-static {p1, p2, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static pageRectToViewHeight(Landroid/app/Activity;Lorg/json/JSONObject;)I
    .locals 3

    :try_start_0
    const-string v0, "rect"

    .line 233
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 234
    invoke-static {p1}, Lcom/onesignal/OSViewUtils;->dpToPx(I)I

    move-result p1

    .line 235
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPageHeightData:pxHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 237
    invoke-static {p0}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeY(Landroid/app/Activity;)I

    move-result p0

    if-le p1, p0, :cond_0

    .line 240
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPageHeightData:pxHeight is over screen max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move p1, p0

    :cond_0
    return p1

    :catch_0
    move-exception p0

    .line 245
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "pageRectToViewHeight could not get page height"

    invoke-static {p1, v0, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method private removeActivityListener()V
    .locals 3

    .line 415
    invoke-static {}, Lcom/onesignal/ActivityLifecycleListener;->getActivityLifecycleHandler()Lcom/onesignal/ActivityLifecycleHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/onesignal/WebViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    iget-object v2, v2, Lcom/onesignal/OSInAppMessage;->messageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/ActivityLifecycleHandler;->removeActivityAvailableListener(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setWebViewToMaxSize(Landroid/app/Activity;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeX(Landroid/app/Activity;)I

    move-result v1

    invoke-static {p1}, Lcom/onesignal/WebViewManager;->getWebViewMaxSizeY(Landroid/app/Activity;)I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Lcom/onesignal/OSWebView;->layout(IIII)V

    return-void
.end method

.method private setupWebView(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    .line 335
    invoke-static {}, Lcom/onesignal/WebViewManager;->enableWebViewRemoteDebugging()V

    .line 337
    new-instance v0, Lcom/onesignal/OSWebView;

    invoke-direct {v0, p1}, Lcom/onesignal/OSWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    const/4 v1, 0x2

    .line 339
    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setOverScrollMode(I)V

    .line 340
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setVerticalScrollBarEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 342
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0}, Lcom/onesignal/OSWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 345
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    new-instance v1, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;

    invoke-direct {v1, p0}, Lcom/onesignal/WebViewManager$OSJavaScriptInterface;-><init>(Lcom/onesignal/WebViewManager;)V

    const-string v2, "OSAndroid"

    invoke-virtual {v0, v1, v2}, Lcom/onesignal/OSWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-direct {p0, v0}, Lcom/onesignal/WebViewManager;->blurryRenderingWebViewForKitKatWorkAround(Landroid/webkit/WebView;)V

    .line 349
    new-instance v0, Lcom/onesignal/WebViewManager$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/onesignal/WebViewManager$5;-><init>(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/onesignal/OSViewUtils;->decorViewReady(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method static showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .locals 4

    .line 86
    invoke-static {}, Lcom/onesignal/OneSignal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in app message showHTMLString on currentActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 93
    sget-object v1, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/onesignal/OSInAppMessage;->isPreview:Z

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    new-instance v2, Lcom/onesignal/WebViewManager$1;

    invoke-direct {v2, v0, p0, p1}, Lcom/onesignal/WebViewManager$1;-><init>(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onesignal/WebViewManager;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-static {v0, p0, p1}, Lcom/onesignal/WebViewManager;->initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/onesignal/WebViewManager$2;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/WebViewManager$2;-><init>(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showMessageView(Ljava/lang/Integer;)V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-nez v0, :cond_0

    .line 319
    sget-object p1, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "No messageView found to update a with a new height."

    invoke-static {p1, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 323
    :cond_0
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In app message, showing first one with height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    iget-object v1, p0, Lcom/onesignal/WebViewManager;->webView:Lcom/onesignal/OSWebView;

    invoke-virtual {v0, v1}, Lcom/onesignal/InAppMessageView;->setWebView(Landroid/webkit/WebView;)V

    if-eqz p1, :cond_1

    .line 326
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->lastPageHeight:Ljava/lang/Integer;

    .line 327
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/onesignal/InAppMessageView;->updateHeight(I)V

    .line 329
    :cond_1
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    iget-object v0, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/onesignal/InAppMessageView;->showView(Landroid/app/Activity;)V

    .line 330
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->checkIfShouldDismiss()V

    return-void
.end method


# virtual methods
.method available(Landroid/app/Activity;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->currentActivityName:Ljava/lang/String;

    .line 289
    iput-object p1, p0, Lcom/onesignal/WebViewManager;->activity:Landroid/app/Activity;

    .line 290
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/WebViewManager;->currentActivityName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 293
    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    goto :goto_0

    .line 294
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 296
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-eqz p1, :cond_1

    .line 297
    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->removeAllViews()V

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->lastPageHeight:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/onesignal/WebViewManager;->showMessageView(Ljava/lang/Integer;)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0}, Lcom/onesignal/WebViewManager;->calculateHeightAndShowWebViewAfterNewActivity()V

    :goto_0
    return-void
.end method

.method protected dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 425
    invoke-interface {p1}, Lcom/onesignal/WebViewManager$OneSignalGenericCallback;->onComplete()V

    :cond_0
    return-void

    .line 429
    :cond_1
    new-instance v1, Lcom/onesignal/WebViewManager$7;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/WebViewManager$7;-><init>(Lcom/onesignal/WebViewManager;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    invoke-virtual {v0, v1}, Lcom/onesignal/InAppMessageView;->dismissAndAwaitNextMessage(Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method lostFocus()V
    .locals 2

    .line 312
    invoke-static {}, Lcom/onesignal/OneSignal;->getInAppMessageController()Lcom/onesignal/OSInAppMessageController;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/WebViewManager;->message:Lcom/onesignal/OSInAppMessage;

    invoke-virtual {v0, v1}, Lcom/onesignal/OSInAppMessageController;->messageWasDismissedByBackPress(Lcom/onesignal/OSInAppMessage;)V

    .line 313
    invoke-direct {p0}, Lcom/onesignal/WebViewManager;->removeActivityListener()V

    const/4 v0, 0x0

    .line 314
    iput-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    return-void
.end method

.method stopped(Landroid/app/Activity;)V
    .locals 2

    .line 305
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->DEBUG:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "In app message activity stopped, cleaning views"

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/WebViewManager;->currentActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/onesignal/WebViewManager;->messageView:Lcom/onesignal/InAppMessageView;

    invoke-virtual {p1}, Lcom/onesignal/InAppMessageView;->removeAllViews()V

    :cond_0
    return-void
.end method
