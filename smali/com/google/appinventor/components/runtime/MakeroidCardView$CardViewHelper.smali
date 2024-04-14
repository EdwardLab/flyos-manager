.class public Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;
.super Lcom/google/android/material/card/MaterialCardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardViewHelper"
.end annotation


# instance fields
.field public fullClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 441
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 449
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCardView$CardViewHelper;->fullClick:Z

    return p1
.end method
