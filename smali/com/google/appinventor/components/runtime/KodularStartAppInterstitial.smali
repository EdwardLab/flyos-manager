.class public final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The component for showing Interstial Ads from StartApp"
    iconName = "images/startAppInterstitial.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|screenSize|screenLayout|keyboardHidden"
            name = "com.startapp.sdk.adsbase.consent.ConsentActivity"
            theme = "@android:style/Theme.Translucent"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            name = "com.startapp.sdk.ads.list3d.List3DActivity"
            theme = "@android:style/Theme"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "orientation|screenSize|screenLayout|keyboardHidden"
            name = "com.startapp.sdk.ads.interstitials.OverlayActivity"
            theme = "@android:style/Theme.Translucent"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesBroadcastReceivers;
    receivers = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ReceiverElement;
            exported = "true"
            intentFilters = {
                .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/IntentFilterElement;
                    actionElements = {
                        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActionElement;
                            name = "android.intent.action.BOOT_COMPLETED"
                        .end subannotation
                    }
                .end subannotation
            }
            name = "com.startapp.sdk.adsbase.remoteconfig.BootCompleteListener"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesContentProviders;
    providers = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ProviderElement;
            authorities = "%packageName%.startappinitprovider"
            exported = "false"
            name = "com.startapp.sdk.adsbase.StartAppInitProvider"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "startapp-ads.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.RECEIVE_BOOT_COMPLETED",
        "com.google.android.finsky.permission.BIND_GET_INSTALL_REFERRER_SERVICE",
        "com.google.android.gms.permission.AD_ID"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesServices;
    services = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
            name = "com.startapp.sdk.cachedservice.BackgroundService"
        .end subannotation,
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ServiceElement;
            name = "com.startapp.sdk.jobs.SchedulerService"
            permission = "android.permission.BIND_JOB_SERVICE"
        .end subannotation
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

.field private startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 114
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 116
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    .line 121
    new-instance p1, Lcom/startapp/sdk/adsbase/StartAppAd;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/startapp/sdk/adsbase/StartAppAd;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    return p1
.end method


# virtual methods
.method public final AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user has clicked on the interstial ad"
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 165
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AdDisplayed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an Ad is shown to the user."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDisplayed"

    .line 170
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AdFailedToLoad(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 180
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

.method public final AdFailedToShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToShow"

    .line 160
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AdHidden()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that an Ad which was shown to the user is now hidden."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdHidden"

    .line 175
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    return-void
.end method

.method public final LoadAd()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new StartApp Interstitial ad."
    .end annotation

    .line 1189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "204085028"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->appId:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1190
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 1191
    invoke-static {v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->enableReturnAds(Z)V

    .line 1192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "pas"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->loadAd(Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;)V

    return-void
.end method

.method public final OnFailedToReceiveAd(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnFailedToReceiveAd"

    .line 150
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnReceiveAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed to load. The message will display the error code and error message."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnReceiveAd"

    .line 156
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    if-nez v0, :cond_0

    const-string v0, "An Ad should be loaded initially before it can be displayed."

    .line 201
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->jfz4esSp2gG8GcabwIhRTwYj9V6OBMxneQTmg596S0YedndAxvJdoaPHqPTMCjiO:Z

    .line 205
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;-><init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/startapp/sdk/adsbase/StartAppAd;->showAd(Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;)Z

    return-void
.end method
