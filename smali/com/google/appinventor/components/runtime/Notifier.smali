.class public final Lcom/google/appinventor/components/runtime/Notifier;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->USERINTERFACE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Notifier component displays alert dialogs, messages, and temporary alerts, and creates Android log entries through the following methods: <ul><li> ShowMessageDialog: displays a message which the user must dismiss by pressing a button.</li><li> ShowChooseDialog: displays a message two buttons to let the user choose one of two responses, for example, yes or no, after which the AfterChoosing event is raised.</li><li> ShowTextDialog: lets the user enter text in response to the message, after which the AfterTextInput event is raised. <li> ShowPasswordDialog: lets the user enter password in response to the message, after which the AfterTextInput event is raised. <li> ShowAlert: displays a temporary  alert that goes away by itself after a short time.</li><li> ShowProgressDialog: displays an alert with a loading spinner that cannot be dismissed by the user. It can only be dismissed by using the DismissProgressDialog block.</li><li> CustomMessageDialog: New version to display dialogs with icon and in fullscreen mode.</li><li> CustomChooseDialog: New version to display choose dialogs with icon and in fullscreen mode.<li> LightTheme: To display the dialogs in a light or dark theme.</li><li> ShowLightbox: Displays a png or gif file from assets or from web url in a dialog.</li><li> ShowLinearProgress: Shows a progress dialog with a horizontal progress bar.</li><li> ShowSpinningProgress: Shows a spinning progress dialog.</li><li> UpdateProgress: Change the current value of the linear progress dialog.</li><li> ShowRadioListDialog: Shows a radio list dialog with a list of options.</li><li> ShowCheckboxListDialog: Shows a picker dialog with a list of options.</li><li> ShowListPicker: Shows a list picker dialog.</li><li> ShowTextInputDialog: Show a text input dialog.</li><li> ShowImageDialog: Show a image dialog. Animation types like \"*.gif\" are not supported.</li><li> ShowNumberPicker: Shows a number picker dialog that enables the user to select a number from a predefined range.</li><li> ShowWordPicker: Shows a word picker dialog that enables the user to select a number from a predefined word.</li><li> DismissProgressDialog: Dismisses the progress dialog displayed by ShowProgressDialog.</li><li> DismissSpinningProgress: Dismisses the progress dialog displayed by ShowSpinningProgress.</li><li> DismissLinearProgress: Dismisses the progress dialog displayed by ShowLinearProgress.</li><li> LogError: logs an error message to the Android log. </li><li> LogInfo: logs an info message to the Android log.</li><li> LogWarning: logs a warning message to the Android log.</li><li>The messages in the dialogs can be formatted using the following HTML tags:&lt;b&gt;, &lt;big&gt;, &lt;blockquote&gt;, &lt;br&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;div&gt;, &lt;em&gt;, &lt;small&gt;, &lt;strong&gt;, &lt;sub&gt;, &lt;sup&gt;, &lt;tt&gt;. &lt;u&gt;</li><li>You can also use the font tag to specify color, for example, &lt;font color=\"blue\"&gt;.  Some of the available color names are aqua, black, blue, fuchsia, green, grey, lime, maroon, navy, olive, purple, red, silver, teal, white, and yellow</li></ul>"
    iconName = "images/notifier.png"
    nonVisible = true
    version = 0xb
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "glide.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Notifier"


# instance fields
.field private DIALOG_DARK:I

.field private DIALOG_DARK_FULLSCREEN:I

.field private DIALOG_DARK_RADIO:I

.field private DIALOG_LIGHT:I

.field private DIALOG_LIGHT_FULLSCREEN:I

.field private DIALOG_LIGHT_RADIO:I

.field private final activity:Landroid/app/Activity;

.field private backgroundColor:I

.field private checkTheme:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private currentSelection:I

.field private currentTheme:I

.field private customDialog:Landroid/app/AlertDialog;

.field private dimAmount:F

.field private final handler:Landroid/os/Handler;

.field private isRepl:Z

.field private linkify:Z

.field private messageTypeface:I

.field private messagefontTypefacePath:Ljava/lang/String;

.field private msgTheme:I

.field private notifierLength:I

.field private progress:Landroid/app/ProgressDialog;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private progressl:Landroid/app/ProgressDialog;

.field private radioTheme:I

.field private selectedNumber:I

.field private selectedWord:Ljava/lang/String;

.field private textColor:I

.field private tglTheme:I

.field private theme:Z

.field private titleColor:I

.field private titleTypeface:I

.field private titlefontTypefacePath:Ljava/lang/String;

.field private txtTheme:I

