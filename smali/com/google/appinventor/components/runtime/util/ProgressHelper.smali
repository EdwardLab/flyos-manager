.class public Lcom/google/appinventor/components/runtime/util/ProgressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationStyles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ChasingDots,Circle,CubeGrid,DoubleBounce,FadingCircle,FoldingCube,Pulse,RotatingCircle,RotatingPlane,ThreeBounce,WanderingCubes,Wave"

    const-string v1, "\\s*,\\s*"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "doublebounce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "fadingcircle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "wanderingcubes"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "threebounce"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "chasingdots"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "pulse"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v2, "cubegrid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_7
    const-string v2, "rotatingcircle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v2, "wave"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_9
    const-string v2, "foldingcube"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_a
    const-string v2, "rotatingplane"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_b
    const-string v2, "circle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x0

    :goto_1
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move-object p1, v2

    goto :goto_2

    .line 32
    :pswitch_0
    new-instance p1, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    goto :goto_2

    .line 36
    :pswitch_1
    new-instance p1, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    goto :goto_2

    .line 60
    :pswitch_2
    new-instance p1, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    goto :goto_2

    .line 56
    :pswitch_3
    new-instance p1, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    goto :goto_2

    .line 21
    :pswitch_4
    new-instance p1, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    goto :goto_2

    .line 44
    :pswitch_5
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Pulse;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    goto :goto_2

    .line 28
    :pswitch_6
    new-instance p1, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    goto :goto_2

    .line 48
    :pswitch_7
    new-instance p1, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    goto :goto_2

    .line 63
    :pswitch_8
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Wave;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    goto :goto_2

    .line 40
    :pswitch_9
    new-instance p1, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    goto :goto_2

    .line 52
    :pswitch_a
    new-instance p1, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    goto :goto_2

    .line 24
    :pswitch_b
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Circle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    :goto_2
    if-eqz p1, :cond_c

    .line 71
    invoke-virtual {p1, v6, v6, p3, p3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 72
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 73
    invoke-virtual {p1, p4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 77
    :cond_c
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_1

    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    :sswitch_c
    const-string p3, "right"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_3

    :sswitch_d
    const-string p3, "top"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_3

    :cond_d
    const/4 v3, 0x1

    goto :goto_4

    :sswitch_e
    const-string p3, "bottom"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    goto :goto_3

    :cond_e
    const/4 v3, 0x0

    :cond_f
    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 88
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 82
    :pswitch_c
    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 79
    :pswitch_d
    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 85
    :pswitch_e
    invoke-virtual {p0, v2, v2, v2, p1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51134330 -> :sswitch_b
        -0x30c05dfc -> :sswitch_a
        -0x2c36c40a -> :sswitch_9
        0x3792f9 -> :sswitch_8
        0x262ea28 -> :sswitch_7
        0x6482cfb -> :sswitch_6
        0x6611b99 -> :sswitch_5
        0x1e5a47f5 -> :sswitch_4
        0x442a6da6 -> :sswitch_3
        0x4891e9e9 -> :sswitch_2
        0x52813249 -> :sswitch_1
        0x57b39199 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x527265d5 -> :sswitch_e
        0x1c155 -> :sswitch_d
        0x677c21c -> :sswitch_c
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch
.end method
