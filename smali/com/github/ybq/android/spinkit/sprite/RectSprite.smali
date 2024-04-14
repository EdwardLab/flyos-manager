.class public Lcom/github/ybq/android/spinkit/sprite/RectSprite;
.super Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
.source "RectSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;-><init>()V

    return-void
.end method


# virtual methods
.method public drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
