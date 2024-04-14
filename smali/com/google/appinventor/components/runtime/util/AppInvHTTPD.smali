.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "SourceFile"


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

.field private static nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 47
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    const-string p1, "scheme"

    .line 53
    invoke-static {p1}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    .line 54
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 55
    iput-boolean p3, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 56
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 2

    const-string v0, "Access-Control-Allow-Origin"

    const-string v1, "*"

    .line 491
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Headers"

    const-string v1, "origin, content-type"

    .line 492
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Access-Control-Allow-Methods"

    const-string v1, "POST,OPTIONS,GET,HEAD,PUT"

    .line 493
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Allow"

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const-string v2, "BAD"

    .line 478
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "message"

    .line 479
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "AppInvHTTPD"

    const-string v2, "Unable to write basic JSON content"

    .line 481
    invoke-static {v1, v2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 483
    :goto_0
    new-instance p1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200 OK"

    const-string v2, "application/json"

    invoke-direct {p1, p0, v1, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 0

    .line 487
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 3

    .line 431
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    const-string v1, "extensions"

    const-string v2, "[]"

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 432
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 433
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 434
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 436
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Invalid JSON content at index "

    .line 438
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p1

    .line 442
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string p1, "OK"

    .line 2468
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v1, "200 OK"

    const-string v2, "text/plain"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 444
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 448
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object p1

    return-object p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 413
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 414
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const p1, 0x8000

    new-array p1, p1, [B

    .line 418
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 423
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 425
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 0

    .line 503
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    sput-object p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    const/4 p0, 0x1

    .line 504
    sput p0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 1

    const/4 v0, 0x1

    .line 512
    sput v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AppInvHTTPD"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-boolean v6, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    const-string v8, "Allow"

    const-string v9, "Access-Control-Allow-Methods"

    const-string v10, "origin, content-type"

    const-string v11, "Access-Control-Allow-Headers"

    const-string v12, "*"

    const-string v13, "Access-Control-Allow-Origin"

    const-string v14, "application/json"

    const-string v15, "200 OK"

    const-string v5, "POST,OPTIONS,GET,HEAD,PUT"

    if-eqz v6, :cond_0

    .line 77
    invoke-virtual/range {p6 .. p6}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    const-string v4, "127.0.0.1"

    .line 79
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Debug: hostAddress = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " while in secure mode, closing connection."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v11, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v9, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, v8, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v4, "OPTIONS"

    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "\' = \'"

    const-string v2, "\'"

    move-object/from16 v16, v14

    const-string v14, "OK"

    move-object/from16 v17, v8

    const-string v8, "text/plain"

    if-eqz v4, :cond_2

    .line 97
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 98
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 p1, v0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v18, v5

    const-string v5, "  HDR: \'"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v5, v18

    goto :goto_0

    :cond_1
    move-object/from16 v18, v5

    .line 104
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v15, v8, v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v11, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v18

    .line 107
    invoke-virtual {v0, v9, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    .line 108
    invoke-virtual {v0, v5, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    move-object/from16 p6, v2

    move-object v4, v5

    move-object/from16 v5, v17

    const-string v2, "/_newblocks"

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "mac"

    move-object/from16 v17, v6

    if-eqz v2, :cond_a

    .line 1460
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1461
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 1462
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    if-eq v14, v0, :cond_3

    .line 1463
    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_3
    const-string v0, "seq"

    const-string v2, "0"

    move-object/from16 v14, p4

    .line 115
    invoke-virtual {v14, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "blockid"

    .line 117
    invoke-virtual {v14, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v20, v8

    const-string v8, "code"

    .line 118
    invoke-virtual {v14, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v21, v5

    const-string v5, "no key provided"

    .line 119
    invoke-virtual {v14, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    sget-object v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    if-eqz v5, :cond_9

    :try_start_0
    const-string v5, "HmacSHA1"

    .line 124
    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 125
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v4

    sget-object v4, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    move-object/from16 v23, v9

    const-string v9, "RAW"

    invoke-direct {v14, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 126
    invoke-virtual {v5, v14}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    .line 128
    new-instance v5, Ljava/lang/StringBuffer;

    array-length v9, v4

    const/4 v14, 0x1

    shl-int/2addr v9, v14

    invoke-direct {v5, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 129
    new-instance v9, Ljava/util/Formatter;

    invoke-direct {v9, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    .line 130
    array-length v14, v4

    move-object/from16 v24, v10

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v14, :cond_4

    aget-byte v17, v4, v10

    move-object/from16 p1, v4

    const-string v4, "%02x"

    move-object/from16 v25, v11

    move/from16 p2, v14

    const/4 v14, 0x1

    new-array v11, v14, [Ljava/lang/Object;

    .line 131
    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    const/16 v17, 0x0

    aput-object v14, v11, v17

    invoke-virtual {v9, v4, v11}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p1

    move/from16 v14, p2

    move-object/from16 v11, v25

    goto :goto_1

    :cond_4
    move-object/from16 v25, v11

    .line 132
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "Incoming Mac = "

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "Computed Mac = "

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Incoming seq = "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Computed seq = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "blockid = "

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Hmac does not match"

    .line 146
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Invalid HMAC"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v7, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 149
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v15, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    move-object/from16 v4, v16

    .line 152
    sget v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    if-eq v0, v2, :cond_6

    add-int/lit8 v3, v2, 0x1

    if-eq v0, v3, :cond_6

    const-string v0, "Seq does not match"

    .line 153
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Invalid Seq"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v7, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    invoke-direct {v0, v1, v15, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ne v0, v2, :cond_7

    const-string v0, "Seq Fixup Invoked"

    .line 162
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_7
    sput v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (begin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " )))"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "To Eval: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    const-string v2, "#f"

    .line 180
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v0, "Skipping evaluation of #f"

    .line 181
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 183
    :cond_8
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    invoke-virtual {v2, v0}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 185
    :goto_2
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v15, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v2, "newblocks: Scheme Failure"

    .line 187
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BAD"

    invoke-static {v6, v2, v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v15, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_3
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v24

    move-object/from16 v5, v25

    .line 192
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v22

    move-object/from16 v6, v23

    .line 193
    invoke-virtual {v0, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v21

    .line 194
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Error working with hmac"

    .line 134
    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Exception working on HMAC"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const/16 v3, 0x709

    invoke-virtual {v0, v0, v7, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 137
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "NOT"

    move-object/from16 v10, v20

    invoke-direct {v0, v1, v15, v10, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_9
    move-object/from16 v4, v16

    const/4 v2, 0x1

    const/16 v3, 0x709

    const/4 v5, 0x0

    const-string v0, "No HMAC Key"

    .line 165
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "No HMAC Key"

    aput-object v6, v2, v5

    invoke-virtual {v0, v0, v7, v3, v2}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 168
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    invoke-direct {v0, v1, v15, v4, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    move-object v6, v9

    move-object v2, v10

    move-object v9, v5

    move-object v10, v8

    move-object v5, v11

    move-object/from16 v11, p4

    move-object v8, v4

    move-object/from16 v4, v16

    move-object/from16 v16, v3

    const-string v3, "/_values"

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 197
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v15, v4, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    const-string v3, "/_getversion"

    .line 203
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 206
    :try_start_2
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v3, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 208
    iget-object v7, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v10, "io.makeroid.companion"

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 211
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v7, :cond_c

    const-string v7, "Not Known"

    .line 217
    :cond_c
    new-instance v10, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "{\"version\" : \""

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"fingerprint\" : \""

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"installer\" : \""

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\", \"package\" : \""

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \"fqcn\" : true }"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v1, v15, v4, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 222
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 223
    new-instance v10, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v0, "{\"verison\" : \"Unknown\""

    invoke-direct {v10, v1, v15, v4, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_4
    invoke-virtual {v10, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v10, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v10, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v10, v9, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-boolean v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 230
    sput v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 231
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    invoke-direct {v2, v1}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-object v10

    :cond_e
    const-string v3, "/_update"

    .line 238
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v3, "/_install"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_9

    :cond_f
    const-string v3, "/_package"

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "/"

    const/4 v0, 0x0

    if-eqz v3, :cond_11

    const-string v3, "package"

    .line 294
    invoke-virtual {v11, v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 296
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v2, "NOT OK"

    invoke-direct {v0, v1, v15, v10, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 299
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    new-instance v7, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v9

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "application/vnd.android.package-archive"

    .line 302
    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v0, v3}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 304
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v15, v10, v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, v6, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v21

    .line 308
    invoke-virtual {v0, v3, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_11
    move-object v3, v9

    const-string v9, "/_extensions"

    move-object/from16 v0, p1

    .line 310
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 311
    invoke-direct {v1, v11}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_12
    const-string v9, "PUT"

    move-object/from16 v0, p6

    move-object/from16 v22, v8

    move-object/from16 v8, p2

    .line 314
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, ".."

    if-eqz v8, :cond_1a

    .line 315
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v8, "content"

    move-object/from16 p1, v0

    move-object/from16 v21, v3

    move-object/from16 p6, v14

    move-object/from16 v3, v22

    const/4 v14, 0x0

    move-object/from16 v0, p5

    .line 316
    invoke-virtual {v0, v8, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 318
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    .line 319
    invoke-virtual {v11, v0, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 321
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_13

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "../"

    .line 322
    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_14

    .line 323
    :cond_13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v9, " Ignoring invalid filename: "

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v14

    :cond_14
    if-eqz v0, :cond_17

    .line 329
    new-instance v7, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_15

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_15
    invoke-virtual {v8, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 335
    invoke-static {v8, v7}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 336
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_16
    move-object/from16 v0, p1

    goto :goto_5

    .line 339
    :cond_17
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    const-string v0, "Received content without a file name!"

    .line 340
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_18
    const-string v0, "Received PUT without content."

    .line 344
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 347
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 348
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v4, "NOTOK"

    invoke-direct {v0, v1, v15, v10, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, v6, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v21

    .line 352
    invoke-virtual {v0, v8, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_19
    move-object/from16 v8, v21

    .line 355
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v15, v10, v4}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0, v5, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, v6, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, v8, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1a
    move-object/from16 v21, v3

    move-object v8, v14

    move-object/from16 v3, v22

    move-object v14, v0

    move-object/from16 v0, p5

    .line 364
    invoke-virtual/range {p3 .. p3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v18

    .line 365
    :goto_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 367
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v22, v3

    move-object/from16 v3, v19

    check-cast v3, Ljava/lang/String;

    move-object/from16 v23, v6

    .line 368
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v24, v2

    const-string v2, "  HDR: \'"

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v25, v5

    move-object/from16 v5, p3

    .line 369
    invoke-virtual {v5, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v22

    move-object/from16 v6, v23

    move-object/from16 v2, v24

    move-object/from16 v5, v25

    goto :goto_6

    :cond_1b
    move-object/from16 v24, v2

    move-object/from16 v22, v3

    move-object/from16 v25, v5

    move-object/from16 v23, v6

    move-object/from16 v2, v17

    move-object/from16 v5, p3

    .line 371
    invoke-virtual/range {p4 .. p4}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 372
    :goto_7
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 374
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 p2, v3

    .line 375
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "  PRM: \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v11, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    goto :goto_7

    .line 378
    :cond_1c
    invoke-virtual/range {p5 .. p5}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v2

    .line 379
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 381
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-virtual {v11, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-virtual {v2, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1d

    const-string v3, "../"

    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1e

    .line 386
    :cond_1d
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " Ignoring invalid filename: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 389
    :cond_1e
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v2, :cond_1f

    .line 391
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_8

    .line 393
    :cond_1f
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 395
    invoke-static {v3, v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 396
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 399
    :cond_20
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " UPLOADED: \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' was at \'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    invoke-direct {v0, v1, v15, v10, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .line 402
    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v22

    move-object/from16 v5, v23

    .line 403
    invoke-virtual {v0, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v21

    .line 404
    invoke-virtual {v0, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 408
    :cond_21
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v0

    return-object v0

    :cond_22
    :goto_9
    move-object v3, v5

    move-object v5, v6

    move-object v6, v8

    move-object v8, v9

    move-object/from16 v0, v16

    const-string v9, "url"

    const-string v10, ""

    .line 239
    invoke-virtual {v11, v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-virtual {v11, v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_25

    sget-object v11, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    if-eqz v11, :cond_25

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    .line 244
    :try_start_3
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v11, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    const-string v14, "RAW"

    invoke-direct {v10, v11, v14}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v11, "HmacSHA1"

    .line 245
    invoke-static {v11}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v11

    .line 246
    invoke-virtual {v11, v10}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 247
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v11, v10}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v10

    .line 248
    new-instance v11, Ljava/lang/StringBuffer;

    array-length v14, v10

    const/16 v16, 0x1

    shl-int/lit8 v14, v14, 0x1

    invoke-direct {v11, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 249
    new-instance v14, Ljava/util/Formatter;

    invoke-direct {v14, v11}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object/from16 p1, v9

    .line 250
    array-length v9, v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v17, v8

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v9, :cond_23

    :try_start_4
    aget-byte v16, v10, v8

    move/from16 v20, v9

    const-string v9, "%02x"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v23, v5

    move-object/from16 p2, v10

    const/4 v10, 0x1

    :try_start_5
    new-array v5, v10, [Ljava/lang/Object;

    .line 251
    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/16 v16, 0x0

    aput-object v10, v5, v16

    invoke-virtual {v14, v9, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, p2

    move/from16 v9, v20

    move-object/from16 v5, v23

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v8, v17

    goto/16 :goto_b

    :cond_23
    move-object/from16 v23, v5

    .line 252
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 264
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Incoming Mac (update) = "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Computed Mac (update) = "

    invoke-virtual {v9, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "Hmac does not match"

    .line 267
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, "Invalid HMAC (update)"

    const/4 v9, 0x0

    aput-object v8, v5, v9

    const/16 v8, 0x709

    invoke-virtual {v0, v0, v7, v8, v5}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v5, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct {v0, v1, v15, v4, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v23

    .line 273
    invoke-virtual {v0, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v17

    .line 274
    invoke-virtual {v0, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_24
    move-object/from16 v8, v17

    move-object/from16 v5, v23

    .line 1508
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object/from16 v7, p1

    invoke-static {v0, v7}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 278
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v7, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    invoke-direct {v0, v1, v15, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_3
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v5, v23

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_b
    const-string v9, "Error verifying update"

    .line 254
    invoke-static {v7, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iget-object v0, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "Exception working on HMAC for update"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/16 v10, 0x709

    invoke-virtual {v0, v0, v7, v10, v9}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 257
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v7, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    invoke-direct {v0, v1, v15, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 285
    :cond_25
    new-instance v0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    const-string v7, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    invoke-direct {v0, v1, v15, v4, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0, v3, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v5, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, v8, v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
