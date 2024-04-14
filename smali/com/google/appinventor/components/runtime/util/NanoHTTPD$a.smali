.class final Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/net/Socket;)V
    .locals 1

    .line 343
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    .line 345
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NanoHTTPD: getPoolSize() = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppInvHTTPD"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 735
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 736
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 738
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/16 v2, 0x20

    .line 742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, v1, 0x3

    .line 745
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "400 Bad Request"

    const-string v0, "BAD REQUEST: Bad percent-encoding."

    .line 757
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BI)I
    .locals 3

    .line 719
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 721
    aget-byte v0, p0, p1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    aget-byte v0, p0, p1

    if-eq v0, v2, :cond_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BII)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-lez p2, :cond_0

    const-string v1, "java.io.tmpdir"

    .line 697
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string v2, "NanoHTTPD"

    .line 699
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 700
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 701
    invoke-virtual {v2, p0, p1, p2}, Ljava/io/OutputStream;->write([BII)V

    .line 702
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 703
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 705
    sget-object p1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->myErr:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Error: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 520
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 522
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "400 Bad Request"

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "BAD REQUEST: Syntax error. Usage: GET /example/file.html"

    .line 524
    invoke-direct {p0, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string v3, "method"

    .line 527
    invoke-virtual {p2, v3, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "BAD REQUEST: Missing URI. Usage: GET /example/file.html"

    .line 530
    invoke-direct {p0, v2, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_3

    add-int/lit8 v4, v2, 0x1

    .line 538
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V

    .line 539
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 541
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 547
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 549
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    .line 550
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x3a

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    .line 554
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string p1, "uri"

    .line 559
    invoke-virtual {p2, p1, p3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 563
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "500 Internal Server Error"

    invoke-direct {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V
    .locals 5

    if-eqz p1, :cond_7

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 807
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP/1.0 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " \r\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "\r\n"

    if-eqz p2, :cond_0

    .line 811
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    const-string p2, "Date"

    .line 813
    invoke-virtual {p3, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 814
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Date: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 818
    invoke-virtual {p3}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object p2

    .line 819
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 821
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 822
    invoke-virtual {p3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 827
    :cond_3
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    if-eqz p4, :cond_5

    .line 832
    invoke-virtual {p4}, Ljava/io/InputStream;->available()I

    move-result p1

    .line 833
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result p2

    new-array p2, p2, [B

    :goto_1
    if-lez p1, :cond_5

    .line 836
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result p3

    if-le p1, p3, :cond_4

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->access$400()I

    move-result p3

    goto :goto_2

    :cond_4
    move p3, p1

    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p4, p2, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_5

    .line 838
    invoke-virtual {v0, p2, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr p1, p3

    goto :goto_1

    .line 842
    :cond_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 843
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    if-eqz p4, :cond_6

    .line 845
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    :cond_6
    return-void

    .line 804
    :cond_7
    new-instance p1, Ljava/lang/Error;

    const-string p2, "sendResponse(): Status can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 850
    :catch_0
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 775
    :cond_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "&"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 778
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x3d

    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x0

    .line 781
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 782
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 781
    invoke-virtual {p2, v2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "500 Internal Server Error"

    .line 576
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 1657
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 1658
    :goto_0
    array-length v11, v2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_3

    .line 1660
    aget-byte v11, v2, v8

    aget-byte v13, v4, v9

    if-ne v11, v13, :cond_1

    if-nez v9, :cond_0

    move v10, v8

    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 1665
    array-length v11, v4

    if-ne v9, v11, :cond_2

    .line 1667
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    sub-int/2addr v8, v9

    :goto_1
    const/4 v9, 0x0

    const/4 v10, -0x1

    :cond_2
    add-int/2addr v8, v12

    goto :goto_0

    .line 1679
    :cond_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v8, v4, [I

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v4, :cond_4

    .line 1682
    invoke-virtual {v5, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 578
    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    :goto_3
    if-eqz v5, :cond_13

    .line 581
    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "400 Bad Request"

    if-ne v5, v7, :cond_5

    :try_start_1
    const-string v5, "BAD REQUEST: Content type is multipart/form-data but next chunk does not start with boundary. Usage: GET /example/file.html"

    .line 582
    invoke-direct {v1, v10, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    add-int/2addr v9, v12

    .line 584
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 585
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    :goto_4
    if-eqz v11, :cond_7

    .line 586
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    const/16 v13, 0x3a

    .line 588
    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_6

    .line 590
    invoke-virtual {v11, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v14, v11}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_7
    if-eqz v11, :cond_12

    const-string v13, "content-disposition"

    .line 595
    invoke-virtual {v5, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_8

    const-string v14, "BAD REQUEST: Content type is multipart/form-data but no content-disposition info found. Usage: GET /example/file.html"

    .line 598
    invoke-direct {v1, v10, v14}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_8
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v14, "; "

    invoke-direct {v10, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    .line 602
    :goto_5
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 604
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x3d

    .line 605
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    if-eq v15, v7, :cond_9

    .line 607
    invoke-virtual {v14, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/4 v6, 0x0

    goto :goto_5

    :cond_a
    const-string v6, "name"

    .line 609
    invoke-virtual {v13, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 610
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v12

    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, ""

    const-string v14, "content-type"

    .line 613
    invoke-virtual {v5, v14}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_e

    :cond_b
    :goto_6
    if-eqz v11, :cond_d

    .line 614
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_d

    .line 616
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 619
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_c

    .line 621
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    .line 623
    :cond_c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, -0x2

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_6

    :cond_d
    const/4 v14, 0x0

    move-object/from16 v13, p4

    move-object v5, v10

    move-object/from16 v10, p5

    goto :goto_7

    :cond_e
    const/4 v14, 0x0

    if-le v9, v4, :cond_f

    const-string v5, "Error processing request"

    .line 630
    invoke-direct {v1, v3, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v5, v9, -0x2

    .line 631
    aget v5, v8, v5

    invoke-static {v2, v5}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BI)I

    move-result v5

    add-int/lit8 v10, v9, -0x1

    .line 632
    aget v10, v8, v10

    sub-int/2addr v10, v5

    add-int/lit8 v10, v10, -0x4

    invoke-static {v2, v5, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, p5

    .line 633
    invoke-virtual {v10, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "filename"

    .line 634
    invoke-virtual {v13, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v12

    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 637
    :cond_10
    invoke-virtual/range {p3 .. p3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_11

    .line 638
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v7, :cond_10

    :cond_11
    move-object/from16 v13, p4

    .line 640
    :goto_7
    invoke-virtual {v13, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8

    :cond_12
    move-object/from16 v13, p4

    move-object/from16 v10, p5

    const/4 v14, 0x0

    :goto_8
    move-object v5, v11

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_13
    return-void

    :catch_0
    move-exception v0

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 792
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p2, "text/plain"

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 793
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v7, p0

    const-string v8, "500 Internal Server Error"

    .line 353
    :try_start_0
    iget-object v0, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x2000

    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 361
    invoke-virtual {v0, v2, v3, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_1

    return-void

    .line 365
    :cond_1
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v2, v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 366
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 367
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 368
    new-instance v13, Ljava/util/Properties;

    invoke-direct {v13}, Ljava/util/Properties;-><init>()V

    .line 369
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 370
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    .line 373
    invoke-direct {v7, v5, v4, v13, v12}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;)V

    const-string v5, "method"

    .line 374
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "uri"

    .line 375
    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v4, "content-length"

    .line 378
    invoke-virtual {v12, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_2

    .line 381
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-long v3, v4

    goto :goto_0

    :catch_0
    :cond_2
    const-wide v3, 0x7fffffffffffffffL

    :goto_0
    const/4 v15, 0x0

    :goto_1
    const/16 v16, 0x1

    if-ge v15, v1, :cond_4

    .line 391
    :try_start_2
    aget-byte v9, v2, v15

    const/16 v5, 0xd

    if-ne v9, v5, :cond_3

    add-int/lit8 v15, v15, 0x1

    aget-byte v6, v2, v15

    const/16 v9, 0xa

    if-ne v6, v9, :cond_3

    add-int/lit8 v15, v15, 0x1

    aget-byte v6, v2, v15

    if-ne v6, v5, :cond_3

    add-int/lit8 v15, v15, 0x1

    aget-byte v5, v2, v15

    if-ne v5, v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v15, v15, 0x1

    const-string v5, "PUT"

    .line 401
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "upload"

    const-string v6, "bin"

    .line 403
    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 404
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 405
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v18, v6

    const-string v6, "content"

    .line 406
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v6, v5}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v18

    goto :goto_3

    .line 410
    :cond_5
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_3
    if-ge v15, v1, :cond_6

    sub-int v5, v1, v15

    .line 412
    invoke-virtual {v6, v2, v15, v5}, Ljava/io/OutputStream;->write([BII)V

    :cond_6
    const-wide/16 v18, 0x0

    if-ge v15, v1, :cond_7

    sub-int v2, v1, v15

    add-int/lit8 v2, v2, 0x1

    move v5, v1

    int-to-long v1, v2

    sub-long/2addr v3, v1

    goto :goto_4

    :cond_7
    move v5, v1

    if-eqz v9, :cond_8

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v9, v3, v1

    if-nez v9, :cond_9

    :cond_8
    move-wide/from16 v3, v18

    :cond_9
    :goto_4
    const/16 v1, 0x200

    new-array v2, v1, [B

    :goto_5
    if-ltz v5, :cond_b

    cmp-long v5, v3, v18

    if-lez v5, :cond_b

    const/4 v5, 0x0

    .line 429
    invoke-virtual {v0, v2, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    move-object/from16 v17, v2

    int-to-long v1, v15

    sub-long/2addr v3, v1

    if-lez v15, :cond_a

    move-object/from16 v1, v17

    .line 432
    invoke-virtual {v6, v1, v5, v15}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_6

    :cond_a
    move-object/from16 v1, v17

    :goto_6
    move-object v2, v1

    move v5, v15

    const/16 v1, 0x200

    goto :goto_5

    :cond_b
    const-string v1, "POST"

    .line 437
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 440
    check-cast v6, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 443
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 444
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v15, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v1, "content-type"

    .line 447
    invoke-virtual {v12, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 448
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "; "

    invoke-direct {v2, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, ""

    if-eqz v1, :cond_c

    .line 450
    :try_start_3
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_c
    move-object v1, v4

    :goto_7
    const-string v5, "multipart/form-data"

    .line 453
    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 456
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "400 Bad Request"

    if-nez v1, :cond_d

    :try_start_4
    const-string v1, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html"

    .line 457
    invoke-direct {v7, v4, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 459
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v5, "="

    invoke-direct {v2, v1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_e

    const-string v1, "BAD REQUEST: Content type is multipart/form-data but boundary syntax error. Usage: GET /example/file.html"

    .line 461
    invoke-direct {v7, v4, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 463
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v4, v15

    move-object v5, v13

    move-object v6, v14

    .line 465
    invoke-direct/range {v1 .. v6}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;[BLjava/io/BufferedReader;Ljava/util/Properties;Ljava/util/Properties;)V

    goto :goto_9

    :cond_f
    const/16 v1, 0x200

    new-array v1, v1, [C

    .line 472
    invoke-virtual {v15, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v2

    :goto_8
    if-ltz v2, :cond_10

    const-string v3, "\r\n"

    .line 473
    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {v15, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v3

    move-object v4, v2

    move v2, v3

    goto :goto_8

    .line 478
    :cond_10
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 479
    invoke-direct {v7, v1, v13}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Properties;)V

    .line 481
    :goto_9
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V

    goto :goto_a

    :cond_11
    const-string v1, "PUT "

    .line 483
    invoke-virtual {v11, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 485
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 489
    :cond_12
    :goto_a
    iget-object v9, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/NanoHTTPD;

    iget-object v15, v7, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/net/Socket;

    invoke-virtual/range {v9 .. v15}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;->serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "SERVER INTERNAL ERROR: Serve() returned a null response."

    .line 491
    invoke-direct {v7, v8, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 493
    :cond_13
    iget-object v2, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->status:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->mimeType:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->header:Ljava/util/Properties;

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->data:Ljava/io/InputStream;

    invoke-direct {v7, v2, v3, v4, v1}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/io/InputStream;)V

    .line 495
    :goto_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-void

    :catch_2
    move-exception v0

    .line 501
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SERVER INTERNAL ERROR: IOException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v8, v0}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$a;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    return-void
.end method
