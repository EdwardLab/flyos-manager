.class public Lcom/github/ybq/android/spinkit/SpriteFactory;
.super Ljava/lang/Object;
.source "SpriteFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/github/ybq/android/spinkit/Style;)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 1

    .line 27
    sget-object v0, Lcom/github/ybq/android/spinkit/SpriteFactory$1;->$SwitchMap$com$github$ybq$android$spinkit$Style:[I

    invoke-virtual {p0}, Lcom/github/ybq/android/spinkit/Style;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 71
    :pswitch_0
    new-instance p0, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/MultiplePulseRing;-><init>()V

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance p0, Lcom/github/ybq/android/spinkit/style/PulseRing;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/PulseRing;-><init>()V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance p0, Lcom/github/ybq/android/spinkit/style/MultiplePulse;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/MultiplePulse;-><init>()V

    goto :goto_0

    .line 62
    :pswitch_3
    new-instance p0, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    goto :goto_0

    .line 59
    :pswitch_4
    new-instance p0, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    goto :goto_0

    .line 56
    :pswitch_5
    new-instance p0, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    goto :goto_0

    .line 53
    :pswitch_6
    new-instance p0, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    goto :goto_0

    .line 50
    :pswitch_7
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Circle;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    goto :goto_0

    .line 47
    :pswitch_8
    new-instance p0, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    goto :goto_0

    .line 44
    :pswitch_9
    new-instance p0, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    goto :goto_0

    .line 41
    :pswitch_a
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Pulse;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    goto :goto_0

    .line 38
    :pswitch_b
    new-instance p0, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    goto :goto_0

    .line 35
    :pswitch_c
    new-instance p0, Lcom/github/ybq/android/spinkit/style/Wave;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    goto :goto_0

    .line 32
    :pswitch_d
    new-instance p0, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    goto :goto_0

    .line 29
    :pswitch_e
    new-instance p0, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    invoke-direct {p0}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
