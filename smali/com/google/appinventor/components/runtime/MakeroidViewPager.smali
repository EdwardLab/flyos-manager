.class public Lcom/google/appinventor/components/runtime/MakeroidViewPager;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/viewPager.png"
    version = 0x3
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCENT_COLOR:I

.field private static final DEFAULT_PRIMARY_COLOR:I


# instance fields
.field private AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

.field private ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

.field private jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&HFF3F51B5"

    .line 48
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_PRIMARY_COLOR:I

    const-string v0, "&HFFFF4081"

    .line 49
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_ACCENT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

    const/high16 v1, -0x1000000

    .line 51
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 52
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 60
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    .line 64
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    .line 65
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    new-instance v2, Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    .line 68
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    .line 71
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 73
    new-instance v2, Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroidx/viewpager/widget/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/16 v4, 0xa

    .line 74
    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 75
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidViewPager$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)V

    invoke-virtual {v2, v4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 91
    new-instance v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-direct {v2}, Landroidx/viewpager/widget/ViewPager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 92
    iput v0, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->height:I

    .line 93
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    iput v0, v2, Landroidx/viewpager/widget/ViewPager$LayoutParams;->width:I

    .line 95
    new-instance v2, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;B)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    .line 96
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 98
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager$LayoutParams;

    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 102
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 104
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsBackgroundColor(I)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsIndicatorColor(I)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsTextColor(I)V

    .line 107
    sget p1, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsActiveTextColor(I)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->TabsMode(I)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ShowTabs(Z)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Visible(Z)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Width(I)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->Height(I)V

    const-string p1, "Makeroid View Pager"

    const-string v0, "Makeroid View Pager Created"

    .line 114
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Ljava/lang/String;)V
    .locals 2

    .line 1273
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1274
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    const/4 p1, 0x0

    .line 1279
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 1281
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->getTabAt(I)Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1283
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Makeroid View Pager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public AddComponentToView(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a component to the view pager. The first added component will be the first visible component on the screen."
    .end annotation

    .line 196
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidViewPager;Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Makeroid View Pager"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public GetCurrentPage()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current selected visible page."
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid View Pager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public Height(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 139
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    return-void
.end method

.method public PageSelected(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a page was selected."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "PageSelected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public RemoveAllTabs()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all tab\'s from view pager."
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public RemoveViewAt(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes a before added view from the view pager. If you want to delete the first page then use as position \'1\'."
    .end annotation

    const-string v0, "Makeroid View Pager"

    if-lez p1, :cond_0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, v2, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroidx/viewpager/widget/ViewPager;I)I

    .line 153
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {v1, p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)V

    .line 154
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 160
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroidx/viewpager/widget/ViewPager;I)I

    .line 161
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {p1, v2}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)V

    .line 162
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/MakeroidViewPager$a;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 164
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SelectPage(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Select a page which is then the active page. Use \'1\' to select the first page."
    .end annotation

    const/4 v0, 0x1

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 175
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Makeroid View Pager"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public ShowTabs(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "experimental"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, you will see tabs above the view pager."
    .end annotation

    .line 318
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 321
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    return-void

    .line 323
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    return-void
.end method

.method public ShowTabs()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 329
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    return v0
.end method

.method public TabsActiveTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 269
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    return v0
.end method

.method public TabsActiveTextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFF4081"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s text color for active tab\'s."
    .end annotation

    .line 263
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 264
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public TabsBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 230
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    return v0
.end method

.method public TabsBackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s background color."
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 225
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    return-void
.end method

.method public TabsIndicatorColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 243
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

    return v0
.end method

.method public TabsIndicatorColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s indicator color."
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 238
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

    return-void
.end method

.method public TabsMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabMode()I

    move-result v0

    return v0
.end method

.method public TabsMode(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "tabs_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Choose the mode used for the tab\'s. If no mode is specified, \'Scrollable\' is taken as \'Default\'. Use \'0\' for scrollable and \'1\' for fixed."
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void
.end method

.method public TabsTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 256
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    return v0
.end method

.method public TabsTextColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the tab\'s text color for not selected tab\'s."
    .end annotation

    .line 250
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public Visible(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether the component should be visible on the screen. Value is true if the component is showing and false if hidden."
    .end annotation

    .line 348
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 349
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    if-eqz p1, :cond_1

    .line 350
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    return-void

    .line 352
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 360
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Width(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 130
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onOrientationChange()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->ZjHRxIxmIbXMaaxTq0tXk7fANzHmvqKL8qVP5oGbbjVmTEOJkL3QkM6pcvCB7aNQ:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidViewPager;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    return-void
.end method
