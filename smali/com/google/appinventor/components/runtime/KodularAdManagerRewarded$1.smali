.class final Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;
.super Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->Load()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-direct {p0}, Lcom/google/android/gms/ads/rewarded/RewardedAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to load with message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KodularAdManagerRewarded"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->FailedToLoad(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 2

    .line 157
    check-cast p1, Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 1167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;Lcom/google/android/gms/ads/rewarded/RewardedAd;)Lcom/google/android/gms/ads/rewarded/RewardedAd;

    .line 1168
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->Loaded()V

    .line 1169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1170
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;

    .line 1173
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdManagerRewarded;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    const-string v0, "Ad Manager"

    const-string v1, "Rewarded Video"

    .line 1170
    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    :cond_0
    return-void
.end method
