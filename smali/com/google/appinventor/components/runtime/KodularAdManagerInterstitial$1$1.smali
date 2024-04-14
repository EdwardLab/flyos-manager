.class final Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdDismissedFullScreenContent()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-void
.end method

.method public final onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->FailedToShow(Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;)Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;

    return-void
.end method

.method public final onAdShowedFullScreenContent()V
    .locals 0

    return-void
.end method
