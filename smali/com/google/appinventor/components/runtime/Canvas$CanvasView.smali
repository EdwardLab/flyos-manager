.class public final Lcom/google/appinventor/components/runtime/Canvas$CanvasView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CanvasView"
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;Landroid/content/Context;)V
    .locals 1

    .line 407
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 408
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 409
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 p2, 0x20

    const/16 v0, 0x30

    invoke-static {p2, v0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 412
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I
    .locals 5

    const v0, 0xffffff

    if-ltz p1, :cond_5

    .line 647
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 648
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    .line 663
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 665
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 666
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 664
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    .line 669
    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    return p1

    .line 674
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_4

    .line 675
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_4
    return v0

    :catch_0
    const-string p1, "Canvas"

    const-string p2, "Returning COLOR_NONE (exception) from getBackgroundPixelColor."

    .line 680
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(II)I

    move-result p0

    return p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V
    .locals 3

    .line 619
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 620
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I
    .locals 2

    .line 541
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 542
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 552
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;II)I
    .locals 0

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I

    move-result p0

    return p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x1

    .line 421
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    .line 422
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->destroyDrawingCache()V

    .line 423
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getWidth()I

    move-result v0

    .line 428
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->getHeight()I

    move-result v1

    .line 429
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 430
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 431
    invoke-virtual {p0, v4, v4, v0, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->layout(IIII)V

    .line 432
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Bitmap;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)Landroid/graphics/Canvas;
    .locals 0

    .line 387
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;)V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas$CanvasView;Ljava/lang/String;IIF)V
    .locals 1

    .line 1637
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 1638
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    neg-float p4, p4

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, p4, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1639
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p4, p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1640
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1641
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method private qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V
    .locals 3

    .line 606
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, ""

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 607
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 608
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_0
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 612
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 613
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)I

    move-result v1

    :cond_2
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 615
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(II)I
    .locals 4

    const v0, 0xffffff

    if-ltz p1, :cond_5

    .line 687
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ge p1, v1, :cond_5

    if-ltz p2, :cond_5

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 688
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 696
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 697
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    .line 703
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(II)I

    move-result p1

    return p1

    .line 711
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    .line 716
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const-string p1, "Canvas"

    const-string p2, "Returning COLOR_NONE (exception) from getPixelColor."

    .line 719
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v0
.end method


# virtual methods
.method final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;)V
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x0

    .line 588
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    .line 589
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    .line 591
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 593
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 595
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unable to load "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Canvas"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V

    .line 601
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 439
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/graphics/Bitmap;

    .line 442
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 450
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/Sprite;

    .line 451
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/Sprite;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Canvas;)Z

    return-void
.end method

