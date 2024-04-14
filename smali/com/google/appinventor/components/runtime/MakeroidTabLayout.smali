.class public Lcom/google/appinventor/components/runtime/MakeroidTabLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/tabLayout.png"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
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

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

.field private jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&HFF3F51B5"

    .line 40
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->DEFAULT_PRIMARY_COLOR:I

    const-string v0, "&HFFFF4081"

    .line 41
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->DEFAULT_ACCENT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 50
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

    const/high16 v1, -0x1000000

    .line 43
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 44
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Ljava/util/ArrayList;

    .line 51
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnOrientationChangeListener(Lcom/google/appinventor/components/runtime/OnOrientationChangeListener;)V

    .line 53
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->context:Landroid/content/Context;

    .line 55
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->mainLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    new-instance v1, Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    .line 59
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    .line 62
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 63
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    new-instance v4, Lcom/google/appinventor/components/runtime/MakeroidTabLayout$1;

    invoke-direct {v4, p0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidTabLayout;)V

    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->mainLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 84
    sget v1, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->DEFAULT_PRIMARY_COLOR:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->TabsBackgroundColor(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->TabsIndicatorColor(I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->TabsTextColor(I)V

    .line 87
    sget v0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->DEFAULT_ACCENT_COLOR:I

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->TabsActiveTextColor(I)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->TabsMode(I)V

    .line 89
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->Width(I)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->Visible(Z)V

    .line 91
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    const-string p1, "Makeroid Tab Layout"

    const-string v0, "Makeroid Tab Layout Created"

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidTabLayout;)Lcom/google/android/material/tabs/TabLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Tab"

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->newTab()Lcom/google/android/material/tabs/TabLayout$Tab;

    move-result-object v0

    .line 207
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 209
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 211
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 214
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Makeroid Tab Layout"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 218
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, v0, p3}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;I)V

    return-void

    .line 220
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->addTab(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method


# virtual methods
.method public AddNewTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new tab to the tab layout. If you don\'t want a icon then let it empty."
    .end annotation

    const/4 v0, -0x1

    .line 195
    invoke-direct {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public AddNewTabAt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add a new tab to the tab layout at the given position. If you don\'t want a icon then let it empty."
    .end annotation

    .line 201
    invoke-direct {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public CountTabs()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the number of current added tab\'s."
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    move-result v0

    return v0
.end method

.method public GetCurrentTab()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current selected tab."
    .end annotation

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Makeroid Tab Layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public Height()I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public Height(I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public RemoveAllTabs()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all tab\'s from tab layout."
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->removeAllTabs()V

    return-void
.end method

.method public RemoveTabAt(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes a before added tab. If you want to delete the first tab then use as position \'1\'."
    .end annotation

    const-string v0, "Makeroid Tab Layout"

    if-lez p1, :cond_0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 142
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->removeTabAt(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SelectTab(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Select a tab which is then the active tab."
    .end annotation

    .line 163
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidTabLayout$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidTabLayout;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 177
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Tab Layout"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public TabItemSelected(Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The event returns the name or the position of the selected tab."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "TabItemSelected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public TabsActiveTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 273
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

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

    .line 267
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/tabs/TabLayout;->setTabTextColors(II)V

    return-void
.end method

.method public TabsBackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 234
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

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

    .line 228
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setBackgroundColor(I)V

    .line 229
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->JTEvmldvMjbbtPPlVS4hmZghOoRNnXC0kZOUUAZdwkVNl1VM5pL0vCTYv5HQZ7AX:I

    return-void
.end method

.method public TabsIndicatorColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 247
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

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

    .line 241
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 242
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->pFeTJgO2w7vELkZyStZDj0uZpMYRqdjcmMjC2zcPDquoynj4tIsgJjD3RDJtFf88:I

    return-void
.end method

.method public TabsMode()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

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

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 289
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void

    .line 284
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    return-void
.end method

.method public TabsTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 260
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

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

    .line 254
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->jKPsNUTq382ltO4Ct4VOTi9lUb0GK32zS6afcWmZUk1wuONzG2KH4rBMniXwxrgH:I

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/tabs/TabLayout;

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->AjvYp2jprm0xITJdrrGGtoOyEc1YvelLDxRNqR8p3eG4UJR1UusSlSmznC0GO8Nd:I

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

    .line 314
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 316
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    return-void

    .line 318
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

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

    .line 326
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->getView()Landroid/widget/LinearLayout;

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

    .line 109
    :cond_0
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    return-void
.end method

.method public bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->getView()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/widget/LinearLayout;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onOrientationChange()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->removeElevation()V

    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidTabLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->addElevation()V

    return-void
.end method
