.class public final Lcom/google/appinventor/components/runtime/ProgressBar;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

.field private ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

.field private backgroundColor:I

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    .line 45
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xff7475

    .line 38
    iput v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    const-string v1, "Wave"

    .line 41
    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 46
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ProgressBar;->Color(I)V

    .line 49
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ProgressBar;->AnimationStyle(Ljava/lang/String;)V

    .line 52
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const p1, 0xffffff

    .line 55
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProgressBar;->BackgroundColor(I)V

    return-void
.end method

.method private ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V
    .locals 5

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    .line 183
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 184
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final AnimationStyle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current animation style"
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    return-object v0
.end method

.method public final AnimationStyle(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Wave"
        editorType = "progress_options"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, Wave animation will be used."
    .end annotation

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ProgressBar;->getSprite(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/sprite/Sprite;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    .line 97
    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->start()V

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    iget v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    invoke-virtual {p1, v0}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    .line 100
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setBounds(IIII)V

    .line 109
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 61
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->backgroundColor:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the background color of this component."
    .end annotation

    .line 67
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->backgroundColor:I

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    return-void
.end method

.method public final Color()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 73
    iget v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    return v0
.end method

.method public final Color(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF008b8b"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the component"
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/github/ybq/android/spinkit/sprite/Sprite;

    if-eqz v0, :cond_0

    .line 81
    iput p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:I

    .line 82
    invoke-virtual {v0, p1}, Lcom/github/ybq/android/spinkit/sprite/Sprite;->setColor(I)V

    :cond_0
    return-void
.end method

.method public final GetAnimationStyleNames()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets style names of all possible animations."
    .end annotation

    .line 88
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->getAnimationStyles()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    return-object v0
.end method

.method public final Height(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 169
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 170
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProgressBar;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V

    return-void
.end method

.method public final Width(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 176
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 177
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/ProgressBar;->ANz72NxTeEmYo9CF87MXRUuH7WvE4u0mpZwxffTnyiMdygEQRKvmdTCHaXqAvud()V

    return-void
.end method

.method public final getSprite(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/sprite/Sprite;
    .locals 2

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "doublebounce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "fadingcircle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "wanderingcubes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "threebounce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "chasingdots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "pulse"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "cubegrid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "rotatingcircle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "wave"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "foldingcube"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "rotatingplane"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "circle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string p1, "Wave"

    .line 153
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:Ljava/lang/String;

    .line 157
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Wave;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    return-object p1

    .line 126
    :pswitch_0
    new-instance p1, Lcom/github/ybq/android/spinkit/style/DoubleBounce;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/DoubleBounce;-><init>()V

    return-object p1

    .line 129
    :pswitch_1
    new-instance p1, Lcom/github/ybq/android/spinkit/style/FadingCircle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/FadingCircle;-><init>()V

    return-object p1

    .line 147
    :pswitch_2
    new-instance p1, Lcom/github/ybq/android/spinkit/style/WanderingCubes;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/WanderingCubes;-><init>()V

    return-object p1

    .line 144
    :pswitch_3
    new-instance p1, Lcom/github/ybq/android/spinkit/style/ThreeBounce;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/ThreeBounce;-><init>()V

    return-object p1

    .line 117
    :pswitch_4
    new-instance p1, Lcom/github/ybq/android/spinkit/style/ChasingDots;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/ChasingDots;-><init>()V

    return-object p1

    .line 135
    :pswitch_5
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Pulse;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Pulse;-><init>()V

    return-object p1

    .line 123
    :pswitch_6
    new-instance p1, Lcom/github/ybq/android/spinkit/style/CubeGrid;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/CubeGrid;-><init>()V

    return-object p1

    .line 138
    :pswitch_7
    new-instance p1, Lcom/github/ybq/android/spinkit/style/RotatingCircle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/RotatingCircle;-><init>()V

    return-object p1

    .line 150
    :pswitch_8
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Wave;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Wave;-><init>()V

    return-object p1

    .line 132
    :pswitch_9
    new-instance p1, Lcom/github/ybq/android/spinkit/style/FoldingCube;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/FoldingCube;-><init>()V

    return-object p1

    .line 141
    :pswitch_a
    new-instance p1, Lcom/github/ybq/android/spinkit/style/RotatingPlane;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/RotatingPlane;-><init>()V

    return-object p1

    .line 120
    :pswitch_b
    new-instance p1, Lcom/github/ybq/android/spinkit/style/Circle;

    invoke-direct {p1}, Lcom/github/ybq/android/spinkit/style/Circle;-><init>()V

    return-object p1

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
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ProgressBar;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/ProgressBar;

    return-object v0
.end method
