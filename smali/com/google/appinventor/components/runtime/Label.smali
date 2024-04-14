.class public final Lcom/google/appinventor/components/runtime/Label;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Label displays a piece of text, which is specified through the <code>Text</code> property.  Other properties, all of which can be set in the Designer or Blocks Editor, control the appearance and placement of the text."
    version = 0xa
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "spinkit.jar"
    }
.end annotation


# instance fields
.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private backgroundColor:I

.field private clickable:Z

.field private cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Z

.field private fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

.field private fontTypeface:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout$LayoutParams;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

.field private rotationAngle:D

.field private tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

.field private textColor:I

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 6

    .line 57
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->clickable:Z

    const-wide/16 v1, 0x0

    .line 53
    iput-wide v1, p0, Lcom/google/appinventor/components/runtime/Label;->rotationAngle:D

    .line 54
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 58
    new-instance v3, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    .line 59
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 65
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 68
    instance-of v5, v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v5, :cond_0

    .line 69
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x2

    .line 70
    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->calculatePixels(Landroid/view/View;I)I

    move-result v4

    iput v4, p0, Lcom/google/appinventor/components/runtime/Label;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    goto :goto_0

    .line 72
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Label;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    const/4 v4, 0x0

    .line 73
    iput-object v4, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout$LayoutParams;

    const-string v4, "Label"

    const-string v5, "Error: The label\'s view does not have linear layout parameters"

    .line 74
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 78
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->TextAlignment(I)V

    const v4, 0xffffff

    .line 79
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/Label;->BackgroundColor(I)V

    .line 80
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 81
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v3, v0, p1, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->FontSize(F)V

    const-string p1, ""

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    const/high16 p1, -0x1000000

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->TextColor(I)V

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->HTMLFormat(Z)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->HasMargins(Z)V

    .line 87
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Label;->Clickable(Z)V

    .line 88
    invoke-virtual {p0, v1, v2}, Lcom/google/appinventor/components/runtime/Label;->RotationAngle(D)V

    return-void
.end method


# virtual methods
.method public final AnimationStyle(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed.Position can be: top, left, right, bottom. Size can be 100. "
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1369
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1371
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 191
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 198
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->backgroundColor:I

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    return-void

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const v0, 0xffffff

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 98
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Clickable(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the component clickable or not clickable."
    .end annotation

    .line 109
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->clickable:Z

    const/16 v0, 0x17

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 112
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 113
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v0, :cond_0

    .line 114
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    new-array v0, v2, [I

    const v2, 0x101030e

    aput v2, v0, v1

    .line 1147
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1149
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Label$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Label$1;-><init>(Lcom/google/appinventor/components/runtime/Label;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    new-instance v0, Lcom/google/appinventor/components/runtime/Label$2;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Label$2;-><init>(Lcom/google/appinventor/components/runtime/Label;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void

    .line 131
    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    if-lt p1, v0, :cond_2

    .line 132
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method public final Clickable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 142
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->clickable:Z

    return v0
.end method

.method public final FontBold(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 216
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 217
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public final FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 209
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public final FontItalic(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 230
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 231
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public final FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 223
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public final FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public final FontSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public final FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 267
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    return v0
.end method

.method public final FontTypeface(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 274
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->fontTypeface:I

    .line 275
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public final FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 331
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Label;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Label;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final HTMLFormat(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 305
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    .line 306
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Label;->Text()Ljava/lang/String;

    move-result-object p1

    .line 307
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Label;->Text(Ljava/lang/String;)V

    return-void
.end method

.method public final HTMLFormat()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this label will show html text else it will show plain text. Note: Not all HTML is supported."
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    return v0
.end method

.method public final HasMargins(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 246
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Z

    if-eqz p1, :cond_0

    .line 247
    iget p1, p0, Lcom/google/appinventor/components/runtime/Label;->fSI6lxX8qEfUYa0M3qSNEhqEY7tqyd89UewYfJ8WSYLJpTsAFdRvTVg7ORBsMzG8:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 249
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final HasMargins()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Reports whether or not the label appears with margins.  All four margins (left, right, top, bottom) are the same.  This property has no effect in the designer, where labels are always shown with margins."
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->cxDeivMnEpGbjLe4A1R1VhwwbdnX12vGTzD2ggofq0XWzd0wEZ70Vx6p1IyPlwn3:Z

    return v0
.end method

.method public final LongClick()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user has done a simple \"Long Click\"."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LongClick"

    .line 103
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Marquee(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 340
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Label;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 343
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method

.method public final Marquee()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 349
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->nn72cmMvpJDARAoxBpvS24CN9Of9fpinGcvMsNPLOdwkLzCSrjpb4bynF9b6riOG:Z

    return v0
.end method

.method public final MaxLines(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2147483647"
        editorType = "non_negative_integer"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    return-void
.end method

.method public final RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the label is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .line 167
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Label;->rotationAngle:D

    return-wide v0
.end method

.method public final RotationAngle(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 160
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/Label;->rotationAngle:D

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    return-void
.end method

.method public final SetShadow(FFFI)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Place a blurred shadow of text underneath the text, drawn with the specified x, y, radius, color (e.g. -11, 12, 13, black "
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShadow(Landroid/widget/TextView;FFFI)V

    return-void
.end method

.method public final Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 280
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 286
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Label;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:Z

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public final TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 178
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public final TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 185
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    .line 186
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public final TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 312
    iget v0, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    return v0
.end method

.method public final TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 319
    iput p1, p0, Lcom/google/appinventor/components/runtime/Label;->textColor:I

    if-eqz p1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Label;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/TextView;

    return-object v0
.end method
