.class public Lcom/github/ybq/android/spinkit/style/RotatingPlane;
.super Lcom/github/ybq/android/spinkit/sprite/RectSprite;
.source "RotatingPlane.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/RectSprite;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;->clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;->setDrawBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 20
    fill-array-data v1, :array_0

    .line 21
    new-instance v2, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    invoke-direct {v2, p0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;-><init>(Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    new-array v3, v0, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/16 v6, -0xb4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    const/4 v8, 0x2

    aput-object v6, v3, v8

    invoke-virtual {v2, v1, v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->rotateX([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v5, v0, v4

    aput-object v5, v0, v7

    aput-object v6, v0, v8

    .line 23
    invoke-virtual {v2, v1, v0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->rotateY([F[Ljava/lang/Integer;)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    const-wide/16 v2, 0x4b0

    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->duration(J)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0, v1}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->easeInOut([F)Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/animation/SpriteAnimatorBuilder;->build()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
