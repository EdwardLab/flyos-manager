.class final Lcom/google/appinventor/components/runtime/Canvas$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Canvas;)V
    .locals 0

    .line 1663
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 25

    move-object/from16 v0, p0

    .line 1667
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v10, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v11, p3, v3

    div-float v12, p4, v3

    mul-float v3, v11, v11

    mul-float v4, v12, v12

    add-float/2addr v3, v4

    float-to-double v3, v3

    .line 1674
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v13, v3

    float-to-double v3, v12

    float-to-double v5, v11

    .line 1675
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    neg-double v3, v3

    double-to-float v14, v3

    .line 1677
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Canvas;->Width()I

    move-result v3

    .line 1678
    iget-object v4, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Canvas;->Height()I

    move-result v4

    .line 1682
    new-instance v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;

    float-to-int v5, v1

    add-int/lit8 v6, v5, -0xc

    .line 1683
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    float-to-int v8, v10

    add-int/lit8 v15, v8, -0xc

    .line 1684
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 p1, v11

    move/from16 p2, v12

    int-to-double v11, v15

    const/16 v24, 0x1

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v5, v5, 0xc

    .line 1685
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-double v2, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v8, v8, 0xc

    .line 1686
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-double v4, v4

    move-object v15, v9

    move-wide/from16 v16, v6

    move-wide/from16 v18, v11

    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    invoke-direct/range {v15 .. v23}, Lcom/google/appinventor/components/runtime/util/BoundingBox;-><init>(DDDD)V

    .line 1690
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Canvas;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Canvas;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/appinventor/components/runtime/Sprite;

    .line 1691
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Enabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Sprite;->Visible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1692
    invoke-virtual {v3, v9}, Lcom/google/appinventor/components/runtime/Sprite;->intersectsWith(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    move v5, v10

    move v6, v13

    move v7, v14

    move/from16 v8, p1

    move-object v12, v9

    move/from16 v9, p2

    .line 1693
    invoke-virtual/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/Sprite;->Flung(FFFFFF)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move-object v12, v9

    :goto_1
    move-object v9, v12

    goto :goto_0

    .line 1697
    :cond_1
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/Canvas$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Canvas;

    move v4, v1

    move v5, v10

    move v6, v13

    move v7, v14

    move/from16 v8, p1

    move/from16 v9, p2

    move v10, v11

    invoke-virtual/range {v3 .. v10}, Lcom/google/appinventor/components/runtime/Canvas;->Flung(FFFFFFZ)V

    return v24
.end method
