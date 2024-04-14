.class public final Lcom/google/appinventor/components/runtime/util/ViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculatePixels(Landroid/view/View;I)I
    .locals 0

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p0, p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 185
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setChildHeightForHorizontalLayout(Landroid/view/View;I)V
    .locals 3

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 70
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 71
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 80
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 74
    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_0

    .line 77
    :cond_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have linear layout parameters"

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setChildHeightForTableLayout(Landroid/view/View;I)V
    .locals 3

    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 162
    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_2

    .line 163
    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 172
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 166
    :cond_0
    iput v2, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    goto :goto_0

    .line 169
    :cond_1
    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 175
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have table layout parameters"

    .line 177
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setChildHeightForVerticalLayout(Landroid/view/View;I)V
    .locals 4

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 117
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 118
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    .line 129
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 130
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 121
    :cond_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 122
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 125
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 126
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 133
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have linear layout parameters"

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setChildWidthForHorizontalLayout(Landroid/view/View;I)V
    .locals 4

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 44
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 45
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_0

    .line 56
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 57
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 48
    :cond_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 49
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 52
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 53
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 60
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have linear layout parameters"

    .line 62
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setChildWidthForTableLayout(Landroid/view/View;I)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    instance-of v1, v0, Landroid/widget/TableRow$LayoutParams;

    if-eqz v1, :cond_2

    .line 142
    check-cast v0, Landroid/widget/TableRow$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 151
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 145
    :cond_0
    iput v2, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    goto :goto_0

    .line 148
    :cond_1
    iput v1, v0, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 154
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have table layout parameters"

    .line 156
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setChildWidthForVerticalLayout(Landroid/view/View;I)V
    .locals 3

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_2

    .line 94
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    .line 103
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 97
    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 100
    :cond_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :cond_2
    const-string p0, "ViewUtil"

    const-string p1, "The view does not have linear layout parameters"

    .line 109
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 194
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public static setShape(Landroid/view/View;IIZ)V
    .locals 2

    .line 206
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p3, :cond_0

    const/high16 p3, 0x41c80000    # 25.0f

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 209
    :goto_0
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x3

    .line 211
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 212
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
