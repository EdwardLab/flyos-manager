.class public Lcom/github/ybq/android/spinkit/style/FoldingCube;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "FoldingCube.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;
    }
.end annotation


# instance fields
.field private wrapContent:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/github/ybq/android/spinkit/style/FoldingCube;->wrapContent:Z

    return-void
.end method


# virtual methods
.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 6

    .line 75
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    mul-int/lit8 v3, v1, 0x5a

    add-int/lit8 v3, v3, 0x2d

    int-to-float v3, v3

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 80
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 7

    .line 40
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 43
    iget-boolean v1, p0, Lcom/github/ybq/android/spinkit/style/FoldingCube;->wrapContent:Z

    if-eqz v1, :cond_0

    mul-int v0, v0, v0

    .line 44
    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 49
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iget v6, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v2

    invoke-direct {v3, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v3

    .line 57
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    .line 58
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x0

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 60
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v3

    .line 61
    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    .line 67
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotX(F)V

    .line 68
    invoke-virtual {v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotY(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 27
    new-instance v3, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;

    invoke-direct {v3, p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;-><init>(Lcom/github/ybq/android/spinkit/style/FoldingCube;)V

    aput-object v3, v1, v2

    .line 29
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 30
    aget-object v3, v1, v2

    mul-int/lit16 v4, v2, 0x12c

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    goto :goto_1

    .line 32
    :cond_0
    aget-object v3, v1, v2

    mul-int/lit16 v4, v2, 0x12c

    add-int/lit16 v4, v4, -0x4b0

    invoke-virtual {v3, v4}, Lcom/github/ybq/android/spinkit/style/FoldingCube$Cube;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
