.class public Lcom/google/appinventor/components/runtime/File;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component for storing and retrieving files. Use this component to write or read files on your device. The default behaviour is to write files to the private data directory associated with your App. The Companion is special cased to write files to a public directory for debugging. Use the More information link to read more about how the File component uses paths and scopes to manage access to files."
    iconName = "images/file.png"
    nonVisible = true
    version = 0x8
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "zip4j.jar"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileComponent"


# instance fields
.field private scope:Lcom/google/appinventor/components/common/FileScope;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 0

    .line 98
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 90
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    .line 99
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/File;->DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V

    return-void
.end method

.method private write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    const-string v0, "//"

    .line 784
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p4, 0x83a

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p3, p0, p2, p4, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "/"

    .line 789
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 793
    :cond_1
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$4;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    move v8, p4

    move-object v9, p3

    move-object v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/google/appinventor/components/runtime/File$4;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;ZLjava/lang/String;Ljava/lang/String;)V

    .line 839
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$4;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public AfterFileSaved(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents of the file have been written."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "AfterFileSaved"

    .line 614
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterUnzip()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the zip file have been created."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterUnzip"

    .line 704
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AfterZip()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the zip file have been created."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "AfterZip"

    .line 699
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public AppendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Appends text to the end of a file storage, creating the file if it does not exist. See the help text under SaveFile for information about where files are written."
    .end annotation

    const-string v0, "AppendToFile"

    const/4 v1, 0x1

    .line 513
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public Copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Copy a file. If input path started with two // (slashes) then it\'s a asset file. You can not copy a file into the assets directory. Use CopyFile instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "//"

    .line 629
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 632
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    sget-object v4, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    new-instance v6, Lcom/google/appinventor/components/runtime/File$12;

    invoke-direct {v6, p0}, Lcom/google/appinventor/components/runtime/File$12;-><init>(Lcom/google/appinventor/components/runtime/File;)V

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/File;->CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public CopyFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "CopyFile"

    if-eq p3, v0, :cond_0

    .line 382
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 383
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 384
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 385
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$8;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$8;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 386
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 417
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 418
    invoke-static {v0, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void

    .line 376
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x83a

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 378
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1
.end method

.method public CreateDirectory(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a new directory. Use MakeDirectory instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$3;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$3;-><init>(Lcom/google/appinventor/components/runtime/File;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public DefaultScope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "App"
        editorType = "file_scope"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public Delete(Ljava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Deletes a file from storage. Prefix the filename with / to delete a specific file in the SD card, for instance /myFile.txt. will delete the file /sdcard/myFile.txt. If the file does not begin with a /, then the file located in the programs private storage will be deleted. Starting the file with // is an error because assets files cannot be deleted."
    .end annotation

    const-string v0, "//"

    .line 574
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x839

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Delete"

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 580
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$11;

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v7, "Delete"

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v3, v0

    move-object v4, p0

    move-object v6, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v9}, Lcom/google/appinventor/components/runtime/File$11;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)V

    .line 591
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$11;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public DirectoryCreated(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that there was a directory created. The return value is \'true\' or \'false\'."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 772
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DirectoryCreated"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Exists(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 655
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 656
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "Exists"

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 657
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$2;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$2;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 658
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 663
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 664
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public Exists(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether a file exists. If file path started with two // (slashes) then it means you would check if a asset file exists. Use the other Exists function instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public FileSize(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get file size"
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    .line 670
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public GetFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get file name"
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public GetFreeSpace(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get Free Space"
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetTotalSpace(Ljava/lang/String;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get total space"
    .end annotation

    .line 678
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    return-wide v0
.end method

.method public GotText(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that the contents from the file have been read."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotText"

    .line 604
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public IsDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 334
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "IsDirectory"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 337
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v3, "FileComponent"

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "contents of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 339
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 341
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x83e

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-virtual {p1, p0, v1, p3, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 347
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 348
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 349
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$7;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$7;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 350
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 357
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public IsDirectory(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the path is a directory. Use the other IsDirectory function instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    .line 322
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public IsFile(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the path is a file"
    .end annotation

    .line 693
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    .line 694
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public LegacyMode(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        userVisible = false
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 119
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/appinventor/components/common/FileScope;->App:Lcom/google/appinventor/components/common/FileScope;

    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public LegacyMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows app to access files from the root of the external storage directory (legacy mode)."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ListDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 277
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v1, 0x0

    const-string v2, "ListDirectory"

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->isRepl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v4, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/google/appinventor/components/runtime/util/FileUtil;->listDirectory(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/util/ScopedFile;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 282
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x840

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p1, p0, v2, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 286
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_2

    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Landroidx/documentfile/provider/DocumentFile;->fromTreeUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 288
    invoke-virtual {p1}, Landroidx/documentfile/provider/DocumentFile;->listFiles()[Landroidx/documentfile/provider/DocumentFile;

    move-result-object p1

    .line 289
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 291
    invoke-virtual {v2}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 293
    :cond_1
    invoke-interface {p3, p2}, Lcom/google/appinventor/components/runtime/util/Continuation;->call(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string v0, "/"

    .line 296
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_3
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 300
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v4, p0, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    .line 301
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    .line 302
    invoke-virtual {v1, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 303
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$6;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$6;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 304
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 314
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 315
    invoke-static {v0, p3}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, v0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x83c

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "MakeDirectory"

    invoke-virtual {p1, p0, p2, p3, v0}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/File$1;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v8, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    const-string v5, "MakeDirectory"

    move-object v1, v0

    move-object v2, p0

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/google/appinventor/components/runtime/File$1;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 229
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/File$1;->run()V

    return-void
.end method

.method public MakeFullPath(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v0, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Move(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move a file. You can not move asset files. Use MoveFile instead."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "//"

    .line 620
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p1, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    sget-object v1, Lcom/google/appinventor/components/common/FileScope;->Legacy:Lcom/google/appinventor/components/common/FileScope;

    invoke-static {v0, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getExternalFile(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public MoveFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 440
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "MoveFile"

    if-ne p1, v0, :cond_0

    .line 441
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x839

    new-array p4, v2, [Ljava/lang/Object;

    aput-object p2, p4, v1

    invoke-virtual {p1, p0, v3, p3, p4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne p3, v0, :cond_1

    .line 446
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p2, 0x83a

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p4, p3, v1

    invoke-virtual {p1, p0, v3, p2, p3}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 452
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 453
    new-instance v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v1, v2, p0, v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 454
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 455
    invoke-virtual {p1, p3, p4, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$9;

    invoke-direct {p2, p0, v0}, Lcom/google/appinventor/components/runtime/File$9;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    .line 456
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 467
    invoke-static {v0, p5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public OnZipFailure(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that there was any failure on zip or unzip a file."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OnZipFailure"

    .line 709
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ReadFrom(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reads text from a file in storage. Prefix the filename with / to read from a specific file on the SD card. for instance /myFile.txt will read the file /sdcard/myFile.txt. To read assets packaged with an application (also works for the Companion) start the filename with // (two slashes). If a filename does not start with a slash, it will be read from the applications private storage (for packaged apps) and from /sdcard/AppInventor/data for the Companion."
    .end annotation

    .line 532
    :try_start_0
    new-instance v7, Lcom/google/appinventor/components/runtime/File$10;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v4, "ReadFrom"

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/appinventor/components/runtime/File$10;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)V

    .line 557
    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/File$10;->run()V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public ReadPermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.READ_EXTERNAL_STORAGE"
        }
    .end annotation

    return-void
.end method

.method public RemoveDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;ZLcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/appinventor/components/common/FileScope;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/appinventor/components/runtime/util/Continuation<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 244
    sget-object v0, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    const-string v1, "RemoveDirectory"

    if-ne p1, v0, :cond_0

    .line 245
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 p3, 0x841

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    invoke-virtual {p1, p0, v1, p3, p4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 250
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    .line 251
    new-instance v2, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/File;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {v2, v3, p0, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->WRITE:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    .line 252
    invoke-virtual {v2, p1, p2, v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    new-instance p2, Lcom/google/appinventor/components/runtime/File$5;

    invoke-direct {p2, p0, v0, p3}, Lcom/google/appinventor/components/runtime/File$5;-><init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/util/Synchronizer;Z)V

    .line 253
    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 264
    invoke-static {v0, p4}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->finish(Lcom/google/appinventor/components/runtime/util/Synchronizer;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    return-void
.end method

.method public SaveFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves text to a file. If the filename begins with a slash (/) the file is written to the sdcard. For example writing to /myFile.txt will write the file to /sdcard/myFile.txt. If the filename does not start with a slash, it will be written in the programs private data directory where it will not be accessible to other programs on the phone. There is a special exception for the AI Companion where these files are written to /sdcard/AppInventor/data to facilitate debugging. Note that this block will overwrite a file if it already exists.\n\nIf you want to add content to a file use the append block."
    .end annotation

    const-string v0, "SaveFile"

    const/4 v1, 0x0

    .line 500
    invoke-direct {p0, p2, v0, p1, v1}, Lcom/google/appinventor/components/runtime/File;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public Scope()Lcom/google/appinventor/components/common/FileScope;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-object v0
.end method

.method public Scope(Lcom/google/appinventor/components/common/FileScope;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/File;->scope:Lcom/google/appinventor/components/common/FileScope;

    return-void
.end method

.method public Unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Unzip a file with or without a password. If you dont need a passwort then let it empty."
    .end annotation

    .line 745
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {v0, p1}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 746
    invoke-virtual {v0}, Lnet/lingala/zip4j/core/ZipFile;->isEncrypted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 747
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/core/ZipFile;->setPassword(Ljava/lang/String;)V

    .line 749
    :cond_0
    invoke-virtual {v0, p2}, Lnet/lingala/zip4j/core/ZipFile;->extractAll(Ljava/lang/String;)V

    .line 750
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File;->AfterUnzip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 752
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FileComponent"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/File;->OnZipFailure(Ljava/lang/String;)V

    return-void
.end method

.method public WritePermission(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
        value = {
            "android.permission.WRITE_EXTERNAL_STORAGE"
        }
    .end annotation

    return-void
.end method

.method public Zip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Create a zip file with or without a password."
    .end annotation

    .line 716
    :try_start_0
    new-instance v0, Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/ZipParameters;-><init>()V

    const/16 v1, 0x8

    .line 717
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    const/4 v1, 0x5

    .line 718
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionLevel(I)V

    .line 720
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 721
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    const/16 v1, 0x63

    .line 722
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    const/4 v1, 0x3

    .line 723
    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setAesKeyStrength(I)V

    .line 724
    invoke-virtual {v0, p3}, Lnet/lingala/zip4j/model/ZipParameters;->setPassword(Ljava/lang/String;)V

    .line 727
    :cond_0
    new-instance p3, Lnet/lingala/zip4j/core/ZipFile;

    invoke-direct {p3, p2}, Lnet/lingala/zip4j/core/ZipFile;-><init>(Ljava/lang/String;)V

    .line 729
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 731
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/core/ZipFile;->addFile(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    goto :goto_0

    .line 732
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 733
    invoke-virtual {p3, p2, v0}, Lnet/lingala/zip4j/core/ZipFile;->addFolder(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V

    .line 735
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/File;->AfterZip()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 737
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "FileComponent"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/File;->OnZipFailure(Ljava/lang/String;)V

    return-void
.end method
