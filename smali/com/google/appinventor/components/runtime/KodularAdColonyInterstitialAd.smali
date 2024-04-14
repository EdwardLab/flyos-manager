.class public Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/util/OnInitializeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "...in ode messages file"
    helpUrl = "https://docs.kodular.io/components/monetization/adcolony-interstitial/"
    iconName = "images/adcolony.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesActivities;
    activities = {
        .subannotation Lcom/google/appinventor/components/annotations/androidmanifest/ActivityElement;
            configChanges = "keyboardHidden|orientation|screenSize"
            hardwareAccelerated = "true"
            name = "com.adcolony.sdk.AdColonyAdViewActivity"
        .end subannotation
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "AdColony.jar",
        "play-services-ads-identifier.jar",
        "play-services-ads-identifier.aar",
        "play-services-basement.jar",
        "play-services-basement.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.VIBRATE",
        "com.google.android.gms.permission.AD_ID"
    }
.end annotation


# instance fields
.field private ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 85
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->appId:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 82
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 87
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->context:Landroid/content/Context;

    .line 88
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 90
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 91
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnInitialize(Lcom/google/appinventor/components/runtime/util/OnInitializeListener;)V

    .line 92
    new-instance p1, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {p1}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    const-string p1, "AdColony Interstitial Ad"

    const-string v0, "Kodular AdColony Interstitial Ad created"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method


# virtual methods
.method public AdExpiring()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the ad is expiring. You should load a new ad."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdExpiring"

    .line 187
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

    .line 202
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

    .line 192
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

    .line 197
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AppID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public AppID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 166
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->appId:Ljava/lang/String;

    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request failed. The message will display the reason for why the ad failed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Error"

    .line 182
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsEuropeanUser()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the current app user is located in europe. If true you must ask the user as example in a dialog if he give his consent for personalized ads."
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    return-void
.end method

.method public ShowAd()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an ad to the user."
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdExpiring()V

    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    return-void
.end method

.method public UserConsent(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the user allowed the ad network to show personalized ads. You only need to request the consent from european users."
    .end annotation

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    .line 208
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    const-string v1, "GDPR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyFrameworkRequired(Ljava/lang/String;Z)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v1, p1}, Lcom/adcolony/sdk/AdColonyAppOptions;->setPrivacyConsentString(Ljava/lang/String;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 210
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-static {p1}, Lcom/adcolony/sdk/AdColony;->setAppOptions(Lcom/adcolony/sdk/AdColonyAppOptions;)Z

    return-void
.end method

.method public UserConsent()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 215
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->bM4TidozxzoY9OaFqMiIYPyvnCah6tSdq3o2XMkQik5CKYcFIbxeqf36lqbvGbmH:Z

    return v0
.end method

.method public ZoneID()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    return-object v0
.end method

.method public ZoneID(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ATk09PTFIUWb1DqQXgMu0NmsbfZK89sTID9U9fCgIZdoNsjPWnKT9boGyGQNlMd:Ljava/lang/String;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->destroy()Z

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitial;

    :cond_0
    return-void
.end method

.method public onInitialize()V
    .locals 6

    .line 99
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AppID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ZoneID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AppID()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ZoneID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 105
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->ZoneID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    goto :goto_1

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyAppOptions;

    const-string v2, "vzc8fd72c1e5494edca6"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "appb235d39ba30f401783"

    invoke-static {v0, v1, v4, v3}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 102
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->f9MsIiC6MxciaFVJmtpdDaPCPu1tdZDTYoHbgfSwKXBhLXF2LgZTKbRmVlZ1kb0Z:Ljava/lang/String;

    .line 108
    :goto_1
    new-instance v0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;-><init>(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-void
.end method
