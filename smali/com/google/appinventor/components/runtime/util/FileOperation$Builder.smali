.class public Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

.field private final ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;",
            ">;"
        }
    .end annotation
.end field

.field private aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

.field private async:Z

.field private component:Lcom/google/appinventor/components/runtime/Component;

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/google/appinventor/components/runtime/util/ScopedFile;",
            "Lcom/google/appinventor/components/runtime/util/FileAccessMode;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/String;

.field private final vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/LinkedHashMap;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/util/List;

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 215
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)V
    .locals 2

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/LinkedHashMap;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/util/List;

    const/4 v0, 0x1

    .line 213
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    const/4 v1, 0x0

    .line 214
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 215
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    .line 229
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 230
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 231
    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/util/List;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z
    .locals 0

    .line 206
    iget-boolean p0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    return p0
.end method


# virtual methods
.method public addCommand(Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFile(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 4

    .line 258
    new-instance v0, Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-direct {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/ScopedFile;-><init>(Lcom/google/appinventor/components/common/FileScope;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object v1

    sget-object v2, Lcom/google/appinventor/components/common/FileScope;->Asset:Lcom/google/appinventor/components/common/FileScope;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    const/16 v1, 0x83a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 261
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 260
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 262
    new-instance p1, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw p1

    .line 264
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p2, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->resolveFileName(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/common/FileScope;)Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileOperation;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resolved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v1, p1}, Lcom/google/appinventor/components/runtime/util/FileUtil;->needsPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr p2, v1

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->R6I3TvhVUzjImNcsZnPIarNQNa08KFL5suF8ZyHVabZqiWX3lxOTmOWImMG2ChIe:Z

    .line 268
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {p2, p1, p3}, Lcom/google/appinventor/components/runtime/util/FileUtil;->getNeededPermission(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/FileAccessMode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 270
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x21

    if-lt p1, p2, :cond_3

    .line 273
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/ScopedFile;->getScope()Lcom/google/appinventor/components/common/FileScope;

    move-result-object p1

    sget-object p2, Lcom/google/appinventor/components/common/FileScope;->Shared:Lcom/google/appinventor/components/common/FileScope;

    if-ne p1, p2, :cond_3

    sget-object p1, Lcom/google/appinventor/components/runtime/util/FileAccessMode;->READ:Lcom/google/appinventor/components/runtime/util/FileAccessMode;

    if-ne p3, p1, :cond_3

    .line 275
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 276
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    const-string p2, "android.permission.READ_MEDIA_AUDIO"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    const-string p2, "android.permission.READ_MEDIA_IMAGES"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/util/Set;

    const-string p2, "android.permission.READ_MEDIA_VIDEO"

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public build()Lcom/google/appinventor/components/runtime/util/FileOperation;
    .locals 7

    .line 304
    new-instance v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-object v6
.end method

.method public setAskPermission(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 294
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->aWkZqinykMPj8SPm5jVT2wNdrJPpyMEjt10g4Ng570XD4n7VSaFhL3td3g0Xab2G:Z

    return-object p0
.end method

.method public setAsynchronous(Z)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 289
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->async:Z

    return-object p0
.end method

.method public setComponent(Lcom/google/appinventor/components/runtime/Component;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->component:Lcom/google/appinventor/components/runtime/Component;

    return-object p0
.end method

.method public setForm(Lcom/google/appinventor/components/runtime/Form;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->form:Lcom/google/appinventor/components/runtime/Form;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->method:Ljava/lang/String;

    return-object p0
.end method
