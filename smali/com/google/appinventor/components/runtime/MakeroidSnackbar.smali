.class public Lcom/google/appinventor/components/runtime/MakeroidSnackbar;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Snackbar"
    iconName = "images/snackbar.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Snackbar"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private buttonTextColor:I

.field private duration:I

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;

.field private textColor:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 2

    .line 39
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    const v1, -0xbbbbbc

    .line 35
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    .line 36
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    .line 40
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->activity:Landroid/app/Activity;

    .line 41
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p1, "Snackbar"

    const-string v0, "Snackbar created"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)Lcom/google/android/material/snackbar/Snackbar;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    return-object p0
.end method

.method private getColoredText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 234
    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<font color=\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private showSnackbar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Hello world! Snackbar example text"

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Form;->coordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->getColoredText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->activity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->getColoredText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iget v1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    invoke-static {v0, p1, v1}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    :goto_0
    if-eqz p2, :cond_2

    .line 129
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    .line 135
    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$2;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    new-instance p2, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar$3;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSnackbar;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/Snackbar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 171
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object p1

    .line 172
    iget p2, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the snackbar\'s background color."
    .end annotation

    .line 215
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the snackbar\'s background color."
    .end annotation

    .line 205
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->backgroundColor:I

    .line 206
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v0

    .line 208
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public ButtonTextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for action button."
    .end annotation

    .line 84
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    return v0
.end method

.method public ButtonTextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 73
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->buttonTextColor:I

    return-void
.end method

.method public Click()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "User clicked on the action button."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Click"

    .line 198
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Dismiss()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss the snackbar."
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public Duration()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "specifies the length of time that the Snackbar is shown - either \"short\" or \"long\"."
    .end annotation

    .line 61
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    return v0
.end method

.method public Duration(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "snackbar_duration"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 55
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->duration:I

    return-void
.end method

.method public IsShown()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true whether this snackbar is currently being shown."
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->isShown()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public OnDismissed(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect the snackbar was dismissed. Possible results can be: \"UNDEFINED\", \"ACTION\", \"CONSECUTIVE\", \"MANUAL\", \"SWIPE\" or \"TIMEOUT\". You can find more information at: https://developer.android.com/reference/android/support/design/widget/Snackbar.Callback.html "
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnDismissed"

    .line 185
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public OnShown()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect the snackbar is shown."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "OnShown"

    .line 190
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Show(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Snackbar (message supports HTML formatting)"
    .end annotation

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ShowWithButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show Snackbar with action button (message supports HTML formatting)"
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->showSnackbar(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .line 230
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    return v0
.end method

.method public TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 222
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    if-nez p1, :cond_0

    const/4 p1, -0x1

    .line 224
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidSnackbar;->textColor:I

    :cond_0
    return-void
.end method
