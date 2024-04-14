.class public final Lcom/google/appinventor/components/runtime/SwitchToggle;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    helpUrl = "https://docs.kodular.io/components/user-interface/switch/"
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:I

.field private UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

.field private ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:I

.field private ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private fontTypeface:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

.field private textColor:I

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 12

    .line 42
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const v0, -0xb350b0

    .line 32
    iput v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:I

    const v1, -0xff6978

    .line 33
    iput v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:I

    const-string v2, "Switch On"

    .line 34
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    const-string v3, "Switch Off"

    .line 35
    iput-object v3, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->textColor:I

    const/4 v4, 0x0

    .line 37
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 38
    iput-boolean v4, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 39
    iput v4, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    .line 43
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v5

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    .line 44
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 46
    new-instance v5, Landroid/widget/Switch;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    .line 47
    invoke-virtual {v5, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 48
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    const/4 v8, 0x4

    const/4 v9, 0x4

    const/4 v10, 0x4

    const/4 v11, 0x4

    move-object v6, v5

    invoke-static/range {v6 .. v11}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    .line 1082
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    const/high16 v7, 0x41200000    # 10.0f

    mul-float v6, v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 49
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setSwitchPadding(I)V

    .line 51
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 53
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SwitchToggle;->ThumbColor(I)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SwitchToggle;->TrackColor(I)V

    .line 55
    iget p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v6, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v5, p1, v1, v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/SwitchToggle;->TextSize(F)V

    .line 57
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/SwitchToggle;->TextColor(I)V

    .line 59
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/SwitchToggle;->TextOn(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/google/appinventor/components/runtime/SwitchToggle;->TextOff(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/google/appinventor/components/runtime/SwitchToggle;->Checked(Z)V

    const-string p1, "Switch"

    const-string v0, "Switch Created"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final Checked(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the toggle to checked or unchecked"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public final Clicked(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when a switch has been clicked. Returns true or false if the switch is checked or not."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Clicked"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true, user can touch the switch."
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public final Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true is the switch is enabled."
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

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

    .line 176
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public final FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 169
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

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

    .line 190
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 191
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    iget v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    invoke-static {v0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public final FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 183
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public final FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 197
    iget v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    return v0
.end method

.method public final FontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 204
    iput p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->fontTypeface:I

    return-void
.end method

.method public final FontTypefaceImport(Ljava/lang/String;)V
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

    .line 213
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color for the switch."
    .end annotation

    .line 163
    iget v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->textColor:I

    return v0
.end method

.method public final TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text color for the switch."
    .end annotation

    .line 157
    iput p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->textColor:I

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setTextColor(I)V

    return-void
.end method

.method public final TextOff()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the switch off text."
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    return-object v0
.end method

.method public final TextOff(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Switch Off"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here the switch off text. HTML tags are too possible: <b>, <big>, <blockquote>, <br>, <cite>, <dfn>, <div>, <em>, <small>, <strong>, <sub>, <sup>, <tt>, <u>. Example: <big>Test</big>."
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    .line 243
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    const-string v0, "  "

    if-eqz p1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final TextOn()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the switch on text."
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    return-object v0
.end method

.method public final TextOn(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Switch On"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here the switch on text. HTML tags are too possible: <b>, <big>, <blockquote>, <br>, <cite>, <dfn>, <div>, <em>, <small>, <strong>, <sub>, <sup>, <tt>, <u>. Example: <big>Test</big>."
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    .line 224
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    const-string v0, "  "

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 227
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final TextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the switch."
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public final TextSize(F)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "14.0"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The text size of the switch."
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public final ThumbColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the thumb color."
    .end annotation

    .line 113
    iget v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:I

    return v0
.end method

.method public final ThumbColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF4CAF50"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the disabled color of the switch."
    .end annotation

    .line 107
    iput p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:I

    .line 108
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final ThumbImage(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the drawable used for the switch \'thumb\' - the piece that the user can physically touch and drag along the track. If \'color Filter Enabled\' is set to true, the image will get a light tint filter with the same color that you used as thumb color."
    .end annotation

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 266
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 270
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unable to load "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Switch"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final ThumbImageFromMaterialFont(Ljava/lang/String;F)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the drawable used for the switch \'thumb\' - the piece that the user can physically touch and drag along the track. You can find the icon name (or code) here at https://material.io/icons . Use as size as example \'300\'."
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/high16 p2, 0x42a00000    # 80.0f

    :cond_1
    float-to-int v0, p2

    .line 292
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->context:Landroid/content/Context;

    const-string v3, "material"

    iget v4, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->Sj3UMCQcT7f46E8U4TVavenawPElr174psURarVHJJBTqMXe22hIekct3fzxe7Vm:I

    invoke-static {v2, v3, p1, v4, p2}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 293
    invoke-virtual {v1, p1, p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 297
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Switch"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final TrackColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the thumb color."
    .end annotation

    .line 126
    iget v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:I

    return v0
.end method

.method public final TrackColor(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF009688"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the enabled color of the switch."
    .end annotation

    .line 120
    iput p1, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZBOPOXf20XZKrN6ycbQhEDPC2OsW2QCGfMHApJMYjAVGCpHVQNyA3eb1TXx8tY2I:I

    .line 121
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SwitchToggle;->getView()Landroid/widget/Switch;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroid/widget/Switch;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return true if the switch is checked else false."
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string p1, "  "

    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->ZFwQoaMsdRwNqOTkWG5sFNIKnTcrKyb4dIRsDmVa68cFIA9m1jUiaqOHngvgXrvD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SwitchToggle;->UT8jc0jwpnlGoVnBZm9Vqfc7zQxpOFTo7zW0ZxKDjXZZsrQ7LsG7hsoko7RBNNg5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :goto_0
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/SwitchToggle;->Clicked(Z)V

    return-void
.end method
