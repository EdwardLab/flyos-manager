.class public Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OnSwipeTouchListener"

    .line 19
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->LOG_TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener$a;-><init>(Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;B)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDoubleClick()V
    .locals 0

    return-void
.end method

.method public onLongClick()V
    .locals 0

    return-void
.end method

.method public onSwipeBottom()V
    .locals 0

    return-void
.end method

.method public onSwipeLeft()V
    .locals 0

    return-void
.end method

.method public onSwipeRight()V
    .locals 0

    return-void
.end method

.method public onSwipeTop()V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 27
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/listener/OnSwipeTouchListener;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
