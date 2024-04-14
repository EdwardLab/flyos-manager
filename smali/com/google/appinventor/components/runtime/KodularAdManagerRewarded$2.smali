.class final Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/KodularContentProtection$OnValidationResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ZZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 183
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 184
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    .line 185
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/util/KodularAdManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/KodularAdManager;->getAdUnit()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "/6499/example/rewarded"

    :goto_1
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;

    .line 184
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/admanager/AdManagerAdRequest;Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;)V

    return-void

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->FailedToLoad(Ljava/lang/String;)V

    return-void
.end method
