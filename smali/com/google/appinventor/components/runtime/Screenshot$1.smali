.class final Lcom/google/appinventor/components/runtime/Screenshot$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Screenshot;->TakeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Screenshot;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Screenshot;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Screenshot$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Screenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 105
    new-instance p1, Lcom/google/appinventor/components/runtime/Screenshot$a;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Screenshot$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Screenshot;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/google/appinventor/components/runtime/Screenshot$a;-><init>(Lcom/google/appinventor/components/runtime/Screenshot;B)V

    const-string p2, ""

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/Screenshot$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Screenshot$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Screenshot;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/Screenshot;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Screenshot$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Screenshot;

    const-string v1, "TakeScreenshot"

    invoke-virtual {p2, v0, v1, p1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