.field private useBackgroundColor:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .line 138
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    const/high16 v2, 0x3f000000    # 0.5f

    .line 113
    iput v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    const-string v2, ""

    .line 115
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    .line 119
    iput v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    const v2, -0xbbbbbc

    .line 120
    iput v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    const/4 v2, -0x1

    .line 121
    iput v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    .line 124
    iput v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    .line 125
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    .line 127
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    .line 128
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    .line 139
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 140
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    .line 141
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    .line 143
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    .line 144
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    :cond_0
    const-string p1, "Theme.AppCompat.Light.Dialog.Alert"

    .line 147
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    const-string p1, "Theme.AppCompat.Light.NoActionBar"

    .line 148
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    const-string p1, "Theme.AppCompat.Light.DialogWhenLarge"

    .line 149
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_RADIO:I

    const-string p1, "AppTheme.Dialog.Alert"

    .line 150
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK:I

    const-string p1, "Theme.AppCompat.NoActionBar"

    .line 151
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    const-string p1, "Theme.AppCompat.DialogWhenLarge"

    .line 152
    invoke-static {v2, p1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_RADIO:I

    .line 154
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Notifier;->LightTheme(Z)V

    .line 155
    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Notifier;->UseBackgroundColor(Z)V

    .line 156
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static aboutThisApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 1130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_0

    const-string p5, "Theme.AppCompat.Light.Dialog.Alert"

    goto :goto_0

    :cond_0
    const-string p5, "AppTheme.Dialog.Alert"

    :goto_0
    invoke-static {p0, p5}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result p5

    invoke-direct {v0, p0, p5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1131
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_1

    .line 1132
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p2, 0x0

    .line 1134
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1135
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1136
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, -0x3

    .line 1138
    new-instance p2, Lcom/google/appinventor/components/runtime/Notifier$27;

    invoke-direct {p2}, Lcom/google/appinventor/components/runtime/Notifier$27;-><init>()V

    invoke-virtual {p0, p1, p3, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1143
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    const p1, 0x102000b

    .line 1146
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1147
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Notifier"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :goto_1
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1153
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p4, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->toastNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->lightbox(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Notifier;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p6}, Lcom/google/appinventor/components/runtime/Notifier;->linearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/appinventor/components/runtime/Notifier;->spinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;
    .locals 0

    .line 101
    invoke-direct/range {p0 .. p9}, Lcom/google/appinventor/components/runtime/Notifier;->radioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Notifier;Landroid/app/Dialog;Z)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Notifier;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    return p0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Notifier;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Notifier;Landroid/view/View;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->hideKeyboardHelper(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Notifier;)I
    .locals 0

    .line 101
    iget p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    return p0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/Notifier;I)I
    .locals 0

    .line 101
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    return p1
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Notifier;)Ljava/lang/String;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedWord:Ljava/lang/String;

    return-object p1
.end method

