.class public final Lcom/google/appinventor/components/runtime/KodularStartAppBanner;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/ads/banner/BannerListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for displaying banner ads from StartApp"
    iconName = "images/kodularStartAppBanner.png"
    nonVisible = false
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


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "StartApp Banner"


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private bannerView:Lcom/startapp/sdk/ads/banner/Banner;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private isAddedToContainer:Z

.field private isInitialized:Z

.field mainLayout:Landroid/widget/LinearLayout;

.field private startAppAd:Lcom/startapp/sdk/adsbase/StartAppAd;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 122
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isInitialized:Z

    .line 114
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    .line 123
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 124
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 125
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->activity:Landroid/app/Activity;

    .line 128
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 129
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 132
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private initStartAppSdk()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "204085028"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->init(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Initializing Startapp SDK wit APP ID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StartApp Banner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {}, Lcom/startapp/sdk/adsbase/StartAppAd;->disableSplash()V

    .line 210
    invoke-static {v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->enableReturnAds(Z)V

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v1, "pas"

    invoke-static {v0, v1, v3, v4, v2}, Lcom/startapp/sdk/adsbase/StartAppSDK;->setUserConsent(Landroid/content/Context;Ljava/lang/String;JZ)V

    return-void
.end method

.method private littleBannerHelper(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 140
    :cond_0
    new-instance p1, Lcom/startapp/sdk/ads/banner/Banner;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/startapp/sdk/ads/banner/Banner;-><init>(Landroid/app/Activity;Lcom/startapp/sdk/ads/banner/BannerListener;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final AdClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the user has clicked on the banner ad."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClicked"

    .line 192
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

    .line 197
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

.method public final AppId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->appId:Ljava/lang/String;

    return-void
.end method

.method public final Height()I
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public final LoadAd()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load a new StartApp Banner ad."
    .end annotation

    .line 167
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->littleBannerHelper(Z)V

    .line 169
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->isAddedToContainer:Z

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->littleBannerHelper(Z)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "StartApp"

    const-string v2, "Banner"

    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 175
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->initStartAppSdk()V

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/startapp/sdk/ads/banner/Banner;->loadAd(II)V

    const-string v0, "StartApp Banner"

    const-string v1, "Loading banner ad"

    .line 177
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 182
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final OnReceiveAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an ad request succeeds."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnReceiveAd"

    .line 187
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Visible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->bannerView:Lcom/startapp/sdk/ads/banner/Banner;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/Banner;->showBanner()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/startapp/sdk/ads/banner/Banner;->hideBanner()V

    .line 156
    :goto_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Visible(Z)V

    :cond_1
    return-void
.end method

.method public final Width()I
    .locals 1

    .line 227
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final Width(I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 265
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->AdClicked()V

    return-void
.end method

.method public final onFailedToReceiveAd(Landroid/view/View;)V
    .locals 0

    const-string p1, "Cannot load banner ad"

    .line 255
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->OnFailedToReceiveAd(Ljava/lang/String;)V

    return-void
.end method

.method public final onImpression(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final onReceiveAd(Landroid/view/View;)V
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularStartAppBanner;->OnReceiveAd()V

    return-void
.end method
