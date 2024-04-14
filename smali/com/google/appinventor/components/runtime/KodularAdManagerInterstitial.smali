.class public final Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A visible component that displays banner ads from multiple advertisers and mediation partners"
    iconName = "images/kodularInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize"
            name = "com.google.android.gms.ads.AdActivity"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "browser.jar",
        "browser.aar",
        "play-services-ads.jar",
        "play-services-ads.aar",
        "play-services-ads-base.jar",
        "play-services-ads-base.aar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-ads-lite.jar",
        "play-services-ads-lite.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-measurement-sdk-api.jar",
        "play-services-measurement-sdk-api.aar",
        "play-services-measurement-sdk.jar",
        "play-services-measurement-sdk.aar",
        "play-services-measurement-impl.jar",
        "play-services-measurement-impl.aar",
        "play-services-measurement-base.jar",
        "play-services-measurement-base.aar",
        "play-services-measurement-api.jar",
        "play-services-measurement-api.aar",
        "play-services-measurement.jar",
        "play-services-measurement.aar",
        "ump.jar",
        "AudienceNetwork.jar",
        "AudienceNetwork.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION",
        "com.google.android.gms.permission.AD_ID"
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 109
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 110
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->activity:Landroid/app/Activity;

    .line 112
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 113
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    .line 114
    new-instance p1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 116
    sget-object p1, Lcom/google/appinventor/components/common/FloorAmount;->Optimized:Lcom/google/appinventor/components/common/FloorAmount;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 118
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Lcom/google/appinventor/components/runtime/util/KodularAdManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Z
    .locals 0

    .line 92
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->testMode:Z

    return p0
.end method


# virtual methods
.method public final EcpmFloor()Lcom/google/appinventor/components/common/FloorAmount;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    return-object v0
.end method

.method public final EcpmFloor(Lcom/google/appinventor/components/common/FloorAmount;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "optimized"
        editorType = "gam_ecpm_floor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a minimum eCPM floor below which advertisers cannot bid for inventory. Use Optimized to let Google decide an eCPM floor."
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    return-void
.end method

.method public final FailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be loaded."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToLoad"

    .line 153
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final FailedToShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be displayd to the user."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToShow"

    .line 158
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Load()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads an interstitial ad and prepares it for showing to the user."
    .end annotation

    .line 168
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    const-string v1, "k-ad-format"

    const-string v2, "interstitial"

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 170
    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FloorAmount;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-ecpm-floor"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 171
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-app-id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->testMode:Z

    if-eqz v1, :cond_0

    const-string v0, "Could not load ad: Expected test device but got other"

    .line 175
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->FailedToLoad(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_0
    new-instance v1, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)V

    .line 217
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 230
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    return-void
.end method

.method public final Loaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad was loaded successfully."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Loaded"

    .line 163
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Show()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays a previously loaded interstitial ad."
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    if-eqz v0, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->show(Landroid/app/Activity;)V

    return-void

    :cond_0
    const-string v0, "Could not show ad: No ad loaded!"

    .line 238
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->FailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public final TestMode(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->testMode:Z

    if-nez p1, :cond_1

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 129
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    .line 249
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->destroy()V

    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->testMode:Z

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method
