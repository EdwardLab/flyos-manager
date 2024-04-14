.class public final Lcom/dreamers/bubbletabbar/repack/c;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Lcom/dreamers/bubbletabbar/repack/f;

.field public b:Lcom/dreamers/bubbletabbar/repack/b;

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/dreamers/bubbletabbar/repack/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributes"

    invoke-static {p2, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const p1, -0x777778

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->c:I

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const-string v0, "DEFAULT"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->j:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/dreamers/bubbletabbar/repack/c;->setOrientation(I)V

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/dreamers/bubbletabbar/repack/c;->setGravity(I)V

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->a:I

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->c:I

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->b:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->e:F

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->c:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->d:F

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->d:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->f:F

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->e:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->g:F

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->f:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->h:F

    iget p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->g:F

    iput p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->i:F

    iget-object p1, p2, Lcom/dreamers/bubbletabbar/repack/e;->h:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->j:Landroid/graphics/Typeface;

    return-void
.end method

.method static final synthetic a(Lcom/dreamers/bubbletabbar/repack/c;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    const-string v2, "null cannot be cast to non-null type io.ak1.Bubble"

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/dreamers/bubbletabbar/repack/b;->getId()I

    move-result v1

    if-eq v1, v0, :cond_1

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/b;

    invoke-virtual {v0}, Lcom/dreamers/bubbletabbar/repack/b;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    invoke-static {v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    check-cast p1, Lcom/dreamers/bubbletabbar/repack/b;

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    iget-object p0, p0, Lcom/dreamers/bubbletabbar/repack/c;->a:Lcom/dreamers/bubbletabbar/repack/f;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/dreamers/bubbletabbar/repack/b;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/dreamers/bubbletabbar/repack/f;->a(I)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    const-string v0, "menuItems"

    invoke-static {p1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/c;->removeAllViews()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "-->"

    invoke-static {v1, v0}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "menu "

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamers/bubbletabbar/repack/g;

    iget v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->a:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->d:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->h:F

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->f:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->i:F

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->g:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->k:F

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->e:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->j:F

    iget-object v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->j:Landroid/graphics/Typeface;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Lcom/dreamers/bubbletabbar/repack/n;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->g:Landroid/graphics/Typeface;

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->c:I

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->n:I

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->h:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->l:F

    iget v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->i:F

    iput v1, v0, Lcom/dreamers/bubbletabbar/repack/g;->m:F

    new-instance v1, Lcom/dreamers/bubbletabbar/repack/b;

    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/c;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    invoke-static {v2, v3}, Lcom/dreamers/bubbletabbar/repack/n;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0}, Lcom/dreamers/bubbletabbar/repack/b;-><init>(Landroid/content/Context;Lcom/dreamers/bubbletabbar/repack/g;)V

    iget-boolean v0, v0, Lcom/dreamers/bubbletabbar/repack/g;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/dreamers/bubbletabbar/repack/b;->setSelected(Z)V

    iput-object v1, p0, Lcom/dreamers/bubbletabbar/repack/c;->b:Lcom/dreamers/bubbletabbar/repack/b;

    :cond_0
    new-instance v0, Lcom/dreamers/bubbletabbar/repack/d;

    invoke-direct {v0, p0}, Lcom/dreamers/bubbletabbar/repack/d;-><init>(Lcom/dreamers/bubbletabbar/repack/c;)V

    invoke-virtual {v1, v0}, Lcom/dreamers/bubbletabbar/repack/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/dreamers/bubbletabbar/repack/l;->a:Lcom/dreamers/bubbletabbar/repack/l;

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/dreamers/bubbletabbar/repack/c;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/ExceptionInInitializerError;

    const-string v0, "Id is not added in menu item"

    invoke-direct {p1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Lcom/dreamers/bubbletabbar/repack/c;->invalidate()V

    return-void
.end method
