.class public Lcom/google/appinventor/components/runtime/Ocr;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->MEDIA:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = "images/ocr.png"
    nonVisible = true
    version = 0x5
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Ocr$a;,
        Lcom/google/appinventor/components/runtime/Ocr$c;,
        Lcom/google/appinventor/components/runtime/Ocr$b;
    }
.end annotation


# instance fields
.field private PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

.field private havePermission:Z

.field private qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

.field private repl:Z

.field private rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

.field private tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

.field private vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

.field private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

.field private xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 68
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "helloworld"

    .line 56
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    .line 57
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    .line 58
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    .line 59
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    const-string v0, "eng"

    .line 60
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    const-string v0, "http://2.bp.blogspot.com/-3C9EzBNi9rA/UiS93S6uqoI/AAAAAAAAEjM/fATWa50u0BY/w1200-h630-p-k-nu/Hello+world+android+app.jpg"

    .line 61
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    .line 63
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    .line 64
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    .line 65
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    .line 69
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    const-string p1, "Ocr"

    const-string v0, "Ocr Created"

    .line 70
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of p1, p1, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    :cond_0
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-object p0
.end method

.method private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 378
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, " </span>"

    .line 379
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 382
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Ocr"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/Ocr;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V
    .locals 7

    const-string v0, "Free OCR API <span class=\"status {{ data.status }}\"> "

    .line 3367
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "PRO API (Endpoint #1, USA, East Coast)  <span class=\"status {{ data.status }}\"> "

    .line 3368
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "PRO API (Endpoint #1, USA, West Coast)  <span class=\"status {{ data.status }}\"> "

    .line 3369
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "PRO API (Endpoint #2, Europe)  <span class=\"status {{ data.status }}\"> "

    .line 3370
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "PRO API (Endpoint #3, Asia)   <span class=\"status {{ data.status }}\"> "

    .line 3371
    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/Ocr;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 3373
    invoke-virtual/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/Ocr;->GotServerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 431
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 432
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    const-string v2, "GET"

    .line 434
    invoke-virtual {p1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    .line 437
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 439
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 442
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const/4 p1, 0x1

    .line 443
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    .line 444
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 446
    :cond_1
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    const-string p1, "There is no internet connection. Please try again."
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 450
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ocr"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/Boolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Ocr;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 7

    const-string v0, "UTF-8"

    .line 481
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    .line 484
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 485
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 486
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 487
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v6, "&"

    .line 492
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :goto_1
    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    .line 495
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 499
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V
    .locals 2

    .line 2418
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2419
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    const-string v1, "SearchablePDFURL"

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    return-void

    .line 2421
    :cond_0
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    if-eqz v0, :cond_1

    .line 2422
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    const-string v1, "ParsedText"

    invoke-static {p1, v1}, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    return-void

    .line 2424
    :cond_1
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;)Z
    .locals 1

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Ocr;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->rwH5QsW1tECSJqEYisIw7mgmF1LBaoVJw606thITSS1io7bESEMnIJXTcF47IT5D:Z

    return p1
.end method

.method private static wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    .line 390
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x3c9660fe

    const/4 v3, 0x0

    const-string v4, "SearchablePDFURL"

    const-string v5, "ParsedText"

    const/4 v6, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x68176cdf

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    if-eq v0, v6, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    .line 399
    :cond_3
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 392
    :cond_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ParsedResults"

    .line 393
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 394
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 395
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    return-object p0

    :catch_0
    move-exception p0

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ApiKey()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the api key."
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-object v0
.end method

