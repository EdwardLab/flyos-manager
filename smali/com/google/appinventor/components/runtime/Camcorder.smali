.class public Lcom/google/appinventor/components/runtime/Camcorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to record a video using the device\'s camcorder.After the video is recorded, the name of the file on the phone containing the clip is available as an argument to the AfterRecording event. The file name can be used, for example, to set the source property of a VideoPlayer component."
    iconName = "images/camcorder.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.CAMERA"
    }
.end annotation


# instance fields
.field private final container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private havePermission:Z

.field private requestCode:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 65
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    .line 66
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Camcorder;)Z
    .locals 1

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    return v0
.end method


# virtual methods
.method public AfterRecording(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterRecording"

    .line 168
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Initialize()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    .line 74
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    :cond_0
    return-void
.end method

.method public RecordVideo()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 84
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-boolean v1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->havePermission:Z

    if-nez v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Camcorder$1;

    invoke-direct {v1, p0, p0}, Lcom/google/appinventor/components/runtime/Camcorder$1;-><init>(Lcom/google/appinventor/components/runtime/Camcorder;Lcom/google/appinventor/components/runtime/Camcorder;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v1, "mounted"

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "CamcorderComponent"

    const-string v1, "External storage is available and writable"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->requestCode:I

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->requestCode:I

    .line 115
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/google/appinventor/components/runtime/Camcorder;->requestCode:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const-string v1, "mounted_ro"

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "RecordVideo"

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2c0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0x2c1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public resultReturned(IILandroid/content/Intent;)V
    .locals 5

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Returning result. Request code = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CamcorderComponent"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget v0, p0, Lcom/google/appinventor/components/runtime/Camcorder;->requestCode:I

    const/4 v2, 0x0

    const/16 v3, 0x4b1

    const-string v4, "TakeVideo"

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 132
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Calling Camcorder.AfterPicture with clip path "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 133
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/Camcorder;->AfterRecording(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Couldn\'t find a clip file from the Camcorder result"

    .line 137
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v4, v3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p1, "No clip filed return; request failed"

    .line 142
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Camcorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v4, v3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
