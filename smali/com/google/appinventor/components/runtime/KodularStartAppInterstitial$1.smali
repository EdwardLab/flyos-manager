.class final Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/startapp/sdk/adsbase/adlisteners/AdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->LoadAd()V
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

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailedToReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/startapp/sdk/adsbase/Ad;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->OnFailedToReceiveAd(Ljava/lang/String;)V

    return-void
.end method

.method public final onReceiveAd(Lcom/startapp/sdk/adsbase/Ad;)V
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v0, "StartApp"

    const-string v1, "Interstitial"

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;Z)Z

    .line 131
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularStartAppInterstitial;->OnReceiveAd()V

    return-void
.end method
