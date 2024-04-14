.class final Lcom/google/appinventor/components/runtime/LeadBolt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/LeadBolt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LeadBolt;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onModuleCached(Ljava/lang/String;)V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBCached(Ljava/lang/String;)V

    return-void
.end method

.method public final onModuleClicked(Ljava/lang/String;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClicked(Ljava/lang/String;)V

    return-void
.end method

.method public final onModuleClosed(Ljava/lang/String;Z)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBClosed(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final onModuleLoaded(Ljava/lang/String;)V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    .line 158
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/LeadBolt;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LeadBolt;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Rewarded Video"

    goto :goto_0

    :cond_0
    const-string v0, "Interstitial"

    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LeadBolt;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Leadbolt"

    .line 156
    invoke-static {v2, v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LeadBolt$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LeadBolt;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/LeadBolt;->LBLoaded(Ljava/lang/String;)V

    return-void
.end method
