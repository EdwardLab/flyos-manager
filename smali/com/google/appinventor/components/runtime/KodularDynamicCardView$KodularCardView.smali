.class public Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;
.super Lcom/google/android/material/card/MaterialCardView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularDynamicCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KodularCardView"
.end annotation


# instance fields
.field public fullClick:Z

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 407
    invoke-direct {p0, p2}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 404
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 410
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 411
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 404
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/KodularDynamicCardView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularDynamicCardView;

    .line 415
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 404
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 423
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/KodularDynamicCardView$KodularCardView;->fullClick:Z

    return p1
.end method