.method protected final onMeasure(II)V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/drawable/BitmapDrawable;

    const/16 v1, 0x30

    const/16 v2, 0x20

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 525
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    .line 529
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error on backgroundDrawable.getBitmap(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Canvas"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_0
    :goto_0
    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result p1

    .line 536
    invoke-static {p2, v1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(II)I

    move-result p2

    .line 535
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onSizeChanged(IIII)V
    .locals 5

    .line 458
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    if-nez p3, :cond_0

    return-void

    .line 462
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 463
    iget-object p4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_3

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 479
    :try_start_0
    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 481
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 487
    new-instance p1, Landroid/graphics/Canvas;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {p1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    goto :goto_0

    .line 492
    :cond_2
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    .line 496
    new-instance v3, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    .line 499
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 501
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0, v3, p3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 505
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Canvas"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_0
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 566
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Canvas;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->dontGrabTouchEventsForComponent()V

    .line 567
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Lcom/google/appinventor/components/runtime/Canvas$b;

    move-result-object v2

    .line 1258
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v3

    .line 1259
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v4

    .line 1265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    int-to-float v7, v7

    iget-object v8, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v15

    .line 1270
    new-instance v7, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v8, v5

    add-int/lit8 v9, v8, -0xc

    const/4 v10, 0x0

    .line 1271
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    int-to-double v11, v9

    float-to-int v9, v15

    add-int/lit8 v13, v9, -0xc

    .line 1272
    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-double v13, v13

    add-int/lit8 v10, v3, -0x1

    add-int/lit8 v8, v8, 0xc

    .line 1273
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v26, v7

    int-to-double v6, v8

    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v9, v9, 0xc

    .line 1274
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-double v8, v8

    move-object/from16 v16, v26

    move-wide/from16 v17, v11

    move-wide/from16 v19, v13

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    invoke-direct/range {v16 .. v24}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 1276
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v14, 0x1

    if-eqz v6, :cond_12

    const/high16 v7, -0x40800000    # -1.0f

    if-eq v6, v14, :cond_c

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    :cond_0
    const/4 v3, 0x1

    goto/16 :goto_7

    .line 1296
    :cond_1
    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    .line 1297
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "In Canvas.MotionEventParser.parse(), an ACTION_MOVE was passed without a preceding ACTION_DOWN: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Canvas"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    :cond_3
    iget-boolean v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Z

    if-nez v6, :cond_4

    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    sub-float v6, v5, v6

    .line 1303
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x41700000    # 15.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    sub-float v6, v15, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 1307
    :cond_4
    iput-boolean v14, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Z

    .line 1308
    iput-boolean v14, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Z

    const/4 v6, 0x0

    cmpg-float v7, v5, v6

    if-lez v7, :cond_5

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-gtz v3, :cond_5

    cmpg-float v3, v15, v6

    if-lez v3, :cond_5

    int-to-float v3, v4

    cmpl-float v3, v15, v3

    if-lez v3, :cond_6

    .line 1312
    :cond_5
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    .line 1313
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1319
    :cond_6
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1320
    iget-object v6, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1321
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v6

    if-eqz v6, :cond_7

    move-object/from16 v6, v26

    .line 1322
    invoke-virtual {v4, v6}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1323
    iget-object v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    move-object/from16 v6, v26

    :cond_8
    :goto_1
    move-object/from16 v26, v6

    goto :goto_0

    .line 1329
    :cond_9
    iget-object v3, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v25, 0x0

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1330
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1331
    iget v8, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    iget v9, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    iget v10, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    iget v11, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    move v12, v5

    move v13, v15

    invoke-virtual/range {v7 .. v13}, Lcom/google/appinventor/components/runtime/Sprite;->Dragged(FFFFFF)V

    const/16 v25, 0x1

    goto :goto_2

    .line 1337
    :cond_b
    iget-object v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget v8, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    iget v9, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    iget v10, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    iget v11, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    move v12, v5

    move v13, v15

    const/4 v3, 0x1

    move/from16 v14, v25

    invoke-virtual/range {v7 .. v14}, Lcom/google/appinventor/components/runtime/Canvas;->Dragged(FFFFFFZ)V

    .line 1338
    iput v5, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1339
    iput v15, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    goto/16 :goto_7

    :cond_c
    const/4 v3, 0x1

    .line 1346
    iget-boolean v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Z

    if-nez v4, :cond_f

    .line 1349
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x0

    :cond_d
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1350
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1351
    invoke-virtual {v8, v5, v15}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 1352
    invoke-virtual {v8, v5, v15}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    const/4 v6, 0x1

    goto :goto_3

    .line 1357
    :cond_e
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4, v5, v15, v6}, Lcom/google/appinventor/components/runtime/Canvas;->Touched(FFZ)V

    goto :goto_5

    .line 1360
    :cond_f
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1361
    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1362
    invoke-virtual {v6, v5, v15}, Lcom/google/appinventor/components/runtime/Sprite;->Touched(FF)V

    .line 1363
    invoke-virtual {v6, v5, v15}, Lcom/google/appinventor/components/runtime/Sprite;->TouchUp(FF)V

    goto :goto_4

    .line 1370
    :cond_11
    :goto_5
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4, v5, v15}, Lcom/google/appinventor/components/runtime/Canvas;->TouchUp(FF)V

    const/4 v4, 0x0

    .line 1373
    iput-boolean v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Z

    .line 1374
    iput v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    .line 1375
    iput v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    .line 1376
    iput v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1377
    iput v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    goto :goto_7

    :cond_12
    move-object/from16 v6, v26

    const/4 v3, 0x1

    .line 1278
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1279
    iput v5, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    .line 1280
    iput v15, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    .line 1281
    iput v5, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:F

    .line 1282
    iput v15, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:F

    const/4 v4, 0x0

    .line 1283
    iput-boolean v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:Z

    .line 1284
    iput-boolean v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->zWdiPvy9THbs14kS37O202JH95jn5GzRAXQdLdM0hhw5e6hZSAshBMBb0bJkJXW5:Z

    .line 1285
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1286
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1287
    iget-object v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1288
    iget v7, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    iget v8, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    invoke-virtual {v5, v7, v8}, Lcom/google/appinventor/components/runtime/Sprite;->TouchDown(FF)V

    goto :goto_6

    .line 1291
    :cond_14
    iget-object v4, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    iget v5, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:F

    iget v2, v2, Lcom/google/appinventor/components/runtime/Canvas$b;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:F

    invoke-virtual {v4, v5, v2}, Lcom/google/appinventor/components/runtime/Canvas;->TouchDown(FF)V

    .line 568
    :goto_7
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 570
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;

    .line 573
    invoke-interface {v4, v1}, Lcom/google/appinventor/components/runtime/Canvas$ExtensionGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_8

    :cond_15
    return v3
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;I)I

    .line 630
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE()V

    .line 632
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()V

    return-void
.end method
