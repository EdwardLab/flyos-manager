.class public Lcom/github/ybq/android/spinkit/style/CubeGrid;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "CubeGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8

    .line 33
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ea8f5c3    # 0.33f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 36
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 38
    rem-int/lit8 v3, v2, 0x3

    .line 39
    div-int/lit8 v4, v2, 0x3

    .line 40
    iget v5, p1, Landroid/graphics/Rect;->left:I

    mul-int v3, v3, v0

    add-int/2addr v5, v3

    .line 41
    iget v3, p1, Landroid/graphics/Rect;->top:I

    mul-int v4, v4, v1

    add-int/2addr v3, v4

    .line 42
    invoke-virtual {p0, v2}, Lcom/github/ybq/android/spinkit/style/CubeGrid;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v4

    add-int v6, v5, v0

    add-int v7, v3, v1

    .line 43
    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 6

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 18
    fill-array-data v1, :array_0

    new-array v2, v0, [Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 25
    new-instance v4, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;-><init>(Lcom/github/ybq/android/spinkit/style/CubeGrid;Lcom/github/ybq/android/spinkit/style/CubeGrid$1;)V

    aput-object v4, v2, v3

    .line 26
    aget v5, v1, v3

    invoke-virtual {v4, v5}, Lcom/github/ybq/android/spinkit/style/CubeGrid$GridItem;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2

    nop

    :array_0
    .array-data 4
        0xc8
        0x12c
        0x190
        0x64
        0xc8
        0x12c
        0x0
        0x64
        0xc8
    .end array-data
.end method
