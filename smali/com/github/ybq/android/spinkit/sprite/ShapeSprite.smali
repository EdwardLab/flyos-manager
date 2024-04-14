.class public abstract Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;
.super Lcom/github/ybq/android/spinkit/sprite/Sprite;
.source "ShapeSprite.java"


# instance fields
.field private mBaseColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mUseColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;-><init>()V

    const/4 v0, -0x1

    .line 18
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->setColor(I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 21
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateUseColor()V
    .locals 3

    .line 47
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->getAlpha()I

    move-result v0

    shr-int/lit8 v1, v0, 0x7

    add-int/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    ushr-int/lit8 v2, v1, 0x18

    mul-int v2, v2, v0

    shr-int/lit8 v0, v2, 0x8

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    .line 51
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    return-void
.end method


# virtual methods
.method protected final drawSelf(Landroid/graphics/Canvas;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method public abstract drawShape(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public getColor()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    return v0
.end method

.method public getUseColor()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mUseColor:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAlpha(I)V

    .line 43
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->updateUseColor()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mBaseColor:I

    .line 27
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->updateUseColor()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/ShapeSprite;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
