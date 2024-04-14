.class public Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "add description in OdeMessage "
    iconName = "images/kodularRewarded.png"
    nonVisible = true
    version = 0x3
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
        "play-services-ads.jar",
        "play-services-ads.aar",
        "browser.jar",
        "browser.aar",
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

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 106
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 107
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 108
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    .line 109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    .line 110
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 111
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    .line 112
    new-instance p1, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 114
    sget-object p1, Lcom/google/appinventor/components/common/FloorAmount;->Optimized:Lcom/google/appinventor/components/common/FloorAmount;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 117
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Landroid/content/Context;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/util/KodularAdManager;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->testMode:Z

    return p0
.end method


# virtual methods
.method public EcpmFloor()Lcom/google/appinventor/components/common/FloorAmount;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    return-object v0
.end method

.method public EcpmFloor(Lcom/google/appinventor/components/common/FloorAmount;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "optimized"
        editorType = "gam_ecpm_floor"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a minimum eCPM floor below which advertisers cannot bid for inventory. Use Optimized to let Google decide an eCPM floor."
    .end annotation

    .line 142
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    return-void
.end method

.method public FailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be loaded."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToLoad"

    .line 215
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public FailedToShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be displayd to the user."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToShow"

    .line 220
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Load()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a rewarded ad and prepares it for showing to the user."
    .end annotation

    .line 151
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    const-string v1, "k-ad-format"

    const-string v2, "rewarded"

    .line 152
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 153
    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FloorAmount;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-ecpm-floor"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 154
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-app-id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    .line 157
    new-instance v1, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)V

    .line 179
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v3, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

    return-void
.end method

.method public Loaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad was loaded successfully."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Loaded"

    .line 225
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReadyToReward()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when the user has watched the ad and is now ready to receive a reward."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ReadyToReward"

    .line 230
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Show()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays a previously loaded interstitial ad."
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAd;

    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$3;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$3;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->show(Landroid/app/Activity;Lcom/google/android/gms/ads/OnUserEarnedRewardListener;)V

    return-void

    :cond_0
    const-string v0, "KodularAdManagerRewarded"

    const-string v1, "The rewarded ad wasn\'t ready yet"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Could not show ad: No ad loaded!"

    .line 209
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->FailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 124
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->testMode:Z

    if-nez p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 131
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 133
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 240
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->destroy()V

    return-void
.end method

.method public onInitialize()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->testMode:Z

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method
