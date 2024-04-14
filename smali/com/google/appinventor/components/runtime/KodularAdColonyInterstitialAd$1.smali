.class final Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdExpiring()V

    const-string p1, "AdColony Interstitial Ad"

    const-string v0, "AdColony Interstitial: Interstitial ad is expiring"

    .line 133
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdOpened()V

    const-string p1, "AdColony Interstitial Ad"

    const-string v0, "AdColony Interstitial: Interstitial ad opened"

    .line 126
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "AdColony"

    const-string v2, "Interstitial"

    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 113
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->AdLoaded()V

    const-string p1, "AdColony Interstitial Ad"

    const-string v0, "AdColony Interstitial: Interstitial ad loaded"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 1

    .line 119
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;

    const-string v0, "Request not filled."

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularAdColonyInterstitialAd;->Error(Ljava/lang/String;)V

    const-string p1, "AdColony Interstitial Ad"

    const-string v0, "AdColony Interstitial: Interstitial ad failed to load: request not filled"

    .line 120
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
