.class public abstract Lcom/google/appinventor/components/runtime/Sprite;
.super Lcom/google/appinventor/components/runtime/VisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field protected static final DEFAULT_ORIGIN_AT_CENTER:Z = false


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field protected final canvas:Lcom/google/appinventor/components/runtime/Canvas;

.field protected form:Lcom/google/appinventor/components/runtime/Form;

.field protected heading:D

.field protected headingCos:D

.field protected headingRadians:D

.field protected headingSin:D

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field protected initialized:Z

.field protected interval:I

.field protected originAtCenter:Z

.field protected speed:F

.field protected userHeading:D

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/appinventor/components/runtime/Sprite;",
            ">;"
        }
    .end annotation
.end field

.field protected visible:Z

.field protected xCenter:D

.field protected xLeft:D

.field protected yCenter:D

.field protected yTop:D

.field protected zLayer:D


# direct methods
.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/os/Handler;)V
    .locals 6

    .line 105
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/VisibleComponent;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 106
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    .line 109
    instance-of v2, p1, Lcom/google/appinventor/components/runtime/Canvas;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, p1

    check-cast v2, Lcom/google/appinventor/components/runtime/Canvas;

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 113
    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 116
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    .line 119
    new-instance v2, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v3, 0x64

    invoke-direct {v2, p0, v1, v3, p2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZILandroid/os/Handler;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 121
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p2

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Sprite;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->OriginAtCenter(Z)V

    const-wide/16 v4, 0x0

    .line 125
    invoke-virtual {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled(Z)V

    .line 127
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Interval(I)V

    const/4 p2, 0x0

    .line 128
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->Speed(F)V

    .line 129
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Visible(Z)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 130
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Z(D)V

    .line 132
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    return-void

    .line 110
    :cond_0
    new-instance p2, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sprite constructor called with container "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/appinventor/components/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V
    .locals 2

    .line 342
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 343
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    .line 1336
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sub-double/2addr p1, v0

    .line 344
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    return-void

    .line 346
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 347
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    return-void
.end method

.method private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z
    .locals 4

    .line 923
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static colliding(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 12

    const/4 v0, 0x1

    .line 958
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 959
    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v2

    .line 960
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 968
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v4

    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v2, v4, v6

    if-gtz v2, :cond_3

    .line 969
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v6

    :goto_1
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v6, v8

    if-gtz v2, :cond_2

    .line 970
    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-double/2addr v6, v10

    goto :goto_1

    :cond_2
    add-double/2addr v4, v10

    goto :goto_0

    :cond_3
    return v3
.end method

.method private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z
    .locals 5

    .line 927
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    add-double/2addr p1, v0

    return-wide p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V
    .locals 2

    .line 313
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    .line 314
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 1307
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    sub-double/2addr p1, v0

    .line 315
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    return-void

    .line 317
    :cond_0
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    return-void
.end method

.method private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z
    .locals 5

    .line 919
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z
    .locals 4

    .line 931
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    int-to-double v2, p1

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public Bounce(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Makes the %type% bounce, as if off a wall. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 607
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V

    return-void
.end method

.method public BounceAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 13

    .line 626
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    .line 629
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    const-wide v2, 0x4076800000000000L    # 360.0

    rem-double/2addr v0, v2

    const-wide/16 v4, 0x0

    cmpg-double v6, v0, v4

    if-gez v6, :cond_0

    add-double/2addr v0, v2

    .line 636
    :cond_0
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    const-wide v7, 0x4070e00000000000L    # 270.0

    const-wide v9, 0x4056800000000000L    # 90.0

    const-wide v11, 0x4066800000000000L    # 180.0

    if-ne p1, v6, :cond_1

    cmpg-double v6, v0, v9

    if-ltz v6, :cond_2

    cmpl-double v6, v0, v7

    if-gtz v6, :cond_2

    :cond_1
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_3

    cmpl-double v6, v0, v9

    if-lez v6, :cond_3

    cmpg-double v6, v0, v7

    if-gez v6, :cond_3

    :cond_2
    sub-double/2addr v11, v0

    .line 640
    invoke-virtual {p0, v11, v12}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void

    .line 641
    :cond_3
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_4

    cmpl-double v6, v0, v4

    if-lez v6, :cond_4

    cmpg-double v6, v0, v11

    if-ltz v6, :cond_5

    :cond_4
    sget-object v6, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v6, :cond_6

    cmpl-double v6, v0, v11

    if-lez v6, :cond_6

    :cond_5
    sub-double/2addr v2, v0

    .line 644
    invoke-virtual {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void

    .line 645
    :cond_6
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_7

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    cmpg-double v2, v0, v9

    if-ltz v2, :cond_a

    :cond_7
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_8

    cmpl-double v2, v0, v9

    if-lez v2, :cond_8

    cmpg-double v2, v0, v11

    if-ltz v2, :cond_a

    :cond_8
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_9

    cmpl-double v2, v0, v11

    if-lez v2, :cond_9

    cmpg-double v2, v0, v7

    if-ltz v2, :cond_a

    :cond_9
    sget-object v2, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    if-ne p1, v2, :cond_b

    cmpl-double p1, v0, v7

    if-lez p1, :cond_b

    :cond_a
    add-double/2addr v0, v11

    .line 652
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    :cond_b
    return-void
.end method

.method public CollidedWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CollidedWith"

    .line 430
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public CollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Indicates whether a collision has been registered between this %type% and the passed sprite (Ball or ImageSprite)."
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Dragged(FFFFFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a %type% is dragged. On all calls, the starting coordinates are where the screen was first touched, and the \"current\" coordinates describe the endpoint of the current line segment. On the first call within a given drag, the \"previous\" coordinates are the same as the starting coordinates; subsequently, they are the \"current\" coordinates from the prior call. Note that the %type% won\'t actually move anywhere in response to the Dragged event unless MoveTo is explicitly called. For smooth movement, each of its coordinates should be set to the sum of its initial value and the difference between its current and previous values."
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 465
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "Dragged"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public EdgeReached(I)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/google/appinventor/components/annotations/Options;
            value = Lcom/google/appinventor/components/common/Direction;
        .end annotation
    .end param
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the %type% reaches an edge of the screen. If Bounce is then called with that edge, the %type% will appear to bounce off of the edge it reached. Edge here is represented as an integer that indicates one of eight directions north (1), northeast (2), east (3), southeast (4), south (-1), southwest (-2), west (-3), and northwest (-4)."
    .end annotation

    .line 481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/common/Direction;->fromUnderlyingValue(Ljava/lang/Integer;)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    return-void
.end method

.method public EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 494
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "EdgeReached"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Controls whether the %type% moves and can be interacted with through collisions, dragging, touching, and flinging."
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Flung(FFFFFF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a fling gesture (quick swipe) is made on an enabled %type%. This provides the x and y coordinates of the start of the fling (relative to the upper left of the canvas), the speed (pixels per millisecond), the heading (0-360 degrees), and the x and y velocity components of the fling\'s vector."
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 550
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    const-string p1, "Flung"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Heading()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the %type%\'s heading in degrees above the positive x-axis.  Zero degrees is toward the right of the screen; 90 degrees is toward the top of the screen."
    .end annotation

    .line 216
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    return-wide v0
.end method

.method public Heading(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 196
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->userHeading:D

    neg-double p1, p1

    .line 198
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->heading:D

    .line 199
    invoke-static {p1, p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    .line 200
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    .line 201
    iget-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingRadians:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    .line 203
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Initialize()V
    .locals 1

    const/4 v0, 0x1

    .line 149
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The interval in milliseconds at which the %type%\'s position is updated.  For example, if the interval is 50 and the speed is 10, then every 50 milliseconds the sprite will move 10 pixels in the heading direction."
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    return-void
.end method

.method public MoveIntoBounds()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Moves the %type% back in bounds if part of it extends out of bounds, having no effect otherwise. If the %type% is too wide to fit on the canvas, this aligns the left side of the %type% with the left side of the canvas. If the %type% is too tall to fit on the canvas, this aligns the top side of the %type% with the top side of the canvas."
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->moveIntoBounds(II)V

    return-void
.end method

.method public MoveTo(DD)V
    .locals 0

    .line 699
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V

    .line 700
    invoke-direct {p0, p3, p4}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V

    .line 701
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public NoLongerCollidingWith(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when a pair of sprites (Balls and ImageSprites) are no longer colliding."
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "NoLongerCollidingWith"

    .line 511
    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected OriginAtCenter(Z)V
    .locals 0

    .line 389
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    return-void
.end method

.method public PointInDirection(DD)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the heading of the %type% toward the point with the coordinates (x, y)."
    .end annotation

    .line 727
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr p3, v0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr p1, v0

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    neg-double p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void
.end method

.method public PointTowards(Lcom/google/appinventor/components/runtime/Sprite;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turns the %type% to point towards a designated target sprite (Ball or ImageSprite). The new heading will be parallel to the line joining the centerpoints of the two sprites."
    .end annotation

    .line 714
    iget-wide v0, p1, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->Heading(D)V

    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The speed at which the %type% moves. The %type% moves this many pixels every interval if enabled."
    .end annotation

    .line 270
    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The number of pixels that the %type% should move every interval, if enabled."
    .end annotation

    .line 257
    iput p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    return-void
.end method

.method public TouchDown(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user begins touching an enabled %type% (placing their finger on a %type% and leaving it there). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 582
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchDown"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public TouchUp(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user stops touching an enabled %type% (lifting their finger after a TouchDown event). This provides the x and y coordinates of the touch, relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 566
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TouchUp"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Touched(FF)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event handler called when the user touches an enabled %type% and then immediately lifts their finger. The provided x and y coordinates are relative to the upper left of the canvas."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 526
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "Touched"

    invoke-virtual {p0, p0, p1, v0}, Lcom/google/appinventor/components/runtime/Sprite;->postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 294
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    .line 295
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether the %type% is visible."
    .end annotation

    .line 280
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2

    .line 299
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    return-wide v0
.end method

.method public X(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)V

    .line 328
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Y()D
    .locals 2

    .line 360
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->originAtCenter:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    return-wide v0
.end method

.method public Y(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)V

    .line 356
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    return-void
.end method

.method public Z()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "How the %type% should be layered relative to other Balls and ImageSprites, with higher-numbered layers in front of lower-numbered layers."
    .end annotation

    .line 383
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    return-wide v0
.end method

.method public Z(D)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 375
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->zLayer:D

    .line 376
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    .line 1834
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1835
    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Sprite;)V

    .line 1836
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas$CanvasView;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Canvas$CanvasView;->invalidate()V

    return-void
.end method

.method public alarm()V
    .locals 2

    .line 1027
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->updateCoordinates()V

    .line 1029
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    :cond_0
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4

    .line 1013
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iget-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double v0, p3, p1

    if-ltz v0, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    int-to-double v0, v0

    add-double/2addr p1, v0

    cmpg-double v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;
    .locals 17

    move-object/from16 v0, p0

    .line 943
    new-instance v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    iget-wide v1, v0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    move/from16 v3, p1

    int-to-double v3, v3

    sub-double v5, v1, v3

    iget-wide v7, v0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    sub-double/2addr v7, v3

    .line 944
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v9

    int-to-double v11, v9

    add-double/2addr v1, v11

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v11

    add-double v13, v1, v3

    iget-wide v1, v0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v9

    move-wide v15, v13

    int-to-double v13, v9

    add-double/2addr v1, v13

    sub-double/2addr v1, v11

    add-double v11, v1, v3

    move-object v1, v10

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v15

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    return-object v10
.end method

.method public getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdge()I
    .locals 1

    .line 763
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 767
    :cond_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected hitEdge(II)I
    .locals 0

    .line 778
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 782
    :cond_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/common/Direction;->toUnderlyingValue()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    return-object v0
.end method

.method protected hitEdgeAbstract(II)Lcom/google/appinventor/components/common/Direction;
    .locals 2

    .line 809
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z

    move-result v0

    .line 810
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z

    move-result v1

    .line 811
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z

    move-result p1

    .line 812
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z

    move-result p2

    if-nez v1, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->MoveIntoBounds()V

    if-eqz v0, :cond_3

    if-eqz v1, :cond_1

    .line 822
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Northwest:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_1
    if-eqz p2, :cond_2

    .line 824
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Southwest:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 826
    :cond_2
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->West:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_3
    if-eqz p1, :cond_6

    if-eqz v1, :cond_4

    .line 831
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Northeast:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_4
    if-eqz p2, :cond_5

    .line 833
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->Southeast:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 835
    :cond_5
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->East:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    :cond_6
    if-eqz v1, :cond_7

    .line 839
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->North:Lcom/google/appinventor/components/common/Direction;

    return-object p1

    .line 841
    :cond_7
    sget-object p1, Lcom/google/appinventor/components/common/Direction;->South:Lcom/google/appinventor/components/common/Direction;

    return-object p1
.end method

.method public intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 10

    const/4 v0, 0x0

    .line 986
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->getBoundingBox(I)Lcom/google/appinventor/components/runtime/util/BoundingBox;

    move-result-object v1

    .line 987
    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 994
    :cond_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getLeft()D

    move-result-wide v2

    :goto_0
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getRight()D

    move-result-wide v4

    cmpg-double p1, v2, v4

    if-gez p1, :cond_3

    .line 995
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getTop()D

    move-result-wide v4

    :goto_1
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/BoundingBox;->getBottom()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpg-double p1, v4, v6

    if-gez p1, :cond_2

    .line 996
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->containsPoint(DD)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-double/2addr v4, v8

    goto :goto_1

    :cond_2
    add-double/2addr v2, v8

    goto :goto_0

    :cond_3
    return v0
.end method

.method protected final moveIntoBounds(II)V
    .locals 6

    .line 858
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-le v0, p1, :cond_0

    .line 862
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    cmpl-double p1, v4, v2

    if-eqz p1, :cond_2

    .line 863
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 864
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0

    .line 867
    :cond_0
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 869
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 871
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 872
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Width()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-double v4, p1

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 873
    invoke-direct {p0, v4, v5}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 879
    :goto_1
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 883
    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    cmpl-double p2, v4, v2

    if-eqz p2, :cond_5

    .line 884
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 885
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    .line 888
    :cond_3
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 889
    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 890
    invoke-direct {p0, v2, v3}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    .line 892
    :cond_4
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Sprite;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 893
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->Height()I

    move-result p1

    sub-int/2addr p2, p1

    int-to-double p1, p2

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 894
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    goto :goto_2

    :cond_5
    move v1, p1

    :goto_2
    if-eqz v1, :cond_6

    .line 900
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->registerChange()V

    :cond_6
    return-void
.end method

.method public onDelete()V
    .locals 2

    .line 1051
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 1052
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1044
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method protected varargs postEvent(Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->androidUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Sprite$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/Sprite$1;-><init>(Lcom/google/appinventor/components/runtime/Sprite;Lcom/google/appinventor/components/runtime/Sprite;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected registerChange()V
    .locals 1

    .line 743
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->initialized:Z

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Canvas;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void

    .line 748
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Sprite;->hitEdgeAbstract()Lcom/google/appinventor/components/common/Direction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Sprite;->EdgeReachedAbstract(Lcom/google/appinventor/components/common/Direction;)V

    .line 752
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->canvas:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Canvas;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Sprite;)V

    return-void
.end method

.method protected updateCoordinates()V
    .locals 6

    .line 909
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingCos:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xLeft:D

    .line 910
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->xCenter:D

    .line 911
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    iget v2, p0, Lcom/google/appinventor/components/runtime/Sprite;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Sprite;->headingSin:D

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yTop:D

    .line 912
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Sprite;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Sprite;->yCenter:D

    return-void
.end method
