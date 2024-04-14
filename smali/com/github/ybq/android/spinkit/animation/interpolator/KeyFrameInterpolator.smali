.class public Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
.super Ljava/lang/Object;
.source "KeyFrameInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private fractions:[F

.field private interpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public varargs constructor <init>(Landroid/animation/TimeInterpolator;[F)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    .line 31
    iput-object p2, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    return-void
.end method

.method public static varargs easeInOut([F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .locals 3

    .line 16
    new-instance v0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    invoke-static {}, Lcom/github/ybq/android/spinkit/animation/interpolator/Ease;->inOut()Landroid/view/animation/Interpolator;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [F

    invoke-direct {v0, v1, v2}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 17
    invoke-virtual {v0, p0}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    return-object v0
.end method

.method public static varargs pathInterpolator(FFFF[F)Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;
    .locals 1

    .line 24
    new-instance v0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;

    invoke-static {p0, p1, p2, p3}, Lcom/github/ybq/android/spinkit/animation/interpolator/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [F

    invoke-direct {v0, p0, p1}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;-><init>(Landroid/animation/TimeInterpolator;[F)V

    .line 25
    invoke-virtual {v0, p4}, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->setFractions([F)V

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    .line 40
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    array-length v3, v2

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_1

    .line 42
    aget v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    .line 43
    aget v2, v2, v0

    sub-float v4, v2, v3

    cmpl-float v5, p1, v3

    if-ltz v5, :cond_0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    sub-float/2addr p1, v3

    div-float/2addr p1, v4

    .line 47
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    mul-float p1, p1, v4

    add-float/2addr v3, p1

    return v3

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method

.method public varargs setFractions([F)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/github/ybq/android/spinkit/animation/interpolator/KeyFrameInterpolator;->fractions:[F

    return-void
.end method
