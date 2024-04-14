.class public Lcom/github/ybq/android/spinkit/style/DoubleBounce;
.super Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;
.source "DoubleBounce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;
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
.method public varargs onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/SpriteContainer;->onChildCreated([Lcom/github/ybq/android/spinkit/sprite/Sprite;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    .line 27
    aget-object p1, p1, v1

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    goto :goto_0

    .line 29
    :cond_0
    aget-object p1, p1, v1

    const/16 v0, -0x3e8

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setAnimationDelay(I)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    :goto_0
    return-void
.end method

.method public onCreateChild()[Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 18
    new-instance v1, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/DoubleBounce;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;

    invoke-direct {v1, p0}, Lcom/github/ybq/android/spinkit/style/DoubleBounce$Bounce;-><init>(Lcom/github/ybq/android/spinkit/style/DoubleBounce;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method
