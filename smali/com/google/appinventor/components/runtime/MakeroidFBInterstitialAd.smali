.class public Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/ads/InterstitialAdListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/facebook-interstitial/"
    iconName = "images/facebook.png"
    nonVisible = true
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AudienceNetwork.jar",
        "AudienceNetwork.aar",
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
.field private activity:Landroid/app/Activity;

.field private bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 47
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->context:Landroid/content/Context;

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->activity:Landroid/app/Activity;

    .line 57
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 58
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 60
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/AudienceNetworkAds;->initialize(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the user is about to return to the application after clicking on an ad"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 112
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad is received"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 117
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public CommissionInterstitialAdsNetwork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_interstitial_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. message will display the reason for why the ad failed"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error"

    .line 107
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .line 1069
    new-instance v0, Lcom/facebook/ads/InterstitialAd;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/InterstitialAd;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;

    .line 1071
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->buildLoadAdConfig()Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->withAdListener(Lcom/facebook/ads/InterstitialAdListener;)Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/InterstitialAd$InterstitialAdLoadConfigBuilder;->build()Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;

    move-result-object v1

    .line 1070
    invoke-virtual {v0, v1}, Lcom/facebook/ads/InterstitialAd;->loadAd(Lcom/facebook/ads/InterstitialAd$InterstitialLoadAdConfig;)V

    const-string v0, "Makeroid FBInterstitial"

    const-string v1, "loadAd() called"

    .line 1073
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public PlacementID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    return-object v0
.end method

.method public PlacementID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->bEgrYPbd5peKqyXwAOBm3whGEG8qvODU2pBvqaxE9h7HUpHdWqfLhYhcIZ9UxgZV:Ljava/lang/String;

    return-void
.end method

.method public ShowAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->isAdLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->show()Z

    const-string v0, "Makeroid FBInterstitial"

    const-string v1, "showAd() called"

    .line 84
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string v0, "The ad is already expired or invalidated. Please load a new ad."

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClicked(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string p1, "Makeroid FBInterstitial"

    const-string v0, "Ad clicked"

    .line 159
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdLoaded(Lcom/facebook/ads/Ad;)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "Facebook"

    const-string v1, "Interstitial"

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "Makeroid FBInterstitial"

    const-string v0, "Ad loaded"

    .line 152
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->AdLoaded()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/facebook/ads/InterstitialAd;->destroy()V

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/facebook/ads/InterstitialAd;

    :cond_0
    return-void
.end method

.method public onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V
    .locals 1

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onError: Error code is: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and Error Message is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid FBInterstitial"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->Error(Ljava/lang/String;)V

    return-void
.end method

.method public onInterstitialDismissed(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string p1, "Makeroid FBInterstitial"

    const-string v0, "Ad dismissed"

    .line 137
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidFBInterstitialAd;->AdClosed()V

    return-void
.end method

.method public onInterstitialDisplayed(Lcom/facebook/ads/Ad;)V
    .locals 1

    const-string p1, "Makeroid FBInterstitial"

    const-string v0, "Ad displayed"

    .line 131
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLoggingImpression(Lcom/facebook/ads/Ad;)V
    .locals 0

    return-void
.end method
