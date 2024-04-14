.class public Lcom/google/appinventor/components/runtime/ImagePicker;
.super Lcom/google/appinventor/components/runtime/Picker;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A special-purpose button. When the user taps an image picker, the device\'s image gallery appears, and the user can choose an image."
    version = 0xb
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation


# instance fields
.field private N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private form:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Picker;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Ljava/lang/String;

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->context:Landroid/content/Context;

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p1, "ImagePicker"

    const-string v0, "ImagePicker Created"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9

    const-string v0, "_data"

    .line 122
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 123
    new-instance v8, Landroidx/loader/content/CursorLoader;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->context:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Landroidx/loader/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8}, Landroidx/loader/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "ERROR"

    return-object p1

    .line 126
    :cond_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/ImagePicker;)Lcom/google/appinventor/components/runtime/Form;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method


# virtual methods
.method public Selection()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Path to the file containing the image that was selected."
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Ljava/lang/String;

    return-object v0
.end method

.method public click()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/ImagePicker$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/ImagePicker$1;-><init>(Lcom/google/appinventor/components/runtime/ImagePicker;)V

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 3

    .line 101
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->requestCode:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 114
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ImagePicker;->N4rx6qe3Dkxm9iGosdnZviEGwwAyjrMopVTdmRoB5smsVn2ef0JNliQjJW08w5OT:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ImagePicker;->AfterPicking(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
