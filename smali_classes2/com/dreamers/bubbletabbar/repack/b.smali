.class public final Lcom/dreamers/bubbletabbar/repack/b;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/dreamers/bubbletabbar/repack/g;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dreamers/bubbletabbar/repack/g;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->b:Landroid/widget/ImageView;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->c:Landroid/widget/TextView;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->d:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->h:F

    float-to-int p1, p1

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->e:I

    iget-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget p2, p2, Lcom/dreamers/bubbletabbar/repack/g;->i:F

    float-to-int p2, p2

    iput p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->f:I

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v0, v0, Lcom/dreamers/bubbletabbar/repack/g;->k:F

    float-to-int v0, v0

    iput v0, p0, Lcom/dreamers/bubbletabbar/repack/b;->g:I

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v1, v1, Lcom/dreamers/bubbletabbar/repack/g;->j:F

    float-to-int v1, v1

    iput v1, p0, Lcom/dreamers/bubbletabbar/repack/b;->h:I

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    invoke-virtual {p0, v2}, Lcom/dreamers/bubbletabbar/repack/b;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/16 v4, 0x11

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    sget-object v5, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v2}, Lcom/dreamers/bubbletabbar/repack/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->d:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, p2, p1, p2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput v4, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object p1, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->b:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    sget-object v4, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget-object v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget-boolean v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->d:Z

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    invoke-virtual {p2}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    iget-object v4, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v4, v4, Lcom/dreamers/bubbletabbar/repack/g;->n:I

    invoke-static {p2, v2, v4}, Lcom/dreamers/bubbletabbar/repack/h;->a(Landroid/widget/ImageView;II)V

    goto :goto_0

    :cond_0
    const v2, -0x777778

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/dreamers/bubbletabbar/repack/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->c:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1, p1, p1, p1}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAlignment(I)V

    sget-object v0, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->l:F

    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget-object p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->g:Landroid/graphics/Typeface;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget-object p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget p1, p1, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->d:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->b:Landroid/widget/ImageView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/dreamers/bubbletabbar/repack/b;->c:Landroid/widget/TextView;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object p2, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/dreamers/bubbletabbar/repack/b;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/b;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->jumpDrawablesToCurrentState()V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/b;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public final setSelected(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v1, v1, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->m:F

    invoke-static {p1, v0, v1, v2}, Lcom/dreamers/bubbletabbar/repack/h;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;IF)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/dreamers/bubbletabbar/repack/b;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/b;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v1, v1, Lcom/dreamers/bubbletabbar/repack/g;->e:I

    iget-object v2, p0, Lcom/dreamers/bubbletabbar/repack/b;->a:Lcom/dreamers/bubbletabbar/repack/g;

    iget v2, v2, Lcom/dreamers/bubbletabbar/repack/g;->m:F

    invoke-static {p1, v0, v1, v2}, Lcom/dreamers/bubbletabbar/repack/h;->b(Landroid/widget/TextView;Landroid/widget/LinearLayout;IF)V

    return-void
.end method
