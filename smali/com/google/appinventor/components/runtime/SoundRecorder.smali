.class public final Lcom/google/appinventor/components/runtime/SoundRecorder;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Multimedia component that records audio.</p>"
    iconName = "images/soundRecorder.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.RECORD_AUDIO"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    }
.end annotation


# instance fields
.field private havePermission:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

.field private peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 149
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, ""

    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SoundRecorder;)Z
    .locals 1

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    return v0
.end method


# virtual methods
.method public final AfterSoundRecorded(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Provides the location of the newly created sound."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterSoundRecorded"

    .line 361
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Initialize()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsWritePermission(Lcom/google/appinventor/components/common/FileScope;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    :cond_0
    return-void
.end method

.method public final Pause()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to pause the sound recorder. Works only on Android 6 and above."
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v0, :cond_0

    .line 1116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1117
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V

    .line 1118
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->PausedRecording()V

    :cond_0
    return-void
.end method

.method public final PausedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has paused, and can be resumed again."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "PausedRecording"

    .line 376
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Resume()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to resume the sound recorder. Works only on Android 6 and above."
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    if-eqz v0, :cond_0

    .line 1123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1124
    iget-object v1, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    .line 1125
    iget-object v0, v0, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->ResumedRecording()V

    :cond_0
    return-void
.end method

.method public final ResumedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has resumed, and can be started again."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ResumedRecording"

    .line 381
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final SavedRecording()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Specifies the path to the file where the recording should be stored. If this property is the empty string, then starting a recording will create a file in an appropriate location.  If the property is not the empty string, it should specify a complete path to a file in an existing directory, including a file name with the extension .3gp."
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    return-object v0
.end method

.method public final SavedRecording(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    return-void
.end method

.method public final Start()V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to start the sound recorder."
    .end annotation

    const-string v0, "Cannot record sound"

    .line 187
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->DefaultFileScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object v1

    .line 188
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->havePermission:Z

    const-string v3, "Start"

    if-nez v2, :cond_2

    .line 192
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.RECORD_AUDIO"

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 193
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    .line 197
    :goto_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SoundRecorder$1;

    invoke-direct {v2, p0, p0, v3, v0}, Lcom/google/appinventor/components/runtime/SoundRecorder$1;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v2, Lcom/google/appinventor/components/runtime/SoundRecorder$2;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, p0, v3, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder$2;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    return-void

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v4, "SoundRecorder"

    if-eqz v2, :cond_3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start() called, but already recording to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v2, "Start() called"

    .line 222
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->isExternalStorageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 224
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v5, "mounted"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 225
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x2c1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_4
    const/4 v1, 0x1

    const/16 v5, 0x322

    .line 231
    :try_start_0
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 232
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 233
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_5

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 237
    :cond_5
    new-instance v6, Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->peQa36WzmOGDKVPxAtWvq1pN83yXrV2fw2e1QvLyEngIwdojN2EAkDoWXzH8bj7w:Ljava/lang/String;

    invoke-direct {v6, p0, v7}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;-><init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v7, "starting"

    .line 1092
    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1095
    :try_start_2
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StartedRecording()V

    return-void

    :catch_0
    move-exception v6

    :try_start_3
    const-string v7, "got IllegalStateException. Are there two recorders running?"

    .line 1100
    invoke-static {v4, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1103
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Is there another recording running?"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v6

    const/4 v7, 0x0

    .line 253
    iput-object v7, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 254
    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 255
    invoke-virtual {v0, p0, v3, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception v6

    .line 242
    invoke-static {v4, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 243
    invoke-virtual {v0, p0, v3, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception v0

    .line 239
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, p0, v3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method

.method public final StartedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has started, and can be stopped."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StartedRecording"

    .line 366
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final Stop()V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to stop the sound recorder."
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v1, "SoundRecorder"

    if-nez v0, :cond_0

    const-string v0, "Stop() called, but already stopped."

    .line 322
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v2, "Stop() called"

    .line 326
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "stopping"

    .line 327
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->stop()V

    .line 329
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing AfterSoundRecorded with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->T3TEUSUxjrJVucuujQ9pjstrX3UcxHV1L9cOGs7CI5pfz9hjmRfdL7GRyW8ebdVq:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/appinventor/components/runtime/SoundRecorder;->AfterSoundRecorded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    .line 332
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v2, "Stop"

    const/16 v3, 0x321

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 334
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_1
    move-exception v1

    .line 334
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 335
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 336
    throw v1
.end method

.method public final StoppedRecording()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the recorder has stopped, and can be started again."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StoppedRecording"

    .line 371
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final onError(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 264
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string p3, "SoundRecorder"

    if-eqz p2, :cond_1

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x321

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onError"

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 270
    :try_start_0
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 275
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_0
    move-exception p2

    .line 272
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 274
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 275
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_1
    move-exception p2

    .line 274
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 275
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 276
    throw p2

    :cond_1
    :goto_0
    const-string p1, "onError called with wrong recorder. Ignoring."

    .line 265
    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3

    .line 281
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    const-string v0, "SoundRecorder"

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    if-eq p1, p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    const/16 p3, 0x321

    const-string v1, "recording"

    const/4 v2, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x320

    if-eq p2, p1, :cond_2

    if-eq p2, p3, :cond_1

    return-void

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x325

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x324

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_3
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v1, p3, p2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    const-string p2, "Recoverable condition while recording. Will attempt to stop normally."

    .line 304
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    iget-object p2, p2, Lcom/google/appinventor/components/runtime/SoundRecorder$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_1
    const-string p3, "SoundRecorder was not in a recording state."

    .line 307
    invoke-static {v0, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string p3, "Stop"

    const/16 v0, 0x323

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p2, p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    return-void

    .line 311
    :goto_1
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder$a;

    .line 312
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->StoppedRecording()V

    .line 313
    throw p2

    :cond_4
    :goto_2
    const-string p1, "onInfo called with wrong recorder. Ignoring."

    .line 282
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
