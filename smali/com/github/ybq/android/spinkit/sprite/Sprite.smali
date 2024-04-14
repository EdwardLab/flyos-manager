.class public abstract Lcom/github/ybq/android/spinkit/sprite/Sprite;
.super Landroid/graphics/drawable/Drawable;
.source "Sprite.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field public static final ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROTATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_X_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ZERO_BOUNDS_RECT:Landroid/graphics/Rect;


# instance fields
.field private alpha:I

.field private animationDelay:I

.field private animator:Landroid/animation/ValueAnimator;

.field protected drawBounds:Landroid/graphics/Rect;

.field private mCamera:Landroid/graphics/Camera;

.field private mMatrix:Landroid/graphics/Matrix;

.field private pivotX:F

.field private pivotY:F

.field private rotate:I

.field private rotateX:I

.field private rotateY:I

.field private scale:F

.field private scaleX:F

.field private scaleY:F

.field private translateX:I

.field private translateXPercentage:F

.field private translateY:I

.field private translateYPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    .line 319
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$1;

    const-string v1, "rotateX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_X:Landroid/util/Property;

    .line 331
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$2;

    const-string v1, "rotate"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE:Landroid/util/Property;

    .line 343
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$3;

    const-string v1, "rotateY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ROTATE_Y:Landroid/util/Property;

    .line 356
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;

    const-string v1, "translateX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X:Landroid/util/Property;

    .line 369
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$5;

    const-string v1, "translateY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y:Landroid/util/Property;

    .line 381
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$6;

    const-string v1, "translateXPercentage"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_X_PERCENTAGE:Landroid/util/Property;

    .line 393
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$7;

    const-string v1, "translateYPercentage"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->TRANSLATE_Y_PERCENTAGE:Landroid/util/Property;

    .line 406
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE_X:Landroid/util/Property;

    .line 418
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$9;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE_Y:Landroid/util/Property;

    .line 430
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;

    const-string v1, "scale"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->SCALE:Landroid/util/Property;

    .line 442
    new-instance v0, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ALPHA:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    .line 27
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    .line 28
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    const/16 v0, 0xff

    .line 40
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    .line 42
    sget-object v0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->ZERO_BOUNDS_RECT:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public clipSquare(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 309
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    .line 310
    div-int/lit8 v0, v0, 0x2

    .line 311
    new-instance v2, Landroid/graphics/Rect;

    sub-int v3, v1, v0

    sub-int v4, p1, v0

    add-int/2addr v1, v0

    add-int/2addr p1, v0

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateX()I

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateXPercentage()F

    move-result v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateY()I

    move-result v1

    if-nez v1, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateYPercentage()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    :cond_1
    int-to-float v0, v0

    int-to-float v1, v1

    .line 287
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 288
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScaleX()F

    move-result v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScaleY()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 289
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotate()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 291
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateX()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateY()I

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 293
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateX(F)V

    .line 294
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getRotateY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 295
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 296
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 297
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotX()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getPivotY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 298
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 299
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 301
    :cond_3
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawSelf(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected abstract drawSelf(Landroid/graphics/Canvas;)V
.end method

.method public getAlpha()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    return v0
.end method

.method public getAnimationDelay()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    return v0
.end method

.method public abstract getColor()I
.end method

.method public getDrawBounds()Landroid/graphics/Rect;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .line 153
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotY:F

    return v0
.end method

.method public getRotate()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    return v0
.end method

.method public getRotateX()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    return v0
.end method

.method public getRotateY()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 111
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 121
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 129
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    return v0
.end method

.method public getTranslateXPercentage()F
    .locals 1

    .line 71
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    return v0
.end method

.method public getTranslateYPercentage()F
    .locals 1

    .line 79
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 256
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->invalidateSelf()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isRunning(Landroid/animation/ValueAnimator;)Z

    move-result v0

    return v0
.end method

.method public obtainAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->onCreateAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 206
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 273
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public abstract onCreateAnimation()Landroid/animation/ValueAnimator;
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 223
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    .line 225
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    .line 226
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    .line 227
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    .line 228
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    const/4 v0, 0x0

    .line 229
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    .line 230
    iput v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->alpha:I

    return-void
.end method

.method public setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 0

    .line 174
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animationDelay:I

    return-object p0
.end method

.method public abstract setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDrawBounds(IIII)V
    .locals 1

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->drawBounds:Landroid/graphics/Rect;

    .line 250
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotX(F)V

    .line 251
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getDrawBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setPivotY(F)V

    return-void
.end method

.method public setDrawBounds(Landroid/graphics/Rect;)V
    .locals 3

    .line 245
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setDrawBounds(IIII)V

    return-void
.end method

.method public setPivotX(F)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotX:F

    return-void
.end method

.method public setPivotY(F)V
    .locals 0

    .line 165
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->pivotY:F

    return-void
.end method

.method public setRotate(I)V
    .locals 0

    .line 107
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotate:I

    return-void
.end method

.method public setRotateX(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateX:I

    return-void
.end method

.method public setRotateY(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->rotateY:I

    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scale:F

    .line 116
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScaleX(F)V

    .line 117
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScaleY(F)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 125
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->scaleY:F

    return-void
.end method

.method public setTranslateX(I)V
    .locals 0

    .line 91
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateX:I

    return-void
.end method

.method public setTranslateXPercentage(F)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateXPercentage:F

    return-void
.end method

.method public setTranslateY(I)V
    .locals 0

    .line 99
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateY:I

    return-void
.end method

.method public setTranslateYPercentage(F)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->translateYPercentage:F

    return-void
.end method

.method public start()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->obtainAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    return-void

    .line 196
    :cond_1
    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->start(Landroid/animation/Animator;)V

    .line 197
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->invalidateSelf()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isStarted(Landroid/animation/ValueAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 215
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/Sprite;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 216
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->reset()V

    :cond_0
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method
