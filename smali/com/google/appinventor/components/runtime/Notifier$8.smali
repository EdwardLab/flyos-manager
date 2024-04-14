.class final Lcom/google/appinventor/components/runtime/Notifier$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Notifier;->radioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

.field private synthetic jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Notifier;I)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 656
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Notifier;

    iget p2, p0, Lcom/google/appinventor/components/runtime/Notifier$8;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Notifier;->access$600(Lcom/google/appinventor/components/runtime/Notifier;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/google/appinventor/components/runtime/Notifier;->RadioSelection(II)V

    return-void
.end method
