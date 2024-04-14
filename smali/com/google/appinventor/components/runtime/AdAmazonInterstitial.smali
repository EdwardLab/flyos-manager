.class public Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An interstitial ad is a full-page ad. AdAmazonInterstitial component allows you to monetize your app. You must have a valid Amazon Application Key. If your application key is invalid, the ad will not display on the emulator or the device. Warning: Make sure you\'re in test mode during development to avoid being disabled for clicking your own ads. "
    helpUrl = "https://docs.kodular.io/components/monetization/amazon-interstitial/"
    iconName = "images/amazon.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "amazon-ads.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;
    }
.end annotation


# instance fields
.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/InterstitialAd;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Z

.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/String;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Z

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Z

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->androidUIHandler:Landroid/os/Handler;

    .line 58
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->havePermission:Z

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 74
    new-instance v0, Lcom/amazon/device/ads/InterstitialAd;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/InterstitialAd;

    .line 75
    new-instance p1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;-><init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/InterstitialAd;->setListener(Lcom/amazon/device/ads/AdListener;)V

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()V
    .locals 3

    .line 201
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Z

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    .line 210
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    if-lez v0, :cond_1

    goto :goto_0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd()Z

    return-void

    .line 211
    :cond_2
    :goto_0
    new-instance v0, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {v0}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 213
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

    if-eqz v1, :cond_3

    .line 214
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->enableGeoLocation(Z)Lcom/amazon/device/ads/AdTargetingOptions;

    .line 217
    :cond_3
    iget v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    if-lez v1, :cond_4

    .line 218
    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdTargetingOptions;->setAge(I)Lcom/amazon/device/ads/AdTargetingOptions;

    .line 221
    :cond_4
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/InterstitialAd;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception thrown: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdAmazonInterstitial"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception v0

    .line 228
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "LoadAd"

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    const-string v0, "PERMISSION_ERROR"

    const-string v1, "Permission \"android.permission.ACCESS_FINE_LOCATION\" was denied but needed."

    .line 229
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AdClosed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered when the close button of the interstitial ad is clicked. It\'s important to remember only one interstitial ad can be shown at a time. The previous ad has to be dismissed before a new ad can be shown."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdClosed"

    .line 106
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdCollapsed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "After a user clicks on the close ad button on an expanded ad, this callback is called immediately after collapsing the ad. This callback can be used to do things like resume your app or restart audio."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdCollapsed"

    .line 82
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This callback is called each time an ad is successfully loaded. You can use this to log metrics on ad views and assist with initial integration. Detailed information about the ad that loaded can be obtained from the AdProperties object."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdExpanded"

    .line 87
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Whenever an ad fails to be retrieved, the event is called, returning the error message."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdFailedToLoad"

    .line 94
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when an an attempt was made to display the ad, but the ad was not ready to display"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AdFailedToShow"

    .line 99
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered each time an ad is successfully loaded. But you don\'t have to display the ad right after it\'s loaded. For example, set a flag to true and then at a transition point, if flag=true, then display the ad."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 112
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ApplicationKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/String;

    return-object v0
.end method

.method public ApplicationKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ApplicationKey"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enter Application Key. Go to Amazon Developer Portal and sign-in for your ApplicationKey"
        userVisible = false
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:Ljava/lang/String;

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

.method public EnableDebug(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .line 141
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Z

    return-void
.end method

.method public EnableDebug()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 146
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Z

    return v0
.end method

.method public EnableGeoLocationTargeting(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, uses latitude and longitude coordinates as part of an ad request"
        userVisible = true
    .end annotation

    .line 163
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

    return-void
.end method

.method public EnableGeoLocationTargeting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 168
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

    return v0
.end method

.method public EnableTesting(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "For debugging / development purposes flag all ad requests as tests, but set to false for production builds"
        userVisible = true
    .end annotation

    .line 152
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Z

    return-void
.end method

.method public EnableTesting()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Z

    return v0
.end method

.method public LoadAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads a new ad."
    .end annotation

    .line 237
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->havePermission:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Z

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$1;-><init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()V

    return-void
.end method

.method public ShowInterstitialAd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It will show the Interstitial Ad"
    .end annotation

    .line 265
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Z

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/InterstitialAd;

    invoke-virtual {v0}, Lcom/amazon/device/ads/InterstitialAd;->showAd()Z

    return-void

    :cond_0
    const-string v0, "Interstitial ad was not ready to be shown. Make sure you have set ad AppKey and you invoke this after LoadAd"

    const-string v1, "AdAmazonInterstitial"

    .line 271
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method

.method public TargetAge()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    return v0
.end method

.method public TargetAge(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can pass age information to the Amazon Mobile Ad Network to target specific age groups. If set as 0, Age Targetting will not be used"
    .end annotation

    .line 190
    iput p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:I

    return-void
.end method
