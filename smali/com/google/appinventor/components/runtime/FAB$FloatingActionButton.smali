.class public Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/FAB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatingActionButton"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton$Builder;
    }
.end annotation


# static fields
.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

.field private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

.field private context:Landroid/content/Context;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;

    .line 267
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 276
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    .line 277
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->context:Landroid/content/Context;

    const/4 p1, -0x1

    .line 278
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->init(I)V

    return-void
.end method


# virtual methods
.method public hideFloatingActionButton(Z)V
    .locals 6

    .line 322
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 323
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 324
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 325
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 326
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 327
    sget-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/AccelerateInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 v4, 0x64

    .line 329
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    .line 331
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 333
    :goto_0
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 334
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public init(I)V
    .locals 5

    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setWillNotDraw(Z)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 294
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    .line 295
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 297
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    const/16 v2, 0x64

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x0

    const/high16 v4, 0x40600000    # 3.5f

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 298
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;

    .line 300
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->invalidate()V

    return-void
.end method

.method public isHidden()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setClickable(Z)V

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x4004cccccccccccdL    # 2.6

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 308
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Paint;

    .line 307
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 314
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setAlpha(F)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x3f19999a    # 0.6f

    .line 316
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->setAlpha(F)V

    .line 318
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setFloatingActionButtonColor(I)V
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->init(I)V

    return-void
.end method

.method public setFloatingActionButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 286
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/Bitmap;

    .line 287
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->invalidate()V

    return-void
.end method

.method public showFloatingActionButton(Z)V
    .locals 5

    .line 339
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 340
    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 341
    fill-array-data v2, :array_1

    const-string v3, "scaleY"

    invoke-static {p0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 342
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 343
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 344
    sget-object v0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xc8

    .line 346
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 348
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 350
    :goto_0
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 351
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/FAB$FloatingActionButton;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:Z

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
