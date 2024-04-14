.class public final Lcom/google/appinventor/components/runtime/TextBox;
.super Lcom/google/appinventor/components/runtime/TextBoxBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>A box for the user to enter text.  The initial or user-entered text value is in the <code>Text</code> property.  If blank, the <code>Hint</code> property, which appears as faint text in the box, can provide the user with guidance as to what to type.</p><p>The <code>MultiLine</code> property determines if the text can havemore than one line.  For a single line text box, the keyboard will closeautomatically when the user presses the Done key.  To close the keyboard for multiline text boxes, the app should use  the HideKeyboard method or  rely on the user to press the Back key.</p><p>The <code> NumbersOnly</code> property restricts the keyboard to acceptnumeric input only.</p><p>Other properties affect the appearance of the text box (<code>TextAlignment</code>, <code>BackgroundColor</code>, etc.) and whether it can be used (<code>Enabled</code>).</p><p>Text boxes are usually used with the <code>Button</code> component, with the user clicking on the button when text entry is complete.</p><p>If the text entered by the user should not be displayed, use <code>PasswordTextBox</code> instead.</p>"
    helpUrl = "https://docs.kodular.io/components/user-interface/textbox/"
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:Ljava/lang/String;

.field private TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

.field private TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

.field private hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

.field private wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

.field private wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 91
    new-instance v0, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/TextBoxBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Landroid/widget/EditText;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    const/4 v0, 0x1

    .line 81
    iput v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    .line 83
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->HighlightColor(I)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->MultiLine(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/TextBox;->ReadOnly(Z)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/TextBox;->InputType(I)V

    .line 105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    return-void
.end method


# virtual methods
.method public final ErrorText()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the error text."
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:Ljava/lang/String;

    return-object v0
.end method

.method public final ErrorText(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the error text message."
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:Ljava/lang/String;

    return-void
.end method

.method public final HideKeyboard()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hide the keyboard.  Only multiline text boxes need this. Single line text boxes close the keyboard when the users presses the Done key."
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 215
    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 216
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final HighlightColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the color of the highlighted text."
    .end annotation

    .line 314
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    return v0
.end method

.method public final HighlightColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 325
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->TDuNe2Upxoi7WX7QZc6R8eUnFPyyDFw3hP7z3w6U8jMxQwJRQM03zSa9HzWXRv1:I

    .line 326
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHighlightColor(I)V

    return-void
.end method

.method public final InputType()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The input type you want for this TextBox."
    .end annotation

    .line 159
    iget v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    return v0
.end method

.method public final InputType(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "input_type"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 201
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 186
    :pswitch_4
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x3012

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 183
    :pswitch_5
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 180
    :pswitch_6
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 177
    :pswitch_7
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 174
    :pswitch_8
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 171
    :pswitch_9
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 204
    :goto_0
    iput p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfWoJD9s05zGciiq11jj7TXqW1AmJIE9BV68DWBBkLZSv9NayRoTG3XJb9WJMlyD:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    .line 254
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setMaxLines(I)V

    return-void
.end method

.method public final MultiLine(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 245
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    .line 246
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSingleLine(Z)V

    return-void
.end method

.method public final MultiLine()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts multiple lines of input, which are entered using the return key.  For single line text boxes there is a Done key instead of a return key, and pressing Done hides the keyboard.  The app should call the HideKeyboard method to hide the keyboard for a mutiline text box."
    .end annotation

    .line 233
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->wfbsnc19ruRPyBpriU11i0zXW81wrBgGRVM2BOD65kRILLKDr3mBxnYSQKLd5kkO:Z

    return v0
.end method

.method public final NumbersOnly(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    const v1, 0x20001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 149
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    return-void
.end method

.method public final NumbersOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "If true, then this text box accepts only numbers as keyboard input.  Numbers can include a decimal point and an optional leading minus sign.  This applies to keyboard input only.  Even if NumbersOnly is true, you can use [set Text to] to enter any text at all."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->hYIBeJsINiSNmMMYMsE9k7k9FKwSRXABLbxSyf9mDVDqNrjjNU51ZRtstLVyAr2s:Z

    return v0
.end method

.method public final ReadOnly(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 271
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/TextBox;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    .line 272
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public final ReadOnly()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the %type% is read-only. By default, this is true."
    .end annotation

    .line 262
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->TVKenNjujur1C1Ft9Gj8dhchvJBwuJV9GDuQOmGg2gZVCkxzGoaa0a88A5IZ9COq:Z

    return v0
.end method

.method public final ShowError()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows an error message next to the textbox."
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/TextBox;->view:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/TextBox;->CfJsMCmg8U782C2ivbbep8ZFrAD6R9Wq7P09zMpUKCFkpiEYodk6t8FdSxHzlHKV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
