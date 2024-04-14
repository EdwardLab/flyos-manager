.class public Lcom/google/appinventor/components/runtime/util/KodularHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    .line 114
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    .line 116
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 117
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_1

    .line 119
    move-object v1, p0

    check-cast v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 120
    check-cast p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    .line 126
    new-instance p0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 129
    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v2

    .line 131
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 135
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v3, v3, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 136
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1

    :cond_1
    return-object v0

    .line 141
    :cond_2
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static prepareRippleDrawable(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 5

    const-string v0, "KodularHelper"

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    const/4 p1, 0x1

    new-array v1, p1, [[I

    new-array v2, p1, [I

    const v3, 0x101009e

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v1, v4

    new-array p1, p1, [I

    aput p2, p1, v4

    .line 159
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 160
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    const-string p0, "Prepare new RippleDrawable successfully executed"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 163
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "KodularHelper"

    const-string v1, "wrong icon or icon was empty or null or not found. setAppBackgroundTaskInfo"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 105
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1, p1, v0, p2}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    :cond_0
    return-void
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;I)V
    .locals 1

    const-string v0, "KodularHelper"

    .line 191
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 192
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    const-string p0, "Set new buttonTintList successfully executed"

    .line 193
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 195
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setMarginToBtn(Landroid/widget/Button;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 225
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 226
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ","

    .line 227
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 230
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 231
    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    array-length p1, p2

    const-string v2, "KodularHelper"

    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 235
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 239
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 240
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 236
    invoke-virtual {p1, p2, v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 245
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 247
    :cond_1
    array-length p1, p2

    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 249
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 252
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 254
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    invoke-virtual {p1, v1, p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 259
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 261
    :cond_2
    array-length p1, p2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 263
    :try_start_2
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 266
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 267
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    .line 268
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 264
    invoke-virtual {p1, p2, v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p0

    .line 273
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static setMarginToButton(Landroid/widget/Button;Landroid/content/Context;IIII)V
    .locals 1

    .line 281
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    .line 284
    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p3

    .line 285
    invoke-static {p1, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p4

    .line 286
    invoke-static {p1, p5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 282
    invoke-virtual {v0, p2, p3, p4, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 290
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 1

    const-string v0, "KodularHelper"

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 85
    invoke-virtual {p0, p1}, Landroid/view/Window;->setNavigationBarColor(I)V

    const-string p0, "Set new navigationBarColor successfully executed"

    .line 86
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 88
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setPadding(Landroid/view/View;Landroid/content/Context;IIII)V
    .locals 0

    .line 205
    :try_start_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p2

    .line 206
    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p3

    .line 207
    invoke-static {p1, p4}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p4

    .line 208
    invoke-static {p1, p5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result p1

    .line 204
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 211
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setRippleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    const-string v0, "KodularHelper"

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    .line 173
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [[I

    new-array v5, v3, [I

    const v6, 0x101009e

    aput v6, v5, v2

    aput-object v5, v1, v2

    new-array v3, v3, [I

    aput p2, v3, v2

    .line 177
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, v1, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 178
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {v1, p2, v4, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 179
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    const-string p0, "Set new RippleDrawable successfully executed"

    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 182
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setShadow(Landroid/widget/TextView;FFFI)V
    .locals 0

    .line 316
    :try_start_0
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 317
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 319
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setShape(Landroid/view/View;IIZ)V
    .locals 2

    .line 299
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    .line 300
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    if-eqz p3, :cond_0

    const/high16 p3, 0x42480000    # 50.0f

    goto :goto_0

    :cond_0
    const/high16 p3, 0x41200000    # 10.0f

    .line 301
    :goto_0
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 p1, 0x3

    .line 303
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 304
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 307
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "KodularHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2

    const-string v0, "KodularHelper"

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v1, -0x80000000

    .line 71
    invoke-virtual {p0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 72
    invoke-virtual {p0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    const-string p0, "Set new statusBarColor successfully executed"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 75
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 3

    .line 328
    :try_start_0
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 329
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    const-string p0, "material"

    .line 333
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    const/4 p3, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    .line 334
    invoke-static {v0, p0, p3, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    goto :goto_0

    :cond_0
    const-string p0, "font_awesome"

    .line 335
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    .line 336
    invoke-static {v0, p0, p3, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    :cond_1
    :goto_0
    float-to-int p0, p4

    .line 341
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 342
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 344
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    .line 345
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float p4, p4

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p4, v1

    float-to-int p4, p4

    .line 347
    invoke-static {p2}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
