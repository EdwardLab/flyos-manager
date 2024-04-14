.class public Lcom/google/appinventor/components/runtime/GridView;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/gridview.png"
    nonVisible = false
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/GridView$MyAdapter;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

.field private backgroundColor:I

.field private backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

.field private imagePath:Ljava/lang/String;

.field private kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

.field private q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

.field private rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:I

.field private textColor:I

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 70
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x5

    .line 53
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    const/4 v0, 0x4

    .line 54
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    const-wide/16 v0, 0x0

    .line 55
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    const/16 v0, 0x96

    .line 56
    iput v0, p0, Lcom/google/appinventor/components/runtime/GridView;->rtyU3Uj4Fd2cS2DWhNVfozs9qaFOsy3YcN33Msvg0fbnB6MZpRvgk3PrzB8p4A:I

    const-string v0, ""

    .line 57
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/GridView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    const/high16 v2, -0x1000000

    .line 61
    iput v2, p0, Lcom/google/appinventor/components/runtime/GridView;->textColor:I

    const-string v3, "GridView"

    .line 62
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    .line 73
    new-instance v3, Landroid/widget/GridView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    .line 74
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GridView;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

    .line 76
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/GridView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/GridView;->StretchEnabled(Z)V

    .line 80
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setGravity(I)V

    .line 82
    iget v1, p0, Lcom/google/appinventor/components/runtime/GridView;->q0Zein2OQsQpQMJEzcCMbVGzaOYlGS7C9oJS7mmTl1ea6jnbwE6PEACmMQoD3fbj:I

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GridView;->Columns(I)V

    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GridView;->BackgroundColor(I)V

    .line 85
    new-instance v3, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    const/high16 v1, 0x41600000    # 14.0f

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/GridView;->FontSize(F)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/GridView;->TextColor(I)V

    .line 90
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GridView;->ElementsFromString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public AfterPicking(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers after an item from this component has been selected"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterPicking"

    .line 329
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the background color. "
    .end annotation

    .line 226
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color. "
    .end annotation

    .line 220
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    .line 221
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setBackgroundColor(I)V

    return-void
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 2

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 209
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 1234
    iget p1, p0, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    if-nez p1, :cond_1

    .line 1236
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 1239
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setBackgroundColor(I)V

    return-void

    .line 1244
    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 212
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GridView;->imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public ClearGridView()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the items from the component"
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->clear()V

    .line 111
    new-instance v0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GridView;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    .line 112
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setElements([Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/GridView;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public Columns()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns number of columns for this component"
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    return v0
.end method

.method public Columns(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets number of columns used for this component"
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 271
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    return-void
.end method

.method public Elements()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the list of elements"
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    return-object v0
.end method

.method public Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "List of elements to be used for GridView"
    .end annotation

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 173
    new-instance v0, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GridView;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;-><init>(Lcom/google/appinventor/components/runtime/GridView;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    .line 174
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setElements([Ljava/lang/String;)V

    .line 175
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public ElementsFromString(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The elements specified as a string with the items separated by commas such as: Cheese,Fruit,Bacon,Radish. Each word before the comma will be an element in the list."
    .end annotation

    .line 104
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ElementsUtil;->elementsFromString(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 105
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GridView;->Elements(Lcom/google/appinventor/components/runtime/util/YailList;)V

    return-void
.end method

.method public FontSize()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the font size of the elements"
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->getFontSize()F

    move-result v0

    return v0
.end method

.method public FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the font size of the elements"
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setFontSize(F)V

    return-void
.end method

.method public Padding()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 197
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    return v0
.end method

.method public Padding(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The amount of padding (in DIP) on left, top, right, bottom"
    .end annotation

    .line 188
    iput p1, p0, Lcom/google/appinventor/components/runtime/GridView;->kWxA7iNqyKKEpChQAnU1BbhddsMkflBuiFLQemEhYlpBrkEZoiOWj50aF76hVGct:I

    .line 189
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setPadding(I)V

    return-void
.end method

.method public Selection()Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the selected item from GridView"
    .end annotation

    .line 308
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    iget-wide v1, p0, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Selection(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the selection to the GridView"
    .end annotation

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 296
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/GridView;->Elements()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    const/4 v1, 0x0

    .line 297
    :goto_0
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 298
    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {p1, v1}, Landroid/widget/GridView;->setSelection(I)V

    int-to-long v0, v1

    .line 300
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public StretchEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Control how items are stretched to fill their space"
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/GridView;->Zv9msgDgBftU4SA7C2ygCk7MYKz0i3cazgjcHvHHF7brwk6qR9wS1wUER4Y8ppMY:Z

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setStretchMode(I)V

    return-void

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setStretchMode(I)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/GridView;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->setTextColor(I)V

    return-void
.end method

.method public ThumbnailHeight()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current height of thumbnails"
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I

    move-result v0

    return v0
.end method

.method public ThumbnailHeight(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "155"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the thumbnail height in DIP (Density Independent Pixels)"
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V

    .line 283
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public ThumbnailWidth()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets current width of thumbnails"
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;)I

    move-result v0

    return v0
.end method

.method public ThumbnailWidth(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "155"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the thumbnail width in DIP (Density Independent Pixels)"
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/GridView$MyAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GridView$MyAdapter;I)V

    .line 252
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GridView$MyAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 253
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GridView;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/GridView;

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

    .line 323
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/GridView;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:J

    .line 324
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/GridView;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {p1, p3}, Lcom/google/appinventor/components/runtime/util/YailList;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/GridView;->AfterPicking(Ljava/lang/String;)V

    return-void
.end method
