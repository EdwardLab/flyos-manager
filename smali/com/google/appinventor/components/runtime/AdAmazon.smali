.class public Lcom/google/appinventor/components/runtime/AdAmazon;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->ADVERTISING:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "AdAmazon component allows you to monetize your app. You must have a valid publisher id that can be obtained from https://developer.amazon.com. If your publisher id is invalid, the AdAmazon banner will not display on the emulator or the device."
    helpUrl = "https://docs.kodular.io/components/monetization/amazon-banner/"
    iconName = "images/amazon.png"
    version = 0x1
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
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_FINE_LOCATION",
        "android.permission.ACCESS_COARSE_LOCATION",
        "android.permission.ACCESS_WIFI_STATE"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 65
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    const-string v1, "AdAmazon"

    .line 49
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string v1, "AmazonPublisherId"

    .line 52
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/String;

    .line 55
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->androidUIHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 69
    new-instance v1, Lcom/amazon/device/ads/AdLayout;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/AdSize;->SIZE_320x50:Lcom/amazon/device/ads/AdSize;

    invoke-direct {v1, v2, v3}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    .line 70
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 77
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {p1, p0}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 79
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazon;->TestMode(Z)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;Z)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 135
    :try_start_0
    new-instance p1, Lcom/amazon/device/ads/AdTargetingOptions;

    invoke-direct {p1}, Lcom/amazon/device/ads/AdTargetingOptions;-><init>()V

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdLayout;->loadAd(Lcom/amazon/device/ads/AdTargetingOptions;)Z
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdAmazon"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "RefreshAd"

    invoke-virtual {v0, p0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    const-string p1, "PERMISSION_ERROR"

    const-string v0, "Permission \"android.permission.ACCESS_FINE_LOCATION\" was denied but needed."

    .line 139
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazon;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    return p1
.end method


# virtual methods
.method public AdDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was dismissed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdDismissed"

    .line 240
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdExpanded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was expanded."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdExpanded"

    .line 245
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the try to load a ad was not successful."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "AdFailedToLoad"

    .line 250
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AdLoaded()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a ad was loaded."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AdLoaded"

    .line 255
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Height()I
    .locals 1

    .line 260
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public PublisherId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/String;

    return-object v0
.end method

.method public PublisherId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "AmazonPublisherId"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Amazon Ad Publisher Id and refreshes the ad."
    .end annotation

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 92
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->setAppKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AdAmazon;->RefreshAd(Z)V

    return-void
.end method

.method public RefreshAd(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Refreshes the ad."
    .end annotation

    .line 103
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Z

    .line 104
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->havePermission:Z

    if-nez v0, :cond_0

    .line 106
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->androidUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/appinventor/components/runtime/AdAmazon$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/AdAmazon$1;-><init>(Lcom/google/appinventor/components/runtime/AdAmazon;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Z)V

    return-void
.end method

.method public TestMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 165
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    .line 169
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    .line 171
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableTesting(Z)V

    return-void
.end method

.method public TestMode()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Z

    return v0
.end method

.method public Width()I
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public Width(I)V
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    return-object v0
.end method

.method public onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 200
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string v0, "Ad collapsed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    return-void
.end method

.method public onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 206
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string v0, "Ad Dismissed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdDismissed()V

    return-void
.end method

.method public onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    const-string v0, "Ad expanded."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdExpanded()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ad failed to load. Code: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", Message: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AmazonInterstitialAds"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "Amazon"

    const-string v1, "Banner"

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 234
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties;->getAdType()Lcom/amazon/device/ads/AdProperties$AdType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties$AdType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ad loaded successfully."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/AdAmazon;->AdLoaded()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazon;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/amazon/device/ads/AdLayout;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdLayout;->destroy()V

    :cond_0
    return-void
.end method
