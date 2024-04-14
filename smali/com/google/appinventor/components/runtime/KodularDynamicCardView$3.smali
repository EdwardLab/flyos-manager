.class final Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 443
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    iput p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 447
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->TouchDown(I)V

    goto :goto_0

    .line 449
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 450
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    iget p2, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$3;->jKqYCd0kbp4PLjuOSuX9UMjydG4JrQByekpZGS3DgrCgeBLPmjJ5QsHwhJoPxxWm:I

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularDynamicCardView;->TouchUp(I)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
