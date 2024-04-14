.class public final Lcom/google/appinventor/components/runtime/KodularBottomNavigation;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NAVIGATION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that create a Bottom Navigation Menu in the app"
    iconName = "images/bottomNavigation.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

.field private ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

.field private backgroundColor:I

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    .line 41
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "&HFF6E6E6E"

    .line 34
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    const-string v0, "&HFF3F51B5"

    .line 35
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x10100a0

    const/4 v6, 0x0

    aput v5, v4, v6

    aput-object v4, v2, v6

    new-array v4, v3, [I

    const v5, 0x101009e

    aput v5, v4, v6

    aput-object v4, v2, v3

    .line 37
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    new-array v1, v1, [I

    aput v0, v1, v6

    .line 38
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    aput v0, v1, v3

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 44
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->context:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 48
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 50
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation$1;-><init>(Lcom/google/appinventor/components/runtime/KodularBottomNavigation;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    const/4 p1, -0x2

    .line 59
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->Width(I)V

    const/4 p1, -0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->Height(I)V

    .line 61
    invoke-virtual {p0, v6}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->BackgroundColor(I)V

    .line 62
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V

    return-void
.end method

.method private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 155
    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    .line 156
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[[I

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:[I

    invoke-direct {v1, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setItemIconTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final AddItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Add an item to the bottom menu"
    .end annotation

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, v1, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the Bottom Navigation Menu."
    .end annotation

    .line 76
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->backgroundColor:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the Bottom Navigation Menu"
    .end annotation

    .line 70
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->backgroundColor:I

    .line 71
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setBackgroundColor(I)V

    return-void
.end method

.method public final Height()I
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public final Height(I)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final HeightPercent(I)V
    .locals 0

    return-void
.end method

.method public final ItemSelected(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggers when an item was selected."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "ItemSelected"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final RemoveAllItems()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove all items from the bottom menu"
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    return-void
.end method

.method public final RemoveItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Remove an item from the bottom menu"
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->removeItem(I)V

    return-void
.end method

.method public final SelectItem(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Select an item from the bottom menu"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final SelectedColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the color of the selected item of the Bottom Navigation Menu"
    .end annotation

    .line 88
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    return v0
.end method

.method public final SelectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF3F51B5"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the selected item of the Bottom Navigation Menu"
    .end annotation

    .line 82
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->ZYL9KAfl6ZZzM9RsykyXLexYTPR8S0eQ9Guil6cW84HmbyBTkvTBFTgEwGE4p6T:I

    .line 83
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V

    return-void
.end method

.method public final UnselectedColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the color of the unselected items of the Bottom Navigation Menu"
    .end annotation

    .line 100
    iget v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    return v0
.end method

.method public final UnselectedColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF6E6E6E"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the color of the unselected items of the Bottom Navigation Menu"
    .end annotation

    .line 94
    iput p1, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->UCfQaCFj2ASJbfyESztjl1SvQCaE7JCSj517yoZD3j82N9syinSTFfGgPUXIenmO:I

    .line 95
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH()V

    return-void
.end method

.method public final UpdateItem(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Update an item of the bottom menu"
    .end annotation

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    invoke-virtual {v0}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final Width()I
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public final Width(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0, p0, p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

.method public final WidthPercent(I)V
    .locals 0

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularBottomNavigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    return-object v0
.end method
