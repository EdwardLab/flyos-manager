.class public final Lcom/google/appinventor/components/runtime/Radiobutton;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    helpUrl = "https://docs.kodular.io/components/user-interface/radio-button/"
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

.field private PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

.field private context:Landroid/content/Context;

.field private fontTypeface:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

.field private jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:Ljava/lang/String;

.field private textColor:I

.field private yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .line 36
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const/high16 v0, -0x1000000

    .line 28
    iput v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

    .line 30
    iput v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->textColor:I

    const/4 v1, 0x0

    .line 31
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    .line 32
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    .line 33
    iput v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->fontTypeface:I

    .line 37
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->context:Landroid/content/Context;

    .line 38
    new-instance v2, Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 39
    invoke-virtual {v2, p0}, Landroidx/appcompat/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->context:Landroid/content/Context;

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x4

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->setPadding(Landroid/view/View;Landroid/content/Context;IIII)V

    .line 42
    invoke-interface {p1, p0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 44
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 45
    iget p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->fontTypeface:I

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v4, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v2, p1, v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    .line 46
    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/Radiobutton;->Checked(Z)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Radiobutton;->Enabled(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Radiobutton;->RadioButtonColor(I)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Radiobutton;->TextColor(I)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 50
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Radiobutton;->TextSize(F)V

    const-string p1, "Radio Button Text"

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Radiobutton;->Text(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final Changed(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when the radio button state has been changed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Changed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Checked(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the radio button to checked or unchecked"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    return-void
.end method

.method public final Enabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set, user can touch the radio button."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setEnabled(Z)V

    return-void
.end method

.method public final FontBold(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 158
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return-void
.end method

.method public final FontBold()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 151
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    return v0
.end method

.method public final FontItalic(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 171
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return-void
.end method

.method public final FontItalic()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 164
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    return v0
.end method

.method public final FontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 177
    iget v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->fontTypeface:I

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

    .line 184
    iput p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->fontTypeface:I

    .line 185
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

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

    .line 194
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->yKzj3OK1ig8r7pqFZ5OXQyoqJiWnRvwjZPZ1kORJGZPQRb8FuKJuM2qAKu5QCSLT:Z

    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->PpoaLB2hgzDTOuqu9FkRmbGOAi4DOSz44cSb2WOQzHfJN0AfA0f9dWyZXVLXkHHC:Z

    invoke-static {v0, v1, p1, v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public final RadioButtonColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the radio button component color."
    .end annotation

    .line 107
    iget v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

    return v0
.end method

.method public final RadioButtonColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the radio button component color."
    .end annotation

    .line 101
    iput p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->IQizCoownq3QMuqjiN3SEtpvqAzYOMGAuQhX0ytYpmBBjgggyq4HRoSxolTbNj90:I

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/core/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final Text()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the radio button text."
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:Ljava/lang/String;

    return-object v0
.end method

.method public final Text(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Radio Button Text"
        editorType = "textArea"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here the radio button text."
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:Ljava/lang/String;

    .line 115
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->jsy7Kz77rNyAY3JWsGLNrUoUOR8HajCK4Ef1UopjrJy4hdX7ElFJvGzBTGAF3HB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatRadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the text color for the radio button."
    .end annotation

    .line 145
    iget v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->textColor:I

    return v0
.end method

.method public final TextColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the text color for the radio button."
    .end annotation

    .line 139
    iput p1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->textColor:I

    .line 140
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setTextColor(I)V

    return-void
.end method

.method public final TextSize()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the text size of the radio button."
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->context:Landroid/content/Context;

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
        description = "The text size of the radio button."
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontSize(Landroid/widget/TextView;F)V

    return-void
.end method

.method public final Toggle()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the checked state of the view to the inverse of its current state"
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatRadioButton;->setChecked(Z)V

    return-void
.end method

.method public final bridge synthetic getView()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Radiobutton;->getView()Landroidx/appcompat/widget/AppCompatRadioButton;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Landroidx/appcompat/widget/AppCompatRadioButton;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public final isChecked()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if the radio button is checked, else false."
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Radiobutton;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/appcompat/widget/AppCompatRadioButton;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatRadioButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/appinventor/components/runtime/Radiobutton;->Changed(Z)V

    return-void
.end method
