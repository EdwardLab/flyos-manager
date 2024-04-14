.class public Lcom/google/appinventor/components/runtime/ReplForm;
.super Lcom/google/appinventor/components/runtime/Form;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ReplForm"

.field public static topform:Lcom/google/appinventor/components/runtime/ReplForm;


# instance fields
.field private I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Z

.field private IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

.field private P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:Z

.field private f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

.field roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

.field sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

.field private showOptionsMenu:Z

.field private xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Form;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    const/4 v1, 0x0

    .line 49
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Z

    .line 52
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 53
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    .line 58
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    .line 62
    sput-object p0, Lcom/google/appinventor/components/runtime/ReplForm;->topform:Lcom/google/appinventor/components/runtime/ReplForm;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static returnRetvals(Ljava/lang/String;)V
    .locals 4

    .line 314
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    check-cast v0, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 315
    sget-object v1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "returnRetvals: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->sendToCompanion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ShowOptionsMenu(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .line 176
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    .line 177
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->ShowOptionsMenu(Z)V

    return-void
.end method

.method protected closeApplicationFromBlocks()V
    .locals 1

    .line 154
    new-instance v0, Lcom/google/appinventor/components/runtime/ReplForm$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/ReplForm$1;-><init>(Lcom/google/appinventor/components/runtime/ReplForm;)V

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected closeForm(Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Not Yet"

    .line 142
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/RetValManager;->popScreen(Ljava/lang/String;)V

    return-void
.end method

.method public evalScheme(Ljava/lang/String;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm$SchemeInterface;->eval(Ljava/lang/String;)V

    return-void
.end method

.method public getAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAssetPathForExtension(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 352
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/appinventor/components/annotations/SimpleObject;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/appinventor/components/annotations/SimpleObject;

    if-eqz v0, :cond_0

    .line 353
    invoke-interface {v0}, Lcom/google/appinventor/components/annotations/SimpleObject;->external()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "file:///android_asset/"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 357
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const-string v1, "."

    .line 360
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/assets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 372
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object p2, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "file://"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 378
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPrivatePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplDataPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isAssetsLoaded()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Z

    return v0
.end method

.method public isRepl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public loadComponents(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 277
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 279
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->activeForm:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object p1

    const-string v1, "componentDexs"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    .line 280
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1251
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    .line 1253
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    .line 282
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Unable to create components directory"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xce4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "App Inventor"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "Unable to create component directory."

    aput-object v2, v0, v1

    const-string v1, "loadComponents"

    .line 283
    invoke-virtual {p0, p0, v1, p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEventDialog(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void

    .line 288
    :cond_1
    const-class v3, Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    iget-object v6, p0, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 291
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v6, v1

    :goto_1
    if-ge v2, v6, :cond_3

    aget-object v7, v1, v2

    .line 292
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 293
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 294
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "classes.jar"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".jar"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 297
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 298
    sget-object v7, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Loading component dex "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v7, p0, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    sget-char v7, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 305
    :cond_3
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 308
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 97
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 98
    invoke-static {p0, v0}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "external_comps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->xphF7LaxLBhBSMXngqFaYY3J3HcWUabJuEaZGB2R7V3S4be2YKLOC6pwY1axtLQT:Ljava/lang/String;

    .line 100
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreate(Landroid/os/Bundle;)V

    .line 101
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->f473zvQHzIj2nKVz26VGsoax0ZAlFbP830ERztRpaiUumZZlKb9jZe39pU8AJ0YJ:Ljava/util/List;

    .line 102
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 169
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    iget-boolean p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->showOptionsMenu:Z

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onDestroy()V

    .line 119
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->stop()V

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->finish()V

    const/4 v0, 0x0

    .line 124
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 182
    invoke-super {p0, p1}, Lcom/google/appinventor/components/runtime/Form;->onNewIntent(Landroid/content/Intent;)V

    .line 183
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onNewIntent Called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->processExtras(Landroid/content/Intent;Z)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 108
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/Form;->onStop()V

    return-void
.end method

.method protected processExtras(Landroid/content/Intent;Z)V
    .locals 4

    .line 197
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 199
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "extras: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    sget-object v1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Extra Key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "rundirect"

    .line 205
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 206
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processExtras rundirect is true and restart is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->I1fbWPe6RJ2coGGe88dnbV3SwCWOYXWySlRHSiEJVMw7CeEp0YdmKizbxY7zqrk2:Z

    .line 208
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    if-eqz p2, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/ReplForm;->clear()V

    .line 211
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-eqz p2, :cond_1

    .line 212
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->resetSeq()V

    return-void

    .line 214
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->startHTTPD(Z)V

    const-string p1, "emulator"

    .line 215
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->setHmacKey(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendToCompanion(Ljava/lang/String;)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    if-nez v0, :cond_0

    .line 320
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No WebRTCNativeMgr!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;->send(Ljava/lang/String;)V

    return-void
.end method

.method public setAssetsLoaded()V
    .locals 1

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hlRRzlkTvaLJKT7xudtgqrNpSapzuwbeZZHKJdIwcwGUTFYejftgk4y9qZgGh2f0:Z

    return-void
.end method

.method public setFormName(Ljava/lang/String;)V
    .locals 2

    .line 136
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formName:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "formName is now "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setIsUSBrepl()V
    .locals 1

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->P89mqD3TKqF18ygPOurbjck3EPcqxgmZ649A3XXayOkNUpvgMJ4Q1cnkfpD040KQ:Z

    return-void
.end method

.method protected setResult(Ljava/lang/Object;)V
    .locals 3

    .line 146
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setResult: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->formName:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->roiS8tAeAqybL08NoxfqzQ1mPU3hAwiV5i3h5unWOaW17ApoVrdrKjoB0Q8IrS8T:Ljava/lang/String;

    return-void
.end method

.method public setWebRTCMgr(Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/WebRTCNativeMgr;

    return-void
.end method

.method public startHTTPD(Z)V
    .locals 4

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    if-nez v0, :cond_1

    .line 1244
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1246
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    const/16 v1, 0x1f41

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/ReplForm;->IcqbZ1XwOARXF8EHuumMwNxYO8BwpgyR4LeWhkJKdlM2Ka3G59guM7muYO6MGvD4:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, p1, p0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;-><init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;

    .line 235
    sget-object p1, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    const-string v0, "started AppInvHTTPD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 238
    sget-object v0, Lcom/google/appinventor/components/runtime/ReplForm;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting up NanoHTTPD: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected startNewForm(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    const-string v0, "open another screen with start value"

    .line 130
    invoke-static {p2, v0}, Lcom/google/appinventor/components/runtime/ReplForm;->jsonEncodeForForm(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/ReplForm;->startupValue:Ljava/lang/String;

    .line 132
    :cond_0
    invoke-static {p1, p2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->pushScreen(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
