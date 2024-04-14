.class final Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->AddListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidBottomSheet;->Closed()V

    return-void
.end method
