.class public Lcom/google/appinventor/components/runtime/AudioPicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A special-purpose button. When the user taps an audio picker, the device\'s audio gallery appears, and the user can choose an audio file."
    version = 0x6
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 43
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/lang/String;

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->context:Landroid/content/Context;

    .line 55
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p1, "AudioPicker"

    const-string v0, "AudioPicker Created"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/AudioPicker;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const-string v0, "_data"

    .line 118
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 119
    new-instance v8, Landroidx/loader/content/CursorLoader;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v8}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 123
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    if-eqz p1, :cond_2

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "ERROR"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Path to the file containing the audio file that was selected."
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/AudioPicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/AudioPicker$1;-><init>(Lcom/google/appinventor/components/runtime/AudioPicker;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 3

    .line 97
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 110
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 111
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AudioPicker;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/AudioPicker;->vOibdtOfNxMVixWab9VDGgvD9L4Kqb2ZDQBius3PMdhiP1dPN68Z9GzWJA49TUbE:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/AudioPicker;->AfterPicking(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
