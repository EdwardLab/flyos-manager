.class public Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isLayoutDirectionRTL()Z
    .locals 3

    .line 235
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 37
    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/content/Context;

    return-void
.end method

.method public static setSupportAutoMirrored(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    return-void
.end method

.method public static setSupportMargin(Landroid/view/ViewGroup$MarginLayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 71
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 72
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/FrameLayout$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 108
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/GridLayout$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    .line 126
    invoke-virtual {p0, p3}, Landroid/widget/GridLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/LinearLayout$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 90
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/RelativeLayout$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 144
    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/TableLayout$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TableLayout$LayoutParams;->setMargins(IIII)V

    .line 161
    invoke-virtual {p0, p1}, Landroid/widget/TableLayout$LayoutParams;->setMarginStart(I)V

    .line 162
    invoke-virtual {p0, p3}, Landroid/widget/TableLayout$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/TableRow$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    .line 179
    invoke-virtual {p0, p1}, Landroid/widget/TableRow$LayoutParams;->setMarginStart(I)V

    .line 180
    invoke-virtual {p0, p3}, Landroid/widget/TableRow$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportMargin(Landroid/widget/Toolbar$LayoutParams;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/Toolbar$LayoutParams;->setMargins(IIII)V

    .line 197
    invoke-virtual {p0, p1}, Landroid/widget/Toolbar$LayoutParams;->setMarginStart(I)V

    .line 198
    invoke-virtual {p0, p3}, Landroid/widget/Toolbar$LayoutParams;->setMarginEnd(I)V

    return-void
.end method

.method public static setSupportPadding(Landroid/view/View;IIII)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 53
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public static setSupportTextDirection(Landroid/widget/TextView;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextDirection()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/KodularRtlSupportUtil;->isLayoutDirectionRTL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method