.method public ApiKey(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "helloworld"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can use the default api key: helloworld, or you can create your own api key at: https://ocr.space/ocrapi"
    .end annotation

    .line 293
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    return-void
.end method

.method public CreateSearchablePdf(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "A searchable PDF file is a PDF file that includes text that can be searched upon using the standard Adobe Reader \u201csearch\u201d functionality. In addition, the text can be selected and copied from the PDF. In this case the JSON response of the API contains a download link for the the searchable PDF. This download link is valid for one hour, than all data is removed from the OCR servers."
    .end annotation

    .line 316
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    return-void
.end method

.method public CreateSearchablePdf()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of create searchable Pdf property."
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public GetOcrServerStatus()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the server status from the free ocr.space server. This is helpful if you want to know if the server is online or offline. Returns true when online, else false when offline."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 345
    new-instance v0, Lcom/google/appinventor/components/runtime/Ocr$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Ocr$a;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const-string v1, "https://status.ocr.space"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Ocr$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public GetTextFromImageUrl(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the text from a picture via the image url. Example: http://name/yourimage.jpg. Service powered by ocr.space."
    .end annotation

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    :cond_1
    const-string v0, ".png"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v0, ".PNG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".jpg"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".JPG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".gif"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".GIF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".pdf"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ".PDF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 94
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://api.ocr.space/parse/imageurl?apikey="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ocr;->qPA23Y7cwrM2jVYdTZaCOyuoTEsak9zRoCsFocZMlDYlamZRzkT9xY09N4QNxUyM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&url="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&isOverlayRequired="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&isCreateSearchablePdf="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "&language="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v0, Lcom/google/appinventor/components/runtime/Ocr$b;

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Ocr$b;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Ocr$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_3
    :goto_0
    const-string p1, "The file must end with a valid extension like \'png\'/\'PNG\', \'jpg\'/\'JPG\', \'gif\'/\'GIF\', or \'pdf\'/\'PDF\'."

    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/google/appinventor/components/runtime/Ocr;->GotResponse(ZLjava/lang/String;)V

    return-void
.end method

.method public GotResponse(ZLjava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the success state and the response content."
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "GotResponse"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public GotServerStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "You will find here the server status from the ocr provider. Possible results are \'UP\' or \'DOWN\'. \'pro Usa1\' = Usa, East Coast. \'pro Usa2\' = Usa, West Coast. "
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    const/4 p1, 0x3

    aput-object p4, v0, p1

    const/4 p1, 0x4

    aput-object p5, v0, p1

    const-string p1, "GotServerStatus"

    .line 229
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Language()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the language code."
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-object v0
.end method

.method public Language(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "ocr_language"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Choose the language used for OCR. If no language is specified, English is taken as \'Default\'."
    .end annotation

    const-string v0, "eng"

    packed-switch p1, :pswitch_data_0

    .line 278
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_0
    const-string p1, "tur"

    .line 277
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_1
    const-string p1, "swe"

    .line 276
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_2
    const-string p1, "spa"

    .line 275
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_3
    const-string p1, "slv"

    .line 274
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_4
    const-string p1, "rus"

    .line 273
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_5
    const-string p1, "por"

    .line 272
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_6
    const-string p1, "pol"

    .line 271
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_7
    const-string p1, "nor"

    .line 270
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_8
    const-string p1, "jpn"

    .line 269
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_9
    const-string p1, "ita"

    .line 268
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_a
    const-string p1, "kor"

    .line 267
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_b
    const-string p1, "hun"

    .line 266
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_c
    const-string p1, "gre"

    .line 265
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_d
    const-string p1, "ger"

    .line 264
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_e
    const-string p1, "fre"

    .line 263
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_f
    const-string p1, "fin"

    .line 262
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    .line 261
    :pswitch_10
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_11
    const-string p1, "dut"

    .line 260
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_12
    const-string p1, "dan"

    .line 259
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_13
    const-string p1, "cze"

    .line 258
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_14
    const-string p1, "hrv"

    .line 257
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_15
    const-string p1, "cht"

    .line 256
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_16
    const-string p1, "chs"

    .line 255
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_17
    const-string p1, "bul"

    .line 254
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_18
    const-string p1, "ara"

    .line 253
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    .line 252
    :pswitch_19
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->tFNQ38WX0EWx1sBmwkfGOavwj0ohdRyv5RfL5KQ0qa5Pnr6qc7YsZTQu1aP3NtmA:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Overlayed(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Allows you to specify if the image/pdf text overlay is required. Overlay could be used to show the text over the image."
    .end annotation

    .line 238
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    return-void
.end method

.method public Overlayed()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the state of overlayed property."
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ReturnOnlyMessage(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set this block before you upload a image and before you try to get the response from a image url. If this property is set to true, the response content returns only the message. That means the response content will be only the scanned text in words."
    .end annotation

    .line 338
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->xhzCIls1ZjY8rVr9uwfX6Ll4V1k7OjFmFraAgvYK73j7xL9tODrZc0oupoL3seO9:Z

    return-void
.end method

.method public ReturnOnlyPdfLink(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set this block before you upload a image and before you try to get the response from a image url. If this property is set to true, the response content returns only the created pdf download link."
    .end annotation

    .line 329
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ocr;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/lang/Boolean;

    return-void
.end method

.method public TestImageUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "You can use the test image url if you have not any picture online on a server or else."
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->PMWpqVMsyfTUgqkfqh3FKX4Q3IYlcybzKrBGEl7qtzs6HNVssJ63V430Ige89pyP:Ljava/lang/String;

    return-object v0
.end method

.method public UploadImage(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Upload your image to the server from ocr.space and then you get back the text from the picture."
    .end annotation

    .line 115
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->havePermission:Z

    if-nez v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ocr;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Ocr$1;

    invoke-direct {v1, p0, p1}, Lcom/google/appinventor/components/runtime/Ocr$1;-><init>(Lcom/google/appinventor/components/runtime/Ocr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 136
    :cond_0
    new-instance v0, Lcom/google/appinventor/components/runtime/Ocr$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/Ocr$c;-><init>(Lcom/google/appinventor/components/runtime/Ocr;B)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 1457
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStorageDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v4, "file:///"

    .line 1459
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x7

    .line 1461
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1462
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "/"

    if-nez v4, :cond_3

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1463
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Ocr;->repl:Z

    if-eqz v3, :cond_2

    .line 1464
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/QUtil;->getReplAssetPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1466
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/Ocr;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "///"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1469
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1470
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1474
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    aput-object p1, v2, v1

    .line 136
    invoke-virtual {v0, v2}, Lcom/google/appinventor/components/runtime/Ocr$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
