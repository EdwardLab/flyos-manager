.class public Lcom/google/appinventor/components/runtime/MakeroidCloudinary;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that allows you to upload media to Cloudinary."
    iconName = "images/cloudinary.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "cloudinary-android.jar",
        "cloudinary-android.aar",
        "cloudinary-core.jar",
        "android-job.aar",
        "android-job.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;
    }
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Ljava/lang/String;

.field private havePermission:Z

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 56
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->havePermission:Z

    .line 57
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    const-string p1, "Cloudinary"

    const-string v0, "Cloudinary created"

    .line 59
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Z
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->havePermission:Z

    return v0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public APIKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Cloudinary API key."
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object v0
.end method

.method public APIKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-void
.end method

.method public APISecret()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Cloudinary API secret."
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Ljava/lang/String;

    return-object v0
.end method

.method public APISecret(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->d234MfENUlM4amVCwiSVT0zMH9PGXT5eiUB6zvL6xVkA0Jl6b9GwzoZDcJDZRVrq:Ljava/lang/String;

    return-void
.end method

.method public CloudName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Your Cloudinary cloud name."
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Ljava/lang/String;

    return-object v0
.end method

.method public CloudName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Ljava/lang/String;

    return-void
.end method

.method public MediaUploaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after the Upload Media block has been used"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "MediaUploaded"

    .line 197
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadMedia(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Uploads the specified media file to your Cloudinary media library."
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->havePermission:Z

    if-nez v1, :cond_1

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 122
    :cond_1
    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;

    invoke-direct {v1, p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidCloudinary;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/MakeroidCloudinary$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 98
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidCloudinary;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2bd

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "UploadMedia"

    invoke-virtual {p1, p0, v2, v1, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
