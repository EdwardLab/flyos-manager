.class public Lcom/google/appinventor/components/runtime/GalleryViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that shows items in a center-locked, horizontally scrolling list"
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GalleryViewer$a;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailList;

.field private PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, "GalleryViewer"

    .line 34
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->TAG:Ljava/lang/String;

    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    const/4 v0, -0x2

    .line 39
    iput v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    .line 47
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->context:Landroid/content/Context;

    .line 49
    new-instance v0, Landroid/widget/Gallery;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    .line 50
    iget v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 51
    new-instance v0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/GalleryViewer$a;-><init>(Lcom/google/appinventor/components/runtime/GalleryViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    .line 52
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 55
    iget p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:I

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer;->Width(I)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer;)Ljava/lang/String;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public AfterPicking(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggered after an image is selected. It will also report selected image name"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterPicking"

    .line 165
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Images()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Images(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 1208
    iput-object p1, v0, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:[Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 69
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    invoke-virtual {p1}, Landroid/widget/Gallery;->requestLayout()V

    return-void
.end method

.method public Padding()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 90
    iget v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    return v0
.end method

.method public Padding(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "5"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the spacing (in DIP) between images"
    .end annotation

    .line 81
    iput p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:I

    .line 82
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GalleryViewer;->Images()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    :goto_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    invoke-virtual {p1, v1}, Landroid/widget/Gallery;->setSelection(I)V

    int-to-long v0, v1

    .line 128
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ThumbnailHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I

    move-result v0

    return v0
.end method

.method public ThumbnailHeight(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the height of thumbnail in DIP (Density Independent Pixel)"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V

    .line 111
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    invoke-virtual {p1}, Landroid/widget/Gallery;->requestLayout()V

    return-void
.end method

.method public ThumbnailWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;)I

    move-result v0

    return v0
.end method

.method public ThumbnailWidth(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the width of thumbnail in DIP (Density Independent Pixel)"
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GalleryViewer$a;I)V

    .line 98
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GalleryViewer$a;

    invoke-virtual {p1, v0}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 99
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    invoke-virtual {p1}, Landroid/widget/Gallery;->requestLayout()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Gallery;

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    int-to-long p1, p3

    .line 156
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    .line 157
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GalleryViewer;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GalleryViewer;->AfterPicking(Ljava/lang/String;)V

    return-void
.end method
