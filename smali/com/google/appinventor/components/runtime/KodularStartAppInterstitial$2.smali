.class final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->ShowInterstitialAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adClicked(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    const-string p1, "StartApp Interstitial"

    const-string v0, "Ad clicked"

    .line 232
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdClicked()V

    return-void
.end method

.method public final adDisplayed(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    const-string p1, "StartApp Interstitial"

    const-string v0, "Ad displayed"

    .line 222
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdDisplayed()V

    return-void
.end method

.method public final adHidden(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 1

    const-string p1, "StartApp Interstitial"

    const-string v0, "StartApp Ad hidden"

    .line 212
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdHidden()V

    return-void
.end method

.method public final adNotDisplayed(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 2

    const-string v0, "StartApp Interstitial"

    const-string v1, "Ad not displayed"

    .line 242
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->AdFailedToShow(Ljava/lang/String;)V

    return-void
.end method
