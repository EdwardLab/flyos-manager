.class final Lcom/google/appinventor/components/runtime/ListView$2;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ListView;->listUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ListView;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    const p1, 0x1090003

    const v0, 0x1020014

    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 262
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 263
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 264
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 265
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView$2;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ListView$2;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 271
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result p3

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 274
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)Z

    move-result v1

    invoke-static {p1, p3, v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 275
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/ListView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/ListView;)Z

    move-result v2

    invoke-static {p1, p3, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 279
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 280
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 281
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/widget/EditText;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/ListView;)F

    move-result p3

    invoke-static {p1, p3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    .line 283
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 285
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    .line 286
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 p1, p1, 0x64

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/ListView;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R(Lcom/google/appinventor/components/runtime/ListView;)I

    move-result v0

    mul-int p1, p1, v0

    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 287
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ListView$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ListView;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/ListView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ListView;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method
