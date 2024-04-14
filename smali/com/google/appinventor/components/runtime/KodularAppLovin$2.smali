.class final Lcom/google/appinventor/components/runtime/KodularAppLovin$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularAppLovin;->ShowAd()V
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

    .line 110
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    .line 113
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularAppLovin$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularAppLovin;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularAppLovin;->AdOpened()V

    const-string p1, "AppLovin"

    const-string v0, "AppLovin: ad opened"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
