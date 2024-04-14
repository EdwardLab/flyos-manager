.class final Lcom/google/appinventor/components/runtime/WebViewer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/WebViewer;->EvaluateJS(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 0

    .line 944
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .line 944
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1948
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/WebViewer;->AfterJSEvaluated(Ljava/lang/String;)V

    return-void

    .line 1950
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/WebViewer$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/WebViewer;

    const-string v0, "null"

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/WebViewer;->AfterJSEvaluated(Ljava/lang/String;)V

    return-void
.end method
