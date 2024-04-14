.class final Lcom/google/appinventor/components/runtime/Spinner$1;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Spinner;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
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
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Spinner;Landroid/content/Context;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    const p1, 0x1090008

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 82
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 84
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result p3

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Spinner;)I

    move-result p3

    const/4 v0, 0x1

    invoke-static {p1, p3, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    .line 94
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq(Lcom/google/appinventor/components/runtime/Spinner;)I

    move-result p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spinner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spinner;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result v1

    invoke-static {p1, p3, v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 95
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Spinner;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Spinner;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result v2

    invoke-static {p1, p3, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p3}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)F

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Spinner$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Spinner;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Spinner;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Spinner;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method
