.class public Lcom/google/appinventor/components/runtime/util/AssetFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AssetFetcher"

.field private static background:Ljava/util/concurrent/ExecutorService;

.field private static volatile inError:Z

.field private static final semaphore:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    .line 54
    sput-boolean v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 0

    .line 47
    invoke-static {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;

    invoke-direct {v1, p2, p1, p3, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;
    .locals 8

    .line 132
    :goto_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le p3, v2, :cond_1

    .line 134
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->semaphore:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    :try_start_0
    sget-boolean p1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    if-eqz p1, :cond_0

    .line 136
    monitor-exit v3

    return-object v1

    .line 138
    :cond_0
    sput-boolean v2, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->inError:Z

    .line 139
    new-instance p1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;

    invoke-direct {p1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception p0

    .line 148
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 v3, 0x0

    .line 153
    :try_start_1
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_5

    const-string v1, "GET"

    .line 156
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Cookie"

    const-string v5, "Kodular = "

    .line 157
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 159
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "asset = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " responseCode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-static {v0, v2}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 163
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unable to create assets directory "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-direct {v0, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 166
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 173
    invoke-virtual {v5, v6}, Ljava/io/BufferedOutputStream;->write(I)V

    goto :goto_2

    .line 175
    :cond_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 180
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v2, 0x0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 177
    :try_start_4
    sget-object v3, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v6, "copying assets"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 180
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 182
    :goto_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_5

    .line 180
    :goto_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 181
    throw v0

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    add-int/lit8 v0, p3, 0x1

    .line 187
    invoke-static {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-object p0

    :cond_6
    return-object v1

    :catch_1
    move-exception v0

    .line 191
    sget-object v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Exception while fetching "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method

.method public static loadExtensions(Ljava/lang/String;)V
    .locals 7

    .line 100
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadExtensions called jsonString = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    check-cast v1, Lcom/google/appinventor/components/runtime/ReplForm;

    .line 103
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string p0, "loadExtensions: No Extensions"

    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 111
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 113
    sget-object v4, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v5, "loadExtensions, extensionName = "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    sget-object p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v0, "extensionName was null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 121
    :cond_2
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V

    .line 122
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/RetValManager;->extensionsLoaded()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 124
    :try_start_2
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Error in form.loadComponents"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 127
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->LOG_TAG:Ljava/lang/String;

    const-string v1, "JSON Exception parsing extension string"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 75
    sget-object v0, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->background:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;

    invoke-direct {v1, p1, p0}, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
