.class final Lcom/github/ybq/android/spinkit/sprite/Sprite$8;
.super Lcom/github/ybq/android/spinkit/animation/FloatProperty;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ybq/android/spinkit/sprite/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ybq/android/spinkit/animation/FloatProperty<",
        "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/github/ybq/android/spinkit/animation/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Float;
    .locals 0

    .line 414
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getScaleX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 406
    check-cast p1, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;->get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;F)V
    .locals 0

    .line 409
    invoke-virtual {p1, p2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setScaleX(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 406
    check-cast p1, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p0, p1, p2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$8;->setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;F)V

    return-void
.end method