.method private dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1405
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private hideKeyboardHelper(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1489
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1493
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method private lightbox(ILjava/lang/String;)V
    .locals 3

    .line 466
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const v2, 0x1030008

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 467
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 468
    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$2;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 475
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 476
    new-instance p1, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {p1, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 477
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    invoke-static {v1, p2, p1, v2}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 478
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private linearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 3

    .line 505
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissSpinningProgress()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissLinearProgress()V

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 515
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    .line 516
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 517
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 518
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 520
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_3

    .line 521
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 523
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 524
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    :cond_4
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 527
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 528
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setProgress(I)V

    if-eqz p4, :cond_5

    .line 531
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 532
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 535
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-direct {p0, p6}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$4;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/Notifier$4;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 543
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 544
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method private static linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1372
    new-instance p0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v0

    .line 1374
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1375
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->linkifyMessage(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1376
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p2, 0x0

    .line 1377
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1378
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private messageFontHelper(Landroid/widget/TextView;)V
    .locals 3

    .line 1463
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    invoke-static {v0, p1, v2, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    .line 1466
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    invoke-static {p1, v0, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1170
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1178
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1182
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "One button alert "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 1184
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x0

    .line 1187
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1188
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1189
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p2, -0x3

    .line 1191
    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier$28;

    invoke-direct {v0, p4}, Lcom/google/appinventor/components/runtime/Notifier$28;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p2, p3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1200
    invoke-static {p5, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 1174
    invoke-static/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private progressDialogHelper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1471
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-static {v0, p2, p1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    const/4 p2, 0x0

    .line 1476
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    return-void
.end method

.method private radioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)Landroid/app/Dialog;
    .locals 2

    .line 625
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v0, v1, :cond_1

    if-eqz p9, :cond_0

    .line 627
    iget p9, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_RADIO:I

    iput p9, p0, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto :goto_0

    .line 629
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto :goto_0

    :cond_1
    if-eqz p9, :cond_2

    .line 633
    iget p9, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_RADIO:I

    iput p9, p0, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    goto :goto_0

    .line 635
    :cond_2
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    :goto_0
    add-int/lit8 p7, p7, -0x1

    add-int/lit8 p9, p7, 0x1

    .line 640
    iput p9, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentSelection:I

    .line 642
    new-instance p9, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->radioTheme:I

    invoke-direct {p9, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 643
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 644
    invoke-virtual {p9, p5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p9, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier$7;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Notifier$7;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    .line 646
    invoke-virtual {p2, p3, p7, v0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 653
    new-instance p2, Lcom/google/appinventor/components/runtime/Notifier$8;

    invoke-direct {p2, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$8;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {p9, p4, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_3

    .line 661
    invoke-static {p6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$9;

    invoke-direct {p3, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$9;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {p9, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 668
    :cond_3
    invoke-direct {p0, p8}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p9, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 669
    invoke-virtual {p9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private setDialogHelper(Landroid/app/Dialog;Z)V
    .locals 4

    .line 1410
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    const-string v0, "Notifier"

    if-eqz p2, :cond_0

    .line 1412
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1413
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1416
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1421
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    invoke-virtual {p2, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_1
    const p2, 0x102000b

    .line 1425
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 1427
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1430
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_3

    .line 1436
    invoke-direct {p0, p2}, Lcom/google/appinventor/components/runtime/Notifier;->messageFontHelper(Landroid/widget/TextView;)V

    .line 1437
    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 1440
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    :cond_3
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v1, "alertTitle"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 1446
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->titleFontHelper(Landroid/widget/TextView;)V

    .line 1447
    iget p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    return-void

    :catch_3
    move-exception p1

    .line 1450
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private spinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissSpinningProgress()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissLinearProgress()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Notifier;->DismissProgressDialog()V

    .line 582
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    .line 583
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 584
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 585
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 586
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/app/ProgressDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 588
    iget p3, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget p4, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne p3, p4, :cond_3

    .line 589
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 590
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 593
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 594
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 597
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 598
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 601
    :cond_5
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 602
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-direct {p0, p1, v1}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method private textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    .line 1299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1300
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1301
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1303
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1304
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1307
    :cond_1
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    invoke-static {p2, v0, p1}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    .line 1310
    new-instance p1, Landroid/widget/EditText;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p4, :cond_2

    const/16 p2, 0x81

    .line 1312
    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 1314
    :cond_2
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 1316
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 p2, -0x1

    .line 1317
    new-instance p4, Lcom/google/appinventor/components/runtime/Notifier$36;

    invoke-direct {p4, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$36;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;)V

    const-string v1, "OK"

    invoke-virtual {v0, p2, v1, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p3, :cond_3

    .line 1327
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    const/high16 p3, 0x1040000

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, -0x2

    .line 1328
    new-instance p4, Lcom/google/appinventor/components/runtime/Notifier$37;

    invoke-direct {p4, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier$37;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p2, p4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1337
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private titleFontHelper(Landroid/widget/TextView;)V
    .locals 3

    .line 1455
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    invoke-static {v0, p1, v2, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V

    return-void

    .line 1458
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    invoke-static {p1, v0, v1, v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypeface(Landroid/widget/TextView;IZZ)V

    return-void
.end method

.method private toastNow(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1383
    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "#%06X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "<font color=\'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1388
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42480000    # 50.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1390
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    iget v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    const/16 v1, 0x51

    .line 1391
    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/Toast;->setGravity(III)V

    .line 1394
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    .line 1395
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1396
    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1398
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public final AfterChoosing(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his selection."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterChoosing"

    .line 1356
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AfterMessageDialog(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user clicked on a button from the \"Show Custom Message Dialog\". Use the \"title\" response to know which dialog the user has clicked."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterMessageDialog"

    .line 222
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final AfterTextInput(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his text input in the \"Show Text Dialog\"."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterTextInput"

    .line 1342
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    return v0
.end method

.method public final BackgroundColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFF444444"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies the background color for alerts (not dialogs)."
    .end annotation

    .line 350
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->backgroundColor:I

    return-void
.end method

.method public final CheckboxSelection(ILcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Invoked after user has finished selecting items from the Checkbox picker. Returns a list of indices of the selected items in the order of selection. Returns a list having -1 if cancel was pressed."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "CheckboxSelection"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CreateCustomDialog(Lcom/google/appinventor/components/runtime/AndroidViewComponent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show whatever you want in a dialog. You can use as example arrangements, or images or whatever you want. Your chosen layout will be then removed from the screen and only visible in custom dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color. Please make sure the layout you want to use is visible."
    .end annotation

    .line 1061
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 1063
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    .line 1065
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2, p5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1070
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1071
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 p5, -0x1

    new-instance v0, Lcom/google/appinventor/components/runtime/Notifier$25;

    invoke-direct {v0, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$25;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {p2, p5, p3, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1079
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 1080
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 p3, -0x2

    new-instance p5, Lcom/google/appinventor/components/runtime/Notifier$26;

    invoke-direct {p5, p0, p4}, Lcom/google/appinventor/components/runtime/Notifier$26;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p4, p5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1089
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1090
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1091
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1093
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Notifier"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final CustomChooseDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the GotCustomChooseDialog event.  The \"choice\" parameter to GotCustomChooseDialog will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color. Use the \'Show Custom Dialog\' block to the show the created custom dialog. The added component must be visible on screen. After you used this block here it will be removed automatic from screen and will be only visible again after you have shown the custom dialog."
    .end annotation

    move-object v14, p0

    move/from16 v0, p1

    .line 243
    iget-object v1, v14, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$12;

    move-object/from16 v4, p4

    invoke-direct {v10, p0, v0, v4}, Lcom/google/appinventor/components/runtime/Notifier$12;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    new-instance v11, Lcom/google/appinventor/components/runtime/Notifier$23;

    move-object/from16 v5, p5

    invoke-direct {v11, p0, v0, v5}, Lcom/google/appinventor/components/runtime/Notifier$23;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    new-instance v12, Lcom/google/appinventor/components/runtime/Notifier$34;

    move-object/from16 v6, p6

    invoke-direct {v12, p0, v0, v6}, Lcom/google/appinventor/components/runtime/Notifier$34;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    iget-boolean v13, v14, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v13}, Lcom/google/appinventor/components/runtime/Notifier;->customChoose(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final CustomDialogSelection(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has pressed a button from the custom dialog. It returns then the text of the button that was pressed."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "CustomDialogSelection"

    .line 1100
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final CustomMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a Message Dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 178
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/Notifier;->customMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final DimAmount()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1126
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    return v0
.end method

.method public final DimAmount(F)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.5"
        editorType = "non_negative_float"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the amount of dim behind the dialog window. Use \'0.0\' for no dim and \'1.0\' for full dim."
    .end annotation

    .line 1121
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->dimAmount:F

    return-void
.end method

.method public final DismissCustomDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to dismiss the created custom dialog.the custom dialog."
    .end annotation

    .line 1046
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1047
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final DismissLinearProgress()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed LinearProgress box"
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public final DismissProgressDialog()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed ProgressDialog box"
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public final DismissSpinningProgress()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss a previously displayed SpinningProgress box"
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progress:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Notifier;->dismissProgressDialogHelper(Landroid/app/ProgressDialog;)V

    return-void
.end method

.method public final GotCustomChooseDialog(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his selection in the CustomChooseDialog."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotCustomChooseDialog"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final GotTextInputFromDialog(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have done his text input in the \"Show Text Input Dialog\"."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 882
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotTextInputFromDialog"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ImageDialogClosed(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has watched the image dialog."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 920
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ImageDialogClosed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final LightTheme(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the current theme"
    .end annotation

    if-eqz p1, :cond_0

    .line 443
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    goto :goto_0

    .line 445
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    .line 447
    :goto_0
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->theme:Z

    return-void
.end method

.method public final LightTheme()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the current theme"
    .end annotation

    .line 452
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->theme:Z

    return v0
.end method

.method public final LightboxClosed(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that a user have closed the Lightbox."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "LightboxClosed"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final LinearProgressDismissed()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the linear progress dialog was dismissed."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "LinearProgressDismissed"

    .line 550
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Linkify(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true will attempt to make text clickable where possible; e.g. hyperlinks, phone numbers. Can not be used for Progress Dialogs. "
    .end annotation

    .line 1362
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    return-void
.end method

.method public final Linkify()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns status of Linkify property"
    .end annotation

    .line 1367
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    return v0
.end method

.method public final ListPickerSelection(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to get the picked list selection from the List Picker."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 788
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "ListPickerSelection"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final LogError(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an error message to the Android system log. See the Google Android documentation for how to access the log."
    .end annotation

    const-string v0, "Notifier"

    .line 425
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final LogInfo(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes an information message to the Android log."
    .end annotation

    const-string v0, "Notifier"

    .line 436
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final LogWarning(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Writes a warning message to the Android log. See the Google Android documentation for how to access the log."
    .end annotation

    const-string v0, "Notifier"

    .line 431
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotifierLength()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "specifies the length of time that the alert is shown -- either \"short\" or \"long\"."
    .end annotation

    .line 343
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    return v0
.end method

.method public final NotifierLength(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "toast_length"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 337
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->notifierLength:I

    return-void
.end method

.method public final NumberPickerSelection(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has selected a number from the number picker dialog."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 976
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "NumberPickerSelection"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final RadioSelection(II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when user has selected an option from the radio button picker. Outputs the index of the selected item. Returns -1 if cancel was pressed."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 676
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "RadioSelection"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final ShowAlert(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a alert \"toast\" message."
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$41;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$41;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowCheckboxListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a picker dialog with a list of options of whichmore than one can be chosen. Invokes the \'AfterMultiSelection\' event. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 688
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v0, v1, :cond_1

    if-eqz p8, :cond_0

    .line 690
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto :goto_0

    .line 692
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 696
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    goto :goto_0

    .line 698
    :cond_2
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 702
    :goto_0
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p3

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 705
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v3, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 706
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    const/4 v1, 0x0

    new-instance v2, Lcom/google/appinventor/components/runtime/Notifier$11;

    invoke-direct {v2, p0, v0}, Lcom/google/appinventor/components/runtime/Notifier$11;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/util/ArrayList;)V

    .line 707
    invoke-virtual {p2, p3, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$10;

    invoke-direct {p3, p0, v0, p1}, Lcom/google/appinventor/components/runtime/Notifier$10;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/util/ArrayList;I)V

    .line 716
    invoke-virtual {p2, p4, p3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    if-eqz p6, :cond_3

    .line 725
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$13;

    invoke-direct {p3, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$13;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {p2, p5, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 733
    :cond_3
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 734
    invoke-virtual {p2, p6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-direct {p0, p7}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 737
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 738
    invoke-direct {p0, p1, p8}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final ShowChooseDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with two buttons, from which the user can choose.  If cancelable is true there will be an additional CANCEL button. Pressing a button will raise the AfterChoosing event.  The \"choice\" parameter to AfterChoosing will be the text on the button that was pressed, or \"Cancel\" if the  CANCEL button was pressed."
    .end annotation

    move-object v11, p0

    .line 1210
    iget-object v1, v11, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    new-instance v7, Lcom/google/appinventor/components/runtime/Notifier$29;

    move-object v4, p3

    invoke-direct {v7, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$29;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v8, Lcom/google/appinventor/components/runtime/Notifier$30;

    move-object/from16 v5, p4

    invoke-direct {v8, p0, v5}, Lcom/google/appinventor/components/runtime/Notifier$30;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    new-instance v9, Lcom/google/appinventor/components/runtime/Notifier$31;

    invoke-direct {v9, p0}, Lcom/google/appinventor/components/runtime/Notifier$31;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    iget-boolean v10, v11, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v10}, Lcom/google/appinventor/components/runtime/Notifier;->twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final ShowCustomDialog()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the custom dialog. Dont forget that you have first to create the custom dialog."
    .end annotation

    .line 1037
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1039
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->customDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    :cond_0
    return-void
.end method

.method public final ShowImageDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a image dialog. Animation types like \"*.gif\" are not supported. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 891
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    .line 894
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->checkTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 896
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 899
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    :goto_0
    const/4 p2, 0x0

    .line 901
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v1, -0x1

    .line 902
    new-instance v2, Lcom/google/appinventor/components/runtime/Notifier$17;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$17;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v0, v1, p4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 909
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 910
    new-instance v4, Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 911
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget-boolean p4, p0, Lcom/google/appinventor/components/runtime/Notifier;->isRepl:Z

    invoke-static {p1, p3, v4, p4}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->LoadPicture(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v0

    .line 912
    invoke-virtual/range {v3 .. v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 914
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 915
    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final ShowLightbox(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Displays a lightbox. You can use images like \"*.png\" or \"*,gif\" from assets folder or from a web url."
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/google/appinventor/components/runtime/Notifier$42;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier$42;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowLinearProgress(Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a progress dialog with a horizontal progress bar. Can be dismissed by user if \'cancelable\' is set to true. If indeterminate is true, maxValue and the \'UpdateProgress\' method will have no effect. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    move-object v8, p0

    .line 497
    iget-object v9, v8, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v10, Lcom/google/appinventor/components/runtime/Notifier$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/Notifier$3;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowListPicker(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a list picker dialog. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 752
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v0, v1, :cond_1

    if-eqz p5, :cond_0

    .line 754
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0

    .line 756
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_2

    .line 760
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    goto :goto_0

    .line 762
    :cond_2
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    .line 766
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Notifier;->tglTheme:I

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 767
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 768
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 770
    :cond_3
    invoke-virtual {p3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    .line 772
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 773
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$14;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier$14;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I[Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 779
    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 782
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 783
    invoke-direct {p0, p1, p5}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final ShowMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a Message Dialog."
    .end annotation

    .line 1163
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    invoke-static {v0, p1, p2, p3, v1}, Lcom/google/appinventor/components/runtime/Notifier;->oneButtonAlert(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final ShowNumberPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a number picker dialog that enables the user to select a number from a predefined range. You can use the \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 928
    iput p7, p0, Lcom/google/appinventor/components/runtime/Notifier;->selectedNumber:I

    .line 929
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 931
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 932
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 v1, 0x0

    .line 934
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 936
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p3, "OK"

    :cond_1
    const/4 p2, -0x1

    .line 939
    new-instance v2, Lcom/google/appinventor/components/runtime/Notifier$18;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$18;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v0, p2, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 946
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p4, "Close"

    :cond_2
    const/4 p1, -0x2

    .line 949
    new-instance p2, Lcom/google/appinventor/components/runtime/Notifier$19;

    invoke-direct {p2, p0}, Lcom/google/appinventor/components/runtime/Notifier$19;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, p1, p4, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 956
    new-instance p2, Landroid/widget/NumberPicker;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {p2, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 957
    invoke-virtual {p2, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 958
    invoke-virtual {p2, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 959
    invoke-virtual {p2, p7}, Landroid/widget/NumberPicker;->setValue(I)V

    const/4 p1, 0x1

    .line 960
    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 961
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier$20;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/Notifier$20;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {p2, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const/16 p3, 0x1e

    const/16 p4, 0x1e

    const/16 p5, 0x1e

    const/16 p6, 0x1e

    move-object p1, v0

    .line 969
    invoke-virtual/range {p1 .. p6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 970
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 971
    invoke-direct {p0, v0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final ShowPasswordDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter password (input is masked), after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering password will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the entered password, or \"Cancel\" if CANCEL button was pressed."
    .end annotation

    const/4 v0, 0x1

    .line 1295
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final ShowProgressDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box with an optional title and message (use empty strings if they are not wanted). This dialog box contains a spinning artifact to indicate that the program is working. It cannot be canceled by the user but must be dismissed by the App Inventor Program by using the DismissProgressDialog block."
    .end annotation

    .line 1351
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->progressDialogHelper(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final ShowRadioListDialog(ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a radio list dialog with a list of options of which only one can be chosen. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    move-object v11, p0

    .line 611
    iget-object v12, v11, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v13, Lcom/google/appinventor/components/runtime/Notifier$6;

    move-object v0, v13

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/google/appinventor/components/runtime/Notifier$6;-><init>(Lcom/google/appinventor/components/runtime/Notifier;ILjava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Z)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowSpinningProgress(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a spinning progress dialog which can be dismissed by the user if \'cancelable\' is set to true. You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 564
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->handler:Landroid/os/Handler;

    new-instance v7, Lcom/google/appinventor/components/runtime/Notifier$5;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Notifier$5;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ShowTextDialog(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a dialog box where the user can enter text, after which the AfterTextInput event will be raised.  If cancelable is true there will be an additional CANCEL button. Entering text will raise the AfterTextInput event.  The \"response\" parameter to AfterTextInput will be the text that was entered, or \"Cancel\" if the CANCEL button was pressed."
    .end annotation

    const/4 v0, 0x0

    .line 1276
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Notifier;->textInputDialog(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final ShowTextInputDialog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;II)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show a text input dialog. Possible input types are: \"1= Normal text\", \"2= Password text\", \"3= Person name\", \"4= Email adress\", \"5|6= Number\", \"7= Password number\" or \"8= datetime\". You can use the \"Light Theme\" property to have a light or dark background. Or you enable \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p8

    move-object/from16 v6, p10

    .line 802
    iget v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget v8, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v7, v8, :cond_1

    if-eqz v4, :cond_0

    .line 804
    iget v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto :goto_0

    .line 806
    :cond_0
    iput v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 810
    iget v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    goto :goto_0

    .line 812
    :cond_2
    iput v7, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    .line 815
    :goto_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, v0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    iget v9, v0, Lcom/google/appinventor/components/runtime/Notifier;->txtTheme:I

    invoke-direct {v7, v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 816
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 817
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 821
    :cond_3
    new-instance v8, Landroid/widget/EditText;

    iget-object v9, v0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    if-eq v5, v9, :cond_a

    const/4 v10, 0x2

    if-ne v5, v10, :cond_4

    const/16 v5, 0x81

    .line 826
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_4
    const/4 v10, 0x3

    if-ne v5, v10, :cond_5

    const/16 v5, 0x61

    .line 828
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_5
    const/4 v10, 0x4

    if-ne v5, v10, :cond_6

    const/16 v5, 0x21

    .line 830
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_6
    const/4 v11, 0x5

    if-eq v5, v11, :cond_9

    const/4 v11, 0x6

    if-ne v5, v11, :cond_7

    goto :goto_1

    :cond_7
    const/4 v11, 0x7

    if-ne v5, v11, :cond_8

    const/16 v5, 0x3012

    .line 834
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_8
    const/16 v11, 0x8

    if-ne v5, v11, :cond_a

    .line 836
    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    :cond_9
    :goto_1
    const/16 v5, 0x3002

    .line 832
    invoke-virtual {v8, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_2

    .line 838
    :cond_a
    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    :goto_2
    if-eqz v2, :cond_b

    .line 841
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 842
    invoke-virtual {v8, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz v3, :cond_c

    .line 844
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 845
    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_c
    move/from16 v2, p11

    .line 847
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setTextColor(I)V

    move/from16 v2, p12

    .line 848
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 849
    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 v2, -0x1

    .line 852
    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$15;

    invoke-direct {v3, p0, v8, p1}, Lcom/google/appinventor/components/runtime/Notifier$15;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;I)V

    move-object/from16 v5, p9

    invoke-virtual {v7, v2, v5, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p7, :cond_d

    const/4 v2, -0x2

    .line 862
    new-instance v3, Lcom/google/appinventor/components/runtime/Notifier$16;

    invoke-direct {v3, p0, v8, p1, v6}, Lcom/google/appinventor/components/runtime/Notifier$16;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Landroid/widget/EditText;ILjava/lang/String;)V

    invoke-virtual {v7, v2, v6, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 871
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    .line 873
    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :goto_3
    move-object/from16 v1, p4

    .line 875
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 876
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 877
    invoke-direct {p0, v7, v4}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final ShowWordPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Shows a word picker dialog that enables the user to select a number from a predefined word. You can use the \"Use Background Color\" property to use the background color property as background dialog color."
    .end annotation

    .line 983
    invoke-virtual {p5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object p5

    .line 984
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 986
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 987
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p2, 0x0

    .line 989
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 991
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, "OK"

    :cond_1
    const/4 v1, -0x1

    .line 994
    new-instance v2, Lcom/google/appinventor/components/runtime/Notifier$21;

    invoke-direct {v2, p0, p1}, Lcom/google/appinventor/components/runtime/Notifier$21;-><init>(Lcom/google/appinventor/components/runtime/Notifier;I)V

    invoke-virtual {v0, v1, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1001
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p4, "Close"

    :cond_2
    const/4 p1, -0x2

    .line 1004
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$22;

    invoke-direct {p3, p0}, Lcom/google/appinventor/components/runtime/Notifier$22;-><init>(Lcom/google/appinventor/components/runtime/Notifier;)V

    invoke-virtual {v0, p1, p4, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1011
    new-instance v3, Landroid/widget/NumberPicker;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->activity:Landroid/app/Activity;

    invoke-direct {v3, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 1012
    invoke-virtual {v3, p2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 1013
    array-length p1, p5

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 1014
    invoke-virtual {v3, p5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v3, p3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1016
    new-instance p1, Lcom/google/appinventor/components/runtime/Notifier$24;

    invoke-direct {p1, p0, p5}, Lcom/google/appinventor/components/runtime/Notifier$24;-><init>(Lcom/google/appinventor/components/runtime/Notifier;[Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/16 v6, 0x1e

    const/16 v7, 0x1e

    move-object v2, v0

    .line 1024
    invoke-virtual/range {v2 .. v7}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 1025
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1026
    invoke-direct {p0, v0, p2}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final TextColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the text color for alerts or for dialogs message."
    .end annotation

    .line 374
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    return v0
.end method

.method public final TextColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 381
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->textColor:I

    return-void
.end method

.method public final TextFontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 406
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    return v0
.end method

.method public final TextFontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 413
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->messageTypeface:I

    return-void
.end method

.method public final TextFontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .line 419
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->messagefontTypefacePath:Ljava/lang/String;

    return-void
.end method

.method public final TitleColor()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the title text color for dialogs."
    .end annotation

    .line 361
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    return v0
.end method

.method public final TitleColor(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 368
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleColor:I

    return-void
.end method

.method public final TitleFontTypeface()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .line 387
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    return v0
.end method

.method public final TitleFontTypeface(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "typeface"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 394
    iput p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->titleTypeface:I

    return-void
.end method

.method public final TitleFontTypefaceImport(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "font_asset"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set a custom font."
    .end annotation

    .line 400
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->titlefontTypefacePath:Ljava/lang/String;

    return-void
.end method

.method public final UpdateProgress(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Change the current value of the linear progress dialog. Has no effect if \"indeterminate\" is set to true."
    .end annotation

    .line 556
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->progressl:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public final UseBackgroundColor(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled the dialog will use the color from the \"Background Color\"-option. Else it will use the theme (light or dark)."
    .end annotation

    .line 1108
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    return-void
.end method

.method public final UseBackgroundColor()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 1113
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->useBackgroundColor:Z

    return v0
.end method

.method public final WordPickerSelection(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the user has selected a word from the word picker dialog."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1031
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "WordPickerSelection"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final customChoose(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 268
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    const-string v1, "Theme.AppCompat.Light.Dialog.Alert"

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    if-eqz p9, :cond_0

    const-string v0, "Theme.AppCompat.Light.NoActionBar"

    .line 270
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 272
    :cond_0
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    :cond_1
    if-eqz p9, :cond_2

    const-string v0, "Theme.AppCompat.NoActionBar"

    .line 276
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/KodularResourcesUtil;->getStyle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 278
    :cond_2
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    .line 282
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 283
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p3, 0x0

    .line 287
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 288
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 289
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 292
    :cond_4
    invoke-static {p13, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 294
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$38;

    invoke-direct {p3, p0, p10}, Lcom/google/appinventor/components/runtime/Notifier$38;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p4, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x3

    .line 300
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$39;

    invoke-direct {p3, p0, p11}, Lcom/google/appinventor/components/runtime/Notifier$39;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p5, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p8, :cond_5

    const/4 p2, -0x2

    .line 310
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$40;

    invoke-direct {p3, p0, p12}, Lcom/google/appinventor/components/runtime/Notifier$40;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2, p6, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    :cond_5
    invoke-direct {p0, p7}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 319
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 320
    invoke-direct {p0, p1, p9}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final customMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 182
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->currentTheme:I

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT:I

    if-ne v0, v1, :cond_1

    if-eqz p6, :cond_0

    .line 184
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_LIGHT_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 186
    :cond_0
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 190
    iget v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->DIALOG_DARK_FULLSCREEN:I

    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    goto :goto_0

    .line 192
    :cond_2
    iput v0, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    .line 196
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget v1, p0, Lcom/google/appinventor/components/runtime/Notifier;->msgTheme:I

    invoke-direct {v0, p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 198
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 201
    invoke-direct {p0, p5}, Lcom/google/appinventor/components/runtime/Notifier;->iconHelper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_4

    .line 204
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p5

    invoke-virtual {p1, p5}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 207
    :cond_4
    iget-boolean p5, p0, Lcom/google/appinventor/components/runtime/Notifier;->linkify:Z

    invoke-static {p5, p1, p2}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    const/4 p2, -0x3

    .line 209
    new-instance p5, Lcom/google/appinventor/components/runtime/Notifier$1;

    invoke-direct {p5, p0, p3}, Lcom/google/appinventor/components/runtime/Notifier$1;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4, p5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 215
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 216
    invoke-direct {p0, p1, p6}, Lcom/google/appinventor/components/runtime/Notifier;->setDialogHelper(Landroid/app/Dialog;Z)V

    return-void
.end method

.method public final twoButtonDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 2

    .line 1232
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowChooseDialog: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notifier"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1234
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1235
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    const/4 p3, 0x0

    .line 1237
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1238
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 1239
    invoke-static {p2}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1242
    :cond_1
    invoke-static {p10, v0, p2}, Lcom/google/appinventor/components/runtime/Notifier;->linkifyIfNeeded(ZLandroid/app/AlertDialog;Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 1244
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$32;

    invoke-direct {p3, p0, p7}, Lcom/google/appinventor/components/runtime/Notifier$32;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, p4, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x3

    .line 1250
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$33;

    invoke-direct {p3, p0, p8}, Lcom/google/appinventor/components/runtime/Notifier$33;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, p5, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    if-eqz p6, :cond_2

    const/high16 p2, 0x1040000

    .line 1259
    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x2

    .line 1260
    new-instance p3, Lcom/google/appinventor/components/runtime/Notifier$35;

    invoke-direct {p3, p0, p9}, Lcom/google/appinventor/components/runtime/Notifier$35;-><init>(Lcom/google/appinventor/components/runtime/Notifier;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2, p1, p3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1267
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
