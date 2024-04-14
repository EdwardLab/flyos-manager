.class public Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->GOOGLE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Firebase Storage"
    iconName = "images/firebaseDB.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "firebase-annotations.jar",
        "firebase-appcheck-interop.jar",
        "firebase-appcheck-interop.aar",
        "firebase-auth-interop.jar",
        "firebase-auth-interop.aar",
        "firebase-common.jar",
        "firebase-common.aar",
        "firebase-components.jar",
        "firebase-components.aar",
        "firebase-storage.jar",
        "firebase-storage.aar",
        "play-services-base.jar",
        "play-services-base.aar",
        "play-services-basement.jar",
        "play-services-basement.aar",
        "play-services-tasks.jar",
        "play-services-tasks.aar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.WAKE_LOCK",
        "com.google.android.c2dm.permission.RECEIVE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/FirebaseStorage;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 66
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 67
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->context:Landroid/content/Context;

    .line 68
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/FirebaseStorage;

    .line 69
    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method


# virtual methods
.method public DeleteFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be deleted"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "DeleteFailed"

    .line 225
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DeleteFile(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to delete a file from Firebase Storage"
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->delete()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$7;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$7;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$6;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$6;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public DeleteSuccess(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully deleted"
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DeleteSuccess"

    .line 220
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be downloaded"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "DownloadFailed"

    .line 215
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to download a file from Firebase Storage"
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p2, "Could not create a folder to store the download"

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->DownloadFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageReference;->getFile(Ljava/io/File;)Lcom/google/firebase/storage/FileDownloadTask;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Lcom/google/firebase/storage/FileDownloadTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object p2

    new-instance v0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$4;

    invoke-direct {v0, p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$4;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2, v0}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    return-void
.end method

.method public DownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully downloaded"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "DownloadSuccess"

    .line 210
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GetBucket()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the name of the Storage Bucket"
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getBucket()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public PauseDownloads()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause all the active downloads"
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getActiveDownloadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/FileDownloadTask;

    .line 176
    invoke-virtual {v1}, Lcom/google/firebase/storage/FileDownloadTask;->pause()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public PauseUploads()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause all the active uploads"
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getActiveUploadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/UploadTask;

    .line 160
    invoke-virtual {v1}, Lcom/google/firebase/storage/UploadTask;->pause()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ResumeDownloads()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume all the active downloads"
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getActiveDownloadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/FileDownloadTask;

    .line 184
    invoke-virtual {v1}, Lcom/google/firebase/storage/FileDownloadTask;->resume()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ResumeUploads()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resume all the active uploads"
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getActiveUploadTasks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/storage/UploadTask;

    .line 168
    invoke-virtual {v1}, Lcom/google/firebase/storage/UploadTask;->resume()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public UploadFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file could not be uploaded"
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "UploadFailed"

    .line 200
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Try to upload a file to Firebase Storage"
    .end annotation

    .line 75
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 78
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2, p2}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object v2

    .line 79
    invoke-virtual {v2, v1}, Lcom/google/firebase/storage/StorageReference;->putStream(Ljava/io/InputStream;)Lcom/google/firebase/storage/UploadTask;

    move-result-object v1

    .line 81
    new-instance v3, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;

    invoke-direct {v3, p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$3;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/google/firebase/storage/UploadTask;->addOnProgressListener(Lcom/google/firebase/storage/OnProgressListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$2;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$2;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$1;-><init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Lcom/google/firebase/storage/StorageReference;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->UploadFailed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public UploadProgress(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file upload progress changed"
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 205
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const-string p1, "UploadProgress"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when the file was successfully uploaded"
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const-string p1, "UploadSuccess"

    .line 195
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method
