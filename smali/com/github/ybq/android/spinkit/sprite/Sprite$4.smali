.class final Lcom/github/ybq/android/spinkit/sprite/Sprite$4;
.super Lcom/github/ybq/android/spinkit/animation/IntProperty;
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
        "Lcom/github/ybq/android/spinkit/animation/IntProperty<",
        "Lcom/github/ybq/android/spinkit/sprite/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 356
    invoke-direct {p0, p1}, Lcom/github/ybq/android/spinkit/animation/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Integer;
    .locals 0

    .line 364
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getTranslateX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 356
    check-cast p1, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;->get(Lcom/github/ybq/android/spinkit/sprite/Sprite;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;I)V
    .locals 0

    .line 359
    invoke-virtual {p1, p2}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setTranslateX(I)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 356
    check-cast p1, Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p0, p1, p2}, Lcom/github/ybq/android/spinkit/sprite/Sprite$4;->setValue(Lcom/github/ybq/android/spinkit/sprite/Sprite;I)V

    return-void
.end method
