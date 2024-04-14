.class public Lcom/google/appinventor/components/runtime/LeadBolt;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "LeadBolt is a non-visible component allowing you to show Network and Rewarded ads."
    helpUrl = "https://docs.kodular.io/components/monetization/leadbolt/"
    iconName = "images/leadbolt.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AppTracker.jar",
        "AdMobAppTracker.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE"
    }
.end annotation


# instance fields
.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

.field private op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 60
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    .line 153
    new-instance v0, Lcom/google/appinventor/components/runtime/LeadBolt$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/LeadBolt$1;-><init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    .line 61
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LeadBolt;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    return p0
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V
    .locals 3

    .line 66
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    if-eqz v0, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->setModuleListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/apptracker/android/track/AppTracker;->startSession(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    const-string v0, "NetworkAd"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadNetworkAd()V

    return-void

    :cond_1
    const-string v0, "RewardedAd"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/LeadBolt;->LoadRewardedAd()V

    :cond_2
    return-void
.end method


# virtual methods
.method public APIKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

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

.method public CommissionRewardedAdsNetwork(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "unity"
        editorType = "commission_rewarded_ads_network"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad network used to take the commission."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public IsNetworkAdReady()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    const-string v0, "inapp"

    .line 145
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public IsRewardedAdReady()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after loading an ad to check whether it\'s ready to show."
    .end annotation

    const-string v0, "reward"

    .line 150
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public LBCached(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are loaded"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LBCached"

    .line 207
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LBClicked(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are clicked"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LBClicked"

    .line 202
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LBClosed(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are closed"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 197
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "LBClosed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are failed to load"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 192
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "LBFailed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LBLoaded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when ads are shown"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LBLoaded"

    .line 187
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public LoadNetworkAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Network ad."
    .end annotation

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    const-string v1, "NetworkAd"

    .line 102
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/LeadBolt;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V

    const-string v1, "inapp"

    .line 103
    invoke-static {v1}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    const-string v0, "LeadBolt"

    const-string v1, "No ads ready"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public LoadRewardedAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to load a Rewarded Video ad."
    .end annotation

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->uylNXPbffZHriucQ1SAwUkLE9dP8WxwaWe5GnEXLipwyDpy1sV8NkWFXe3foYSTl:Z

    const-string v0, "RewardedAd"

    .line 124
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/LeadBolt;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;)V

    const-string v0, "reward"

    .line 125
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/apptracker/android/track/AppTracker;->loadModuleToCache(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    const-string v0, "LeadBolt"

    const-string v1, "No ads ready"

    .line 129
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ShowNetworkAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadNetworkAd to show the loaded ad."
    .end annotation

    const-string v0, "inapp"

    .line 113
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    const-string v0, "LeadBolt"

    const-string v1, "No ads ready"

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ShowRewardedAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block after LoadRewardedAd to show the loaded ad."
    .end annotation

    const-string v0, "reward"

    .line 135
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isAdReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/apptracker/android/track/AppTracker;->loadModule(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt;->op7m9tjL9FfXtQ4MVagpcEhDmFIa6xyIVDUYWgTs5INAROZGTkftwWcRnCCOYoFx:Z

    const-string v0, "LeadBolt"

    const-string v1, "No ads ready"

    .line 139
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
