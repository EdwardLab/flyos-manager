.class public Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)V
    .locals 1

    .line 400
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const-string p1, "ListViewImageText"

    const-string v0, "ListAdapter Created"

    .line 401
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 398
    check-cast p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->onBindViewHolder(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;I)V
    .locals 6

    .line 413
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 414
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->isCompanion:Z

    invoke-static {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 416
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 417
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    .line 419
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 420
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)F

    move-result v2

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 422
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 425
    :cond_0
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 428
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v4

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 431
    :cond_1
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)I

    move-result v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    :goto_1
    const/4 v0, 0x1

    .line 434
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-lez v2, :cond_3

    .line 435
    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 436
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 437
    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 439
    :cond_2
    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 442
    :cond_3
    iget-object v0, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const/4 v0, 0x2

    .line 444
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 445
    iget-object v2, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 447
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 449
    :cond_4
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 452
    :cond_5
    iget-object p1, p1, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 398
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;
    .locals 4

    .line 407
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "makeroid_list_image_text_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 408
    new-instance p2, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;Landroid/view/View;)V

    return-object p2
.end method
