.class final Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;
.super Lcom/amazon/device/ads/DefaultAdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-direct {p0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdCollapsed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    const-string p1, "AdAmazonInterstitial"

    const-string v0, "Ad collapsed."

    .line 284
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdCollapsed()V

    return-void
.end method

.method public final onAdDismissed(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    const-string p1, "AdAmazonInterstitial"

    const-string v0, "Ad onAdDismissed finished"

    .line 309
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdClosed()V

    return-void
.end method

.method public final onAdExpanded(Lcom/amazon/device/ads/Ad;)V
    .locals 1

    const-string p1, "AdAmazonInterstitial"

    const-string v0, "Ad expanded."

    .line 289
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdExpanded()V

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 294
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

    const-string v0, "AdAmazonInterstitial"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    .line 297
    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError;->getCode()Lcom/amazon/device/ads/AdError$ErrorCode;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdFailedToLoad(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onAdLoaded(Lcom/amazon/device/ads/Ad;Lcom/amazon/device/ads/AdProperties;)V
    .locals 2

    .line 302
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const-string v0, "Amazon"

    const-string v1, "Interstitial"

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties;->getAdType()Lcom/amazon/device/ads/AdProperties$AdType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/device/ads/AdProperties$AdType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ad loaded successfully."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdAmazonInterstitial"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;Z)Z

    .line 305
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AdAmazonInterstitial;->AdLoaded()V

    return-void
.end method
