.class public Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Display a real Navigation Menu in the Side Menu"
    iconName = "images/makeroidSideMenuLayout.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "circleimageview.aar",
        "circleimageview.jar",
        "glide.jar"
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

.field private K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

.field private RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

.field private YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

.field private gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

.field private iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

.field private isCompanion:Z

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 10

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    const/high16 v1, -0x1000000

    .line 58
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    const v2, -0x616162

    .line 59
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    const v3, -0x17e19d

    .line 60
    iput v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v4, -0x1

    .line 61
    iput v4, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

    const/4 v5, 0x3

    new-array v6, v5, [[I

    const/4 v7, 0x1

    new-array v8, v7, [I

    const v9, 0x10100a0

    aput v9, v8, v0

    aput-object v8, v6, v0

    new-array v8, v7, [I

    const v9, 0x101009e

    aput v9, v8, v0

    aput-object v8, v6, v7

    new-array v8, v7, [I

    const v9, -0x101009e

    aput v9, v8, v0

    const/4 v9, 0x2

    aput-object v8, v6, v9

    .line 65
    iput-object v6, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    new-array v5, v5, [I

    aput v3, v5, v0

    aput v1, v5, v7

    aput v2, v5, v9

    .line 66
    iput-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 70
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    instance-of v1, v1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v1, :cond_0

    .line 74
    iput-boolean v7, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    .line 77
    :cond_0
    new-instance v1, Lcom/google/android/material/navigation/NavigationView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    .line 78
    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout$1;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$OnNavigationItemSelectedListener;)V

    .line 88
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v2, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v2, Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v2, v3, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    .line 90
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const-string v3, "navigation_item"

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    .line 94
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const-string v5, "ThemeOverlay.AppCompat.Dark"

    invoke-static {v2, v5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-direct {v1, v2, v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v5, 0xb0

    invoke-static {v3, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 99
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v3, 0x48

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    new-instance v2, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    .line 104
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v2, Lde/hdodenhof/circleimageview/CircleImageView;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 107
    invoke-virtual {v2, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    .line 110
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    const/16 v5, 0x8

    invoke-static {v2, v5}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v0, v2, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 112
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-static {v1, v2, v7, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 113
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 115
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 117
    new-instance v1, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    .line 118
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-static {v1, v2, v0, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 124
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 125
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationView;->addHeaderView(Landroid/view/View;)V

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, v7}, Lcom/google/android/material/navigation/NavigationView;->setFitsSystemWindows(Z)V

    .line 134
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/appinventor/components/runtime/Form;->SideMenuLayout(Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;)V

    .line 136
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->BackgroundColor(I)V

    .line 137
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->CircleHeaderPicture(Z)V

    .line 138
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->DisabledColor(I)V

    .line 139
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->EnabledColor(I)V

    .line 140
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderBackgroundImage(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderPicture(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderSubtitle(Ljava/lang/String;)V

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->HeaderTitle(Ljava/lang/String;)V

    .line 144
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->SelectedColor(I)V

    return-void
.end method


# virtual methods
.method public AddItem(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an item to the Navigation Menu"
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, p5, v1, v1, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const-string p5, ""

    .line 269
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 271
    :try_start_0
    iget-object p5, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p5

    invoke-static {p5, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 273
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 276
    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Could not load Image - "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "MakeroidSideMenuLayout"

    invoke-static {p5, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    :goto_0
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    const/4 p2, 0x1

    .line 280
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 281
    invoke-interface {p1, p4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 283
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the Sidemenu Layout"
    .end annotation

    .line 335
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the Sidemenu Layout"
    .end annotation

    .line 329
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->backgroundColor:I

    .line 330
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v0, p1}, Lcom/google/android/material/navigation/NavigationView;->setBackgroundColor(I)V

    return-void
.end method

.method public CircleHeaderPicture(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets (or not) the header picture to use a circle shape"
    .end annotation

    .line 166
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

    const-string v0, ""

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 168
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v2}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    return-void

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-virtual {p1, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {p1, v0, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    return-void
.end method

.method public CircleHeaderPicture()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns if the Header Picture is using a circular shape"
    .end annotation

    .line 180
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

    return v0
.end method

.method public DisabledColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the disabled elements of the SideMenu"
    .end annotation

    .line 249
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    return v0
.end method

.method public DisabledColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF9E9E9E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the disabled elements of the SideMenu"
    .end annotation

    .line 241
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 242
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 243
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 244
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public EnabledColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the enabled elements of the SideMenu"
    .end annotation

    .line 235
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    return v0
.end method

.method public EnabledColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the enabled elements of the SideMenu"
    .end annotation

    .line 227
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 228
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    const/4 v1, 0x2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 229
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 230
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public HeaderBackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Background Picture"
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    return-object v0
.end method

.method public HeaderBackgroundImage(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Background Picture"
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Ljava/lang/String;

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 191
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakeroidSideMenuLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public HeaderPicture()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the Header Picture of the Side Menu"
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    return-object v0
.end method

.method public HeaderPicture(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "image_asset"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Picture of the Side Menu"
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Ljava/lang/String;

    .line 151
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->gKFqoeV0mIepwKqPzQqyF42NDV4lXNBYlbBqvrWypn3hvG8Ace2UniGxwzdDn1SZ:Z

    const-string v1, ""

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lde/hdodenhof/circleimageview/CircleImageView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Lde/hdodenhof/circleimageview/CircleImageView;Z)V

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->context:Landroid/content/Context;

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Landroidx/appcompat/widget/AppCompatImageView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->isCompanion:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroidx/appcompat/widget/AppCompatImageView;Z)V

    return-void
.end method

.method public HeaderSubtitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Subtitle"
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    return-object v0
.end method

.method public HeaderSubtitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Subtitle"
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->K7dcZ0wsgklhxIEZ56TEizrYoocHIkvglPQDsEhhjdemR7bSblNU8EAyc3To8SV0:Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public HeaderTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the Header Title"
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    return-object v0
.end method

.method public HeaderTitle(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "text"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the Header Title"
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/widget/TextView;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public OnMenuItemClick(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the user clicks on an item of the Navigation Menu"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnMenuItemClick"

    .line 340
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveItem(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove an item from the Navigation Menu"
    .end annotation

    const/4 v0, 0x0

    .line 315
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 318
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 321
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public SelectedColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the selected element of the SideMenu"
    .end annotation

    .line 263
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    return v0
.end method

.method public SelectedColor(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFE81E63"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the color of the selected element of the SideMenu"
    .end annotation

    .line 255
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 256
    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->iA1fsPSZHTCVXA414XY2edBmEFVpo23ZLLJ3ntPGDoZ3Lc1O8L7tucf7fjSxdGWm:I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->YgDmThmc2Ht6J8LKfKFuGtMLp2AoFjdDlIONA2izriJdICsKCPKMX3dYEj8K1z4k:I

    const/4 v1, 0x2

    aput p1, v0, v1

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 257
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 258
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    new-instance v0, Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v0, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/navigation/NavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public UpdateItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update an item of the Navigation Menu"
    .end annotation

    const/4 v0, 0x0

    .line 288
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/Menu;

    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 291
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 292
    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    const-string v2, ""

    .line 293
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 294
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_1

    .line 297
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 302
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not load Image for update - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MakeroidSideMenuLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1
    :goto_1
    invoke-interface {v1, p4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 306
    invoke-interface {v1, p5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 308
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationView;->invalidate()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSideMenuLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/navigation/NavigationView;

    return-object v0
.end method
