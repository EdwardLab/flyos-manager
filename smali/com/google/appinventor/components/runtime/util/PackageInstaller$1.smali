.class final Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-string v0, "PackageInstaller"

    const-string v1, "PackageInstaller (Kodular)"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 39
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    .line 41
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v7}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "/package.apk"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v8, 0x8000

    :try_start_2
    new-array v9, v8, [B

    .line 46
    :goto_0
    invoke-virtual {v6, v9, v4, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-lez v10, :cond_0

    .line 47
    invoke-virtual {v7, v9, v4, v10}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 50
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "About to Install package from "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v9, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-static {v9, v5}, Lcom/google/appinventor/components/runtime/util/NougatUtil;->getPackageUri(Lcom/google/appinventor/components/runtime/Form;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "application/vnd.android.package-archive"

    .line 55
    invoke-virtual {v8, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {v8, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v5, v8}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    :goto_1
    invoke-static {v1, v6}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    invoke-static {v1, v7}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    return-void

    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v5

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v7, v3

    goto :goto_5

    :catch_2
    move-exception v5

    move-object v7, v3

    goto :goto_2

    :catch_3
    move-exception v5

    move-object v7, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v7, v3

    goto :goto_6

    :catch_4
    move-exception v5

    move-object v6, v3

    move-object v7, v6

    :goto_2
    move-object v3, v5

    :goto_3
    :try_start_3
    const-string v5, "ERROR_UNABLE_TO_GET"

    .line 63
    invoke-static {v1, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    const/16 v5, 0x44d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->nEkPfLDGYD22bahiHhpKxaqa4vdjROQiBAWGj9Zqw3V6ag4osXolkZLRAXiafTD:Ljava/lang/String;

    aput-object v8, v2, v4

    invoke-virtual {v3, v3, v0, v5, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    :catch_5
    move-exception v5

    move-object v6, v3

    move-object v7, v6

    :goto_4
    const-string v8, "Unable to install package"

    .line 59
    invoke-static {v1, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/PackageInstaller$1;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    const/16 v8, 0xe11

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-virtual {v5, v5, v0, v8, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :goto_5
    move-object v3, v6

    .line 67
    :goto_6
    invoke-static {v1, v3}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 68
    invoke-static {v1, v7}, Lcom/google/appinventor/components/runtime/util/IOUtils;->closeQuietly(Ljava/lang/String;Ljava/io/Closeable;)V

    .line 69
    throw v0
.end method
