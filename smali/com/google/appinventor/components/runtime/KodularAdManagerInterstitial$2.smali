.class final Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 221
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 222
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    .line 223
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;)Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;->getAdUnit()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "/6499/example/interstitial"

    :goto_1
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;

    .line 222
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/admanager/AdManagerInterstitialAdLoadCallback;)V

    return-void

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/KodularAdManagerInterstitial;->FailedToLoad(Ljava/lang/String;)V

    return-void
.end method
