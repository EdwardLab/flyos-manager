.class final Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;
.super Lcom/google/android/gms/ads/AdListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdClicked()V
    .locals 0

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    return-void
.end method

.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->FailedToLoad(Ljava/lang/String;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load with message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KodularAdManagerBanner"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onAdLoaded()V
    .locals 3

    const-string v0, "KodularAdManagerBanner"

    const-string v1, "Loaded ad successfully"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;

    .line 273
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerBanner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "Ad Manager"

    const-string v2, "Banner"

    .line 270
    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    :cond_0
    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    return-void
.end method
