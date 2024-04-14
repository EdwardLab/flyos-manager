.class public Lcom/google/appinventor/components/runtime/ScaledFrameLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

.field private HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:I

.field private aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:I

.field private lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    .line 37
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 39
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V
    .locals 3

    int-to-float p1, p1

    .line 95
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v0, v1

    mul-float p1, p1, v2

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p2, p2

    sub-float v1, v0, v1

    mul-float p2, p2, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 57
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 58
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 59
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    mul-float v0, v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    div-float/2addr v2, v3

    mul-float v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 83
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 67
    aget v2, p1, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aget p1, p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v3

    float-to-int p1, p1

    aput p1, v0, v1

    .line 70
    new-instance p1, Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    mul-float p2, p2, v4

    float-to-int p2, p2

    invoke-direct {p1, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 74
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 76
    invoke-super {p0, v0, p1}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 156
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result p1

    .line 158
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingLeft()I

    move-result p2

    .line 160
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingTop()I

    move-result p4

    sub-int/2addr p5, p3

    .line 161
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p5, p3

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    .line 164
    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 167
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 169
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iput p2, v3, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iput p2, v3, Landroid/graphics/Rect;->right:I

    .line 171
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 172
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iput p4, v3, Landroid/graphics/Rect;->top:I

    .line 173
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iput p5, v3, Landroid/graphics/Rect;->bottom:I

    const v3, 0x800033

    .line 175
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    invoke-static {v3, v1, v2, v4, v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 178
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 119
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    .line 121
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:I

    .line 122
    iput v1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 129
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 130
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 131
    invoke-virtual {p0, v5, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->measureChild(Landroid/view/View;II)V

    .line 133
    iget v6, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:I

    .line 135
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 136
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->combineMeasuredStates(II)I

    move-result v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->HThm2UFiN8mNIb2OEGwVoJpkwNLFwrt8FHi6kSBOC6T1EOtocK0hkK9xDo2LJOJZ:I

    add-int/2addr v0, v1

    .line 142
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 143
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 146
    invoke-static {v0, p1, v4}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v0, v4, 0x10

    .line 147
    invoke-static {v1, p2, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->resolveSizeAndState(III)I

    move-result p2

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->lAud5RKvmdA6itPf25e72aHL9NdNsPWhE0ialf61Le8xYV1HI3NTt1XJfRo1B6Y:F

    .line 89
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ScaledFrameLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
