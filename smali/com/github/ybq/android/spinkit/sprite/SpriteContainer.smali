.class public abstract Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.super Lcom/github/ybq/android/spinkit/sprite/Sprite;
.source "SpriteContainer.java"


# instance fields
.field private color:I

.field private sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 20
    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->initCallBack()V

    .line 21
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    return-void
.end method

.method private initCallBack()V
    .locals 4

    .line 25
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 26
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 27
    invoke-virtual {v3, p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->drawChild(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;)V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 65
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 67
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected drawSelf(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public getColor()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->color:I

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->isRunning([Lcom/github/ybq/android/spinkit/sprite/Sprite;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .line 79
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 80
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 81
    invoke-virtual {v3, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation()Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
.end method

.method public setColor(I)V
    .locals 2

    .line 46
    iput p1, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->color:I

    const/4 v0, 0x0

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->getChildAt(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 88
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->start([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->stop()V

    .line 94
    iget-object v0, p0, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->sprites:[Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-static {v0}, Lcom/github/ybq/android/spinkit/animation/AnimationUtils;->stop([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    return-void
.end method
