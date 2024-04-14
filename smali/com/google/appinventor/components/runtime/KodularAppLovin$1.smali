.class final Lcom/google/appinventor/components/runtime/KodularAppLovin$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAppLovin;->LoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularAppLovin;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const-string v1, "AppLovin"

    const-string v2, "Interstitial"

    invoke-static {v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 90
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularAppLovin;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    .line 91
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdLoaded()V

    const-string p1, "AppLovin: ad loaded"

    .line 92
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final failedToReceiveAd(I)V
    .locals 2

    .line 97
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->Error(ILjava/lang/String;)V

    .line 99
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLovin: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppLovin"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
