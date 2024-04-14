.class final Lcom/google/appinventor/components/runtime/FingerPrint$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FingerPrint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FingerPrint;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 407
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FingerPrint$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FingerPrint;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/FingerPrint;->CancelScan()V

    return-void
.end method
