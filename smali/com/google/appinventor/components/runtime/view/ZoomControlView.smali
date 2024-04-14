.class public Lcom/google/appinventor/components/runtime/view/ZoomControlView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

.field private ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

.field private final wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 17

    move-object/from16 v0, p0

    .line 29
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    move-object/from16 v1, p1

    .line 32
    iput-object v1, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    const/4 v2, 0x1

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setOrientation(I)V

    .line 34
    new-instance v3, Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    .line 35
    new-instance v4, Landroid/widget/Button;

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    const-string v1, "+"

    .line 36
    invoke-direct {v0, v3, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V

    const-string v1, "\u2212"

    .line 37
    invoke-direct {v0, v4, v1}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$1;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v1, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;

    invoke-direct {v1, v0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView$2;-><init>(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)V

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget v1, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    .line 1093
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v8, 0x8

    new-array v9, v8, [F

    int-to-float v1, v1

    const/4 v10, 0x0

    aput v1, v9, v10

    aput v1, v9, v2

    const/4 v11, 0x2

    aput v1, v9, v11

    const/4 v12, 0x3

    aput v1, v9, v12

    const/4 v1, 0x4

    const/4 v13, 0x0

    aput v13, v9, v1

    const/4 v14, 0x5

    aput v13, v9, v14

    const/4 v15, 0x6

    aput v13, v9, v15

    const/16 v16, 0x7

    aput v13, v9, v16

    const/4 v15, 0x0

    invoke-direct {v7, v9, v15, v15}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1094
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    invoke-static {v3, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget v6, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float v6, v6, v5

    float-to-int v5, v6

    .line 1100
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/RoundRectShape;

    new-array v8, v8, [F

    aput v13, v8, v10

    aput v13, v8, v2

    aput v13, v8, v11

    aput v13, v8, v12

    int-to-float v5, v5

    aput v5, v8, v1

    aput v5, v8, v14

    const/4 v1, 0x6

    aput v5, v8, v1

    aput v5, v8, v16

    invoke-direct {v7, v8, v15, v15}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1101
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-static {v4, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-array v1, v11, [[I

    new-array v5, v2, [I

    const v6, -0x101009e

    aput v6, v5, v10

    aput-object v5, v1, v10

    new-array v5, v2, [I

    const v6, 0x101009e

    aput v6, v5, v10

    aput-object v5, v1, v2

    new-array v2, v11, [I

    .line 58
    fill-array-data v2, :array_0

    .line 62
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 63
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 66
    invoke-virtual {v0, v4}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->addView(Landroid/view/View;)V

    .line 68
    iget v1, v0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v3, v1, v2

    float-to-int v3, v3

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v1, v10, v10}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->setPadding(IIII)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->updateButtons()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x333334
        -0x1000000
    .end array-data
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/view/ZoomControlView;)Lorg/osmdroid/views/MapView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41b00000    # 22.0f

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 85
    iget p2, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    const/high16 v0, 0x41f00000    # 30.0f

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setWidth(I)V

    .line 86
    iget p2, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->ihRLpfoglw4vpN1eVLFIksSKviBvteBH3bd3uSRN7VsdBdKQo5NWEdm996sfoJhJ:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setHeight(I)V

    .line 87
    invoke-virtual {p1}, Landroid/widget/Button;->setSingleLine()V

    const/16 p2, 0x11

    .line 88
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setGravity(I)V

    return-void
.end method


# virtual methods
.method public final updateButtons()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->canZoomIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/Button;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/view/ZoomControlView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lorg/osmdroid/views/MapView;

    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->canZoomOut()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
