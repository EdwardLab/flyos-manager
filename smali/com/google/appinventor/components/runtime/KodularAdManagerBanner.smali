.class public final Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A visible component that displays banner ads from multiple advertisers and mediation partners"
    iconName = "images/kodularBanner.png"
    nonVisible = false
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
        "play-services-appset.jar",
        "play-services-appset.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-measurement-sdk-api.jar",
        "play-services-measurement-sdk-api.aar",
        "play-services-measurement-base.jar",
        "play-services-measurement-base.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar",
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
.field private Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

.field private activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

.field private linearLayout:Landroid/widget/LinearLayout;

.field private testMode:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 107
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 109
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    .line 110
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    .line 111
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 112
    new-instance v1, Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;-><init>(Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    .line 113
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    .line 115
    sget-object v0, Lcom/google/appinventor/components/common/FloorAmount;->Optimized:Lcom/google/appinventor/components/common/FloorAmount;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 1253
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    .line 1254
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/ads/AdSize;

    .line 1260
    sget-object v5, Lcom/google/android/gms/ads/AdSize;->SMART_BANNER:Lcom/google/android/gms/ads/AdSize;

    aput-object v5, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdSizes([Lcom/google/android/gms/ads/AdSize;)V

    .line 1261
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 1262
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1263
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 1294
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 122
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/android/gms/ads/admanager/AdManagerAdView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    return p0
.end method


# virtual methods
.method public final EcpmFloor()Lcom/google/appinventor/components/common/FloorAmount;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

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

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    return-void
.end method

.method public final FailedToLoad(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when an ad could not be loaded"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "FailedToLoad"

    .line 191
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Height()I
    .locals 1

    .line 228
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public final Load()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a banner ad and displays it"
    .end annotation

    .line 156
    new-instance v0, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;-><init>()V

    const-string v1, "k-ad-format"

    const-string v2, "banner"

    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/common/FloorAmount;

    .line 158
    invoke-virtual {v1}, Lcom/google/appinventor/components/common/FloorAmount;->toUnderlyingValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-ecpm-floor"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 159
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "k-app-id"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->addCustomTargeting(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest$Builder;->build()Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;->isTestDevice(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    if-eqz v1, :cond_0

    const-string v0, "Could not load ad: Expected test device but got other"

    .line 162
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->FailedToLoad(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    if-nez v1, :cond_3

    .line 166
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;->getAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    goto :goto_1

    .line 167
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    const-string v2, "/6499/example/banner"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->setAdUnitId(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    .line 171
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->Kv1J8U7LN9Ew5Fg3SGq5PZTyUq5afJMc801ng97H4mT8uP4jFrbS1BuSDErmLQPa:Z

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    new-instance v2, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->setOnValidationResultListener(Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;)V

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->startContentValidation(Ljava/lang/String;)V

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

    .line 129
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    if-nez p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 132
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KodularAdsUtil;->guessSelfDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 136
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getRequestConfiguration()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration;->toBuilder()Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    move-result-object v1

    .line 137
    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->setTestDeviceIds(Ljava/util/List;)Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    .line 138
    invoke-virtual {v1}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setRequestConfiguration(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 139
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method

.method public final Width()I
    .locals 1

    .line 238
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final Width(I)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->linearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->destroy()V

    .line 223
    :cond_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->destroy()V

    return-void
.end method

.method public final onInitialize()V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->context:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->testMode:Z

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager$Consent;->request(Landroid/app/Activity;Landroid/content/Context;Z)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->pause()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerAdView;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->resume()V

    :cond_0
    return-void
.end method
