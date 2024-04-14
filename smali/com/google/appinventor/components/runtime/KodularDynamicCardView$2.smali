.class final Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

.field private synthetic jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;I)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    iput p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 438
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$2;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->LongClick(I)V

    const/4 p1, 0x1

    return p1
.end method
