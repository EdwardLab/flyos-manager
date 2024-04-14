.class final Lcom/google/appinventor/components/runtime/BarcodeScanner$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/BarcodeScanner;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/BarcodeScanner;)Z

    .line 116
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/BarcodeScanner;->DoScan()V

    return-void

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/BarcodeScanner;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/BarcodeScanner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/BarcodeScanner;

    const-string v0, "DoScan"

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
