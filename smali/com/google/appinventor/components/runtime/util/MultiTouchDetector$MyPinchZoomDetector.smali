.class public Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;
.super Landroid/view/ScaleGestureDetector;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPinchZoomDetector"
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/MultiTouchDetector$MyPinchZoomDetector;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/MultiTouchDetector;

    .line 29
    invoke-direct {p0, p2, p3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    return-void
.end method
