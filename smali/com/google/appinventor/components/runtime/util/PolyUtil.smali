.class public Lcom/google/appinventor/components/runtime/util/PolyUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    .line 22
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    return-void
.end method

.method private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D
    .locals 2

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double p0, p0, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public constructPolygonPath(Landroid/graphics/Path;IFFFFF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p6

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->reset()V

    move/from16 v6, p5

    float-to-double v6, v6

    int-to-double v8, v2

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v8

    .line 84
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v6

    double-to-float v12, v12

    cmpg-float v13, v12, v5

    if-gez v13, :cond_0

    .line 87
    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v3, v4, v12, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    return-void

    .line 89
    :cond_0
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-double v12, v12

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    const-wide v16, 0x4076800000000000L    # 360.0

    const/16 v18, 0x0

    cmpg-double v19, v12, v14

    if-gez v19, :cond_3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    int-to-double v10, v5

    div-double v12, v16, v8

    mul-double v10, v10, v12

    float-to-double v12, v3

    .line 1121
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double v14, v14, v6

    add-double/2addr v12, v14

    double-to-float v12, v12

    float-to-double v13, v4

    .line 1122
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v10, v10, v6

    add-double/2addr v13, v10

    double-to-float v10, v13

    if-nez v5, :cond_1

    .line 1125
    invoke-virtual {v1, v12, v10}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 1127
    :cond_1
    invoke-virtual {v1, v12, v10}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1132
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    goto :goto_3

    :cond_3
    const-wide v12, 0x4056800000000000L    # 90.0

    sub-double v10, v12, v10

    sub-double/2addr v12, v10

    double-to-float v12, v12

    float-to-double v13, v5

    .line 1145
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    div-double/2addr v13, v10

    sub-double/2addr v6, v13

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_4

    int-to-double v13, v10

    div-double v18, v16, v8

    mul-double v13, v13, v18

    move-wide/from16 v18, v8

    float-to-double v8, v3

    .line 1149
    invoke-static {v13, v14}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v20

    mul-double v20, v20, v6

    add-double v8, v8, v20

    double-to-float v8, v8

    float-to-double v2, v4

    .line 1150
    invoke-static {v13, v14}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(D)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    mul-double v20, v20, v6

    add-double v2, v2, v20

    double-to-float v2, v2

    .line 1152
    iget-object v3, v0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    sub-float v9, v8, v5

    sub-float v11, v2, v5

    add-float/2addr v8, v5

    add-float/2addr v2, v5

    invoke-virtual {v3, v9, v11, v8, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1169
    iget-object v2, v0, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/RectF;

    float-to-double v8, v12

    sub-double/2addr v13, v8

    double-to-float v3, v13

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v8, v8, v12

    invoke-virtual {v1, v2, v3, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v8, v18

    goto :goto_2

    .line 1176
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->close()V

    .line 106
    :goto_3
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    move/from16 v3, p3

    move/from16 v5, p7

    .line 107
    invoke-virtual {v2, v5, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 108
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public drawPolygon(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 9

    move-object v8, p0

    .line 48
    iget-object v1, v8, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/PolyUtil;->constructPolygonPath(Landroid/graphics/Path;IFFFFF)V

    .line 57
    iget-object v0, v8, Lcom/google/appinventor/components/runtime/util/PolyUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/graphics/Path;

    move-object v1, p1

    move-object/from16 v2, p8

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method
