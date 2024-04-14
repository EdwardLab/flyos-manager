.class final Lcom/google/appinventor/components/runtime/WebViewer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

.field private synthetic iFqIICCGPOaCxxw2TAQToJJREEePnMQFRmV22uKh7F7VFVqnHwoidjoYWWfsJOK:Ljava/lang/String;

.field private synthetic sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->iFqIICCGPOaCxxw2TAQToJJREEePnMQFRmV22uKh7F7VFVqnHwoidjoYWWfsJOK:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 642
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/WebViewer;->access$602(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z

    .line 643
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->access$700(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->iFqIICCGPOaCxxw2TAQToJJREEePnMQFRmV22uKh7F7VFVqnHwoidjoYWWfsJOK:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 645
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/WebViewer;->access$200(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$2;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:Ljava/lang/String;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
