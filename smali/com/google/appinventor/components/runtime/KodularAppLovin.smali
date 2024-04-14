.class public Lcom/google/appinventor/components/runtime/KodularAppLovin;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/app-lovin/"
    iconName = "images/applovin.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "app-lovin.aar",
        "app-lovin.jar",
        "browser.jar",
        "browser.aar",
        "play-services-ads-base.jar",
        "play-services-ads-base.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-ads-lite.jar",
        "play-services-ads-lite.aar",
        "play-services-basement.jar",
        "play-services-basement.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

.field private jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 72
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 73
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->context:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    const-string p1, "AppLovin"

    const-string v0, "Kodular AppLovin created"

    .line 78
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Ljava/lang/String;
    .locals 1

    const/16 v0, -0x67

    if-eq p0, v0, :cond_4

    const/16 v0, -0x66

    if-eq p0, v0, :cond_3

    const/4 v0, -0x8

    if-eq p0, v0, :cond_2

    const/4 v0, -0x7

    if-eq p0, v0, :cond_1

    const/4 v0, -0x6

    if-eq p0, v0, :cond_0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "No error message available"

    return-object p0

    :pswitch_0
    const-string p0, "Indicates that an attempt to cache a resource to the filesystem failed; the device may be out of space."

    return-object p0

    :pswitch_1
    const-string p0, "Indicates that an attempt to cache an image resource to the filesystem failed; the device may be out of space."

    return-object p0

    :pswitch_2
    const-string p0, "Indicates that an attempt to cache a video resource to the filesystem failed; the device may be out of space."

    return-object p0

    :sswitch_0
    const-string p0, "Indicates that no ads are currently eligible for your device."

    return-object p0

    :sswitch_1
    const-string p0, "Indicates that the system is in unexpected state."

    return-object p0

    :sswitch_2
    const-string p0, "Indicates that the SDK is currently disabled."

    return-object p0

    :sswitch_3
    const-string p0, "Indicates that the developer called for a rewarded video before one was available. Note: This code is only possible when working with rewarded videos."

    return-object p0

    :sswitch_4
    const-string p0, "Indicates that an unknown server-side error occurred. Note: This code is only possible when working with rewarded videos."

    return-object p0

    :sswitch_5
    const-string p0, "Indicates that a reward validation requested timed out (usually due to poor connectivity). Note: This code is only possible when working with rewarded videos."

    return-object p0

    :sswitch_6
    const-string p0, "Indicates that the user exited out of the ad early. You may or may not wish to grant a reward depending on your preference. Note: This code is only possible when working with rewarded ads."

    return-object p0

    :sswitch_7
    const-string p0, "Indicates that there was an error while attempting to render a native ad."

    return-object p0

    :sswitch_8
    const-string p0, "Indicates that the impression has already been tracked."

    return-object p0

    :sswitch_9
    const-string p0, "Indicates that a AppLovin servers have returned an invalid response"

    return-object p0

    :sswitch_a
    const-string p0, "Indicates that a postback URL you attempted to dispatch was empty or nil."

    return-object p0

    :cond_0
    const-string p0, "Indicates that there has been a failure to render an ad on screen."

    return-object p0

    :cond_1
    const-string p0, "Indicates that the zone provided is invalid; the zone needs to be added to your AppLovin account or may still be propagating to our servers."

    return-object p0

    :cond_2
    const-string p0, "Indicates that the provided ad token is invalid; ad token must be returned from AppLovin S2S integration."

    return-object p0

    :cond_3
    const-string p0, "Indicates that the network conditions prevented the SDK from receiving an ad."

    return-object p0

    :cond_4
    const-string p0, "Indicates that the device had no network connectivity at the time of an ad request, either due to airplane mode or no service."

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x384 -> :sswitch_a
        -0x320 -> :sswitch_9
        -0x2be -> :sswitch_8
        -0x2bc -> :sswitch_7
        -0x258 -> :sswitch_6
        -0x1f4 -> :sswitch_5
        -0x190 -> :sswitch_4
        -0x12c -> :sswitch_3
        -0x16 -> :sswitch_2
        -0x1 -> :sswitch_1
        0xcc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0xca
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was closed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 165
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 175
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdFailedToLoad"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 155
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdOpened()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was opened."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdOpened"

    .line 160
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdStarted()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad was started."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdStarted"

    .line 170
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Error(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. The message will display the reason for why the ad failed."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "Error"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsEuropeanUser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the current app user is located in europe. If true you must ask the user as example in a dialog if he give his consent for personalized ads."
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KodularGDPRUtil;->isRequestLocationInEurope(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->SdkKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    .line 86
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public SdkKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Ljava/lang/String;

    return-object v0
.end method

.method public SdkKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 145
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Ljava/lang/String;

    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdk;

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    .line 110
    new-instance v1, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularAppLovin$3;-><init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V

    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v1, v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_1
    return-void
.end method

.method public TestMode(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If you want to test the component then that this property to true. Then you will receive test ads."
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0, p1}, Lcom/applovin/sdk/AppLovinSdkSettings;->setTestAdsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/applovin/sdk/AppLovinSdkSettings;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdkSettings;->isTestAdsEnabled()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public UserConsent(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user allowed the ad network to show personalized ads. You only need to request the consent from european users."
    .end annotation

    .line 196
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->setHasUserConsent(ZLandroid/content/Context;)V

    return-void
.end method

.method public UserConsent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    return v0
.end method
