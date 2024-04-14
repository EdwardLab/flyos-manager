.class final Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;B)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;-><init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;)V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onDoubleClick()V

    .line 49
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    .line 63
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sub-float/2addr p2, p1

    .line 64
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    .line 65
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    cmpl-float p1, p2, v4

    if-lez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeRight()V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeLeft()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v5

    if-lez p1, :cond_3

    cmpl-float p1, v2, v4

    if-lez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeBottom()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onSwipeTop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnSwipeTouchListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onLongClick()V

    .line 55
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->onClick()V

    .line 43
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
