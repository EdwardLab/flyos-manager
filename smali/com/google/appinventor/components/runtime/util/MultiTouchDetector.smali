.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;,
        Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 1039
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;

    .line 1040
    new-instance v0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas;->getContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyOnScaleGestureListener;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;-><init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Canvas;->registerCustomGestureDetector(Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;)V

    :cond_0
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;)Lcom/google/appinventor/components/runtime/Canvas;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Canvas;

    return-object p0
.end method
