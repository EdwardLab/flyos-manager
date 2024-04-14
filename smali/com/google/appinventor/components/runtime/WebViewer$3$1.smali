.class final Lcom/google/appinventor/components/runtime/WebViewer$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer$3;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 684
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$802(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    .line 685
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$700(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/WebViewer;->access$500(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    const-string p1, "WebViewer"

    const-string p2, "Permission Granted"

    .line 686
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$802(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    .line 689
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->access$200(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$3$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer$3;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/WebViewer$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const-string v0, "UsesLocation"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
