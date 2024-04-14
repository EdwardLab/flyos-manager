.class public abstract Lcom/google/appinventor/components/runtime/TextBoxBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
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

.field private f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

.field private fontTypeface:I

.field private gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

.field private iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

.field private iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

.field private mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

.field private rotationAngle:D

.field private symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

.field private textColor:I

.field protected final view:Landroid/widget/EditText;

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V
    .locals 7

    .line 64
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    const/4 v2, 0x0

    .line 53
    iput v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    const/high16 v3, -0x1000000

    .line 54
    iput v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

    const/4 v4, 0x1

    .line 55
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    .line 65
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 71
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_0

    .line 72
    invoke-virtual {p2}, Landroid/widget/EditText;->getInputType()I

    move-result v5

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 76
    :cond_0
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 79
    new-instance v5, Lcom/google/appinventor/components/runtime/TextBoxBase$1;

    invoke-direct {v5, p0}, Lcom/google/appinventor/components/runtime/TextBoxBase$1;-><init>(Lcom/google/appinventor/components/runtime/TextBoxBase;)V

    invoke-virtual {p2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    invoke-virtual {p2}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    .line 104
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    const/16 v5, 0xa0

    .line 106
    invoke-interface {p1, p0, v5}, Lcom/google/appinventor/components/runtime/ComponentContainer;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    .line 108
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextAlignment(I)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Enabled(Z)V

    .line 118
    iput v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 119
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 120
    iget p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {p2, p1, v2, v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 121
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->FontSize(F)V

    const-string p1, ""

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Hint(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->Text(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextBoxBase;->CursorColor(I)V

    .line 125
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextBoxBase;->TextColor(I)V

    .line 126
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/TextBoxBase;->HintColor(I)V

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/TextBoxBase;->RotationAngle(D)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/TextBoxBase;->CursorVisible(Z)V

    return-void
.end method


# virtual methods
.method public AnimationStyle(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows you to set animation style. Valid (case-insensitive) values are: ChasingDots, Circle, CubeGrid, DoubleBounce, FadingCircle, FoldingCube, Pulse, RotatingCircle, RotatingPlane, ThreeBounce, WanderingCubes, Wave. If invalid style is used, animation will be removed.Position can be: top, left, right, bottom. Size can be 100. "
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/ProgressHelper;->setButtonProgressAnimation(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1687
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1688
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1689
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the input box.  You can choose a color by name in the Designer or in the Blocks Editor.  The default background color is \'default\' (shaded 3-D look)."
    .end annotation

    .line 357
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 370
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->backgroundColor:I

    if-eqz p1, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setBackgroundColor(Landroid/widget/TextView;I)V

    return-void

    .line 374
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public CurrentPosition()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the current cursor position."
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public CursorColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color of the cursor."
    .end annotation

    .line 185
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

    return v0
.end method

.method public CursorColor(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 177
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->gUtdvgLwReW6eQihrPDf1Gr7OXNm8PrZovE9AMcvRbNvJBLZZT49Ja1NneDzYHk:I

    .line 178
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    .line 1191
    :try_start_0
    const-class v1, Landroid/widget/TextView;

    const-string v2, "mCursorDrawableRes"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 1192
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1193
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 1196
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 1197
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1198
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1201
    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1203
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    aput-object v0, p1, v2

    .line 1208
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mCursorDrawable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1209
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1210
    invoke-virtual {v0, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public CursorVisible(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Makes the cursor visible (the default) or invisible."
    .end annotation

    .line 669
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    .line 670
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public CursorVisible()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 675
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:Z

    return v0
.end method

.method public EnableCopyPaste(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "DEPRECATED since this feature is not working. Use \'Enabled\' instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public EnableCopyPaste()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setEnabled(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the user can enter text into this input box.  By default, this is true."
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->isEnabled(Landroid/widget/TextView;)Z

    move-result v0

    return v0
.end method

.method public FontBold(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 430
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 431
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the font for the text should be bold.  By default, it is not."
        userVisible = false
    .end annotation

    .line 416
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public FontItalic(Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 460
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 461
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should appear in italics.  By default, it does not."
        userVisible = false
    .end annotation

    .line 447
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public FontSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font size for the text.  By default, it is 14.0 points."
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

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
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The font for the text.  The value can be changed in the Designer."
        userVisible = false
    .end annotation

    .line 504
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    return v0
.end method

.method public FontTypeface(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 521
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->fontTypeface:I

    .line 522
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public FontTypefaceImport(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    if-eqz p1, :cond_0

    .line 626
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public GotFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "GotFocus"

    .line 287
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Hint()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Text that should appear faintly in the input box to provide a hint as to what the user should enter.  This can only be seen if the <code>Text</code> property is empty."
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

    return-object v0
.end method

.method public Hint(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 548
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->f3jXQdr7SaO4jKCWPTlGDFsZc4anfRmkf59KPIcTiLfRAexdccxYBXXB8h0vpeF7:Ljava/lang/String;

    .line 549
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHint(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public HintColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Return the hint text color."
    .end annotation

    .line 645
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    return v0
.end method

.method public HintColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom hint text color."
    .end annotation

    .line 634
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->iMWvjaqDlqi8shqdETWDeLkDbaCwtdVfJFSzyvUX79cgwtU4Twvc8XyMVbnGcmik:I

    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHintColor(Landroid/widget/TextView;I)V

    return-void

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setHintColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public LineColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Please delete this block from your project.This block is deprecated and not longer supported."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    return v0
.end method

.method public LineColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->iz2AUXs4pv4EMA73duiR1R3OfWItF7gDqk3oMKKRO3MIyuqvZdoefifHvTvEAhn:I

    return-void
.end method

.method public LostFocus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LostFocus"

    .line 296
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnTextChanged()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect text changes."
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "OnTextChanged"

    invoke-static {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public RequestFocus()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the textbox active."
    .end annotation

    .line 617
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public RotationAngle()D
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Sets the degrees that the textbox is rotated around the pivot point. Increasing values result in clockwise rotation."
    .end annotation

    .line 234
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    return-wide v0
.end method

.method public RotationAngle(D)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 226
    iput-wide p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->rotationAngle:D

    .line 227
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    double-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setRotation(F)V

    return-void
.end method

.method public SetCursorAt(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the cursor to the given position."
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    .line 261
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public SetCursorAtEnd()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the cursor to the end of the text."
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public SetShadow(FFFI)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Place a blurred shadow of text underneath the text, drawn with the specified x, y, radius, color (e.g. -11, 12, 13, black "
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setShadow(Landroid/widget/TextView;FFFI)V

    return-void
.end method

.method public Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 559
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getText(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Text(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The text in the input box, which can be set by the programmer in the Designer or Blocks Editor, or it can be entered by the user (unless the <code>Enabled</code> property is false)."
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public TextAlignment()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the text should be left justified, centered, or right justified.  By default, text is left justified."
        userVisible = false
    .end annotation

    .line 324
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    return v0
.end method

.method public TextAlignment(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "textalignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 341
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:I

    .line 342
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setAlignment(Landroid/widget/TextView;IZ)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The color for the text.  You can choose a color by name in the Designer or in the Blocks Editor.  The default text color is black."
    .end annotation

    .line 590
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

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

    .line 603
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->textColor:I

    if-eqz p1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void

    .line 607
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setTextColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public TextLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the current text length as number."
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBoxBase;->view:Landroid/widget/EditText;

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->GotFocus()V

    return-void

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/TextBoxBase;->LostFocus()V

    return-void
.end method
