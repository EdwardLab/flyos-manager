.class final Lcom/google/appinventor/components/runtime/File$1;
.super Lcom/google/appinventor/components/runtime/util/SingleFileOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/File;->MakeDirectory(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/Continuation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/Continuation;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/File;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 200
    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/File;

    move-object/from16 v0, p8

    iput-object v0, v8, Lcom/google/appinventor/components/runtime/File$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/Continuation;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/appinventor/components/runtime/util/SingleFileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;Lcom/google/appinventor/components/runtime/util/FileAccessMode;Z)V

    return-void
.end method

.method private onSuccess()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/File$1$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/File$1$1;-><init>(Lcom/google/appinventor/components/runtime/File$1;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final processFile(Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/File$1;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1, v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->resolve(Lcom/google/appinventor/components/runtime/Form;)Ljava/io/File;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    return-void

    :cond_0
    const/16 v0, 0x83d

    new-array v2, v2, [Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/File$1;->onSuccess()V

    return-void

    :cond_2
    const/16 v0, 0x83c

    new-array v2, v2, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/google/appinventor/components/runtime/File$1;->reportError(I[Ljava/lang/Object;)V

    return-void
.end method
