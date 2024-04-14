.class public final Lcom/google/appinventor/components/runtime/LinearLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LinearLayout - preferredEmptyWidth and preferredEmptyHeight must be either both null or both not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_2
    :goto_0
    new-instance v0, Lcom/google/appinventor/components/runtime/LinearLayout$1;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/google/appinventor/components/runtime/LinearLayout$1;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    if-nez p2, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 98
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public final add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "I am adding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getLayoutManager()Landroid/view/ViewGroup;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final setBaselineAligned(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    return-void
.end method

.method public final setHorizontalGravity(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    return-void
.end method

.method public final setVerticalGravity(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LinearLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVerticalGravity(I)V

    return-void
.end method
