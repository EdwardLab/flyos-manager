.class public Lorg/jose4j/http/Get;
.super Ljava/lang/Object;
.source "Get.java"

# interfaces
.implements Lorg/jose4j/http/SimpleGet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/http/Get$ResponseBodyTooLargeException;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_WAIT:J = 0x1f40L

.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private connectTimeout:I

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private initialRetryWaitTime:J

.field private progressiveRetryWait:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private responseBodySizeLimit:I

.field private retries:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/jose4j/http/Get;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x4e20

    .line 53
    iput v0, p0, Lorg/jose4j/http/Get;->connectTimeout:I

    .line 54
    iput v0, p0, Lorg/jose4j/http/Get;->readTimeout:I

    const/4 v0, 0x3

    .line 55
    iput v0, p0, Lorg/jose4j/http/Get;->retries:I

    const-wide/16 v0, 0xb4

    .line 56
    iput-wide v0, p0, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    const/high16 v0, 0x80000

    .line 60
    iput v0, p0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    return-void
.end method

.method private getBody(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 118
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 p2, 0x400

    :try_start_1
    new-array p2, p2, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    const/4 v4, -0x1

    .line 124
    invoke-virtual {v1, p2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 126
    invoke-virtual {v0, p2, v2, v5}, Ljava/io/StringWriter;->write([CII)V

    add-int/2addr v3, v5

    .line 128
    iget v4, p0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    if-lez v4, :cond_0

    if-gt v3, v4, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p2, Lorg/jose4j/http/Get$ResponseBodyTooLargeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "More than "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters have been read from the response body."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lorg/jose4j/http/Get$ResponseBodyTooLargeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_2
    sget-object p2, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string v2, "read {} characters"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p2

    .line 118
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 134
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    .line 118
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_4

    .line 134
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v0
.end method

.method private getCharset(Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 6

    const-string v0, "Content-Type"

    .line 157
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    if-eqz p1, :cond_2

    :try_start_0
    const-string v1, " "

    const-string v2, ""

    .line 163
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "charset="

    .line 165
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v1, 0x8

    .line 166
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 170
    :goto_1
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 175
    sget-object v2, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string v3, "Unexpected problem attempted to determine the charset from the Content-Type ({}) so will default to using UTF8: {}"

    invoke-interface {v2, v3, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-object v0
.end method

.method private getRetryWaitTime(I)J
    .locals 4

    .line 183
    iget-boolean v0, p0, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-int/lit8 p1, p1, -0x1

    int-to-double v2, p1

    .line 185
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 186
    iget-wide v2, p0, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    long-to-double v2, v2

    mul-double v0, v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x1f40

    .line 187
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 191
    :cond_0
    iget-wide v0, p0, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    return-wide v0
.end method

.method private setUpTls(Ljava/net/URLConnection;)V
    .locals 1

    .line 140
    instance-of v0, p1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v0, :cond_1

    .line 142
    check-cast p1, Ljavax/net/ssl/HttpsURLConnection;

    .line 143
    iget-object v0, p0, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/jose4j/http/Get;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p1, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lorg/jose4j/http/SimpleResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    sget-object v0, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string v1, "HTTP GET of {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 73
    :catch_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/jose4j/http/Get;->proxy:Ljava/net/Proxy;

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    .line 74
    :goto_1
    iget v3, p0, Lorg/jose4j/http/Get;->connectTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 75
    iget v3, p0, Lorg/jose4j/http/Get;->readTimeout:I

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 77
    invoke-direct {p0, v2}, Lorg/jose4j/http/Get;->setUpTls(Ljava/net/URLConnection;)V

    .line 79
    move-object v3, v2

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 80
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 81
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_1

    .line 88
    invoke-direct {p0, v2}, Lorg/jose4j/http/Get;->getCharset(Ljava/net/URLConnection;)Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-direct {p0, v2, v6}, Lorg/jose4j/http/Get;->getBody(Ljava/net/URLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    .line 93
    new-instance v6, Lorg/jose4j/http/Response;

    invoke-direct {v6, v4, v5, v3, v2}, Lorg/jose4j/http/Response;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 94
    sget-object v2, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const-string v3, "HTTP GET of {} returned {}"

    invoke-interface {v2, v3, v0, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 85
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non 200 status code ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") returned from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/jose4j/http/Get$ResponseBodyTooLargeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_1
    move-exception v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 104
    iget v4, p0, Lorg/jose4j/http/Get;->retries:I

    if-gt v1, v4, :cond_2

    .line 108
    invoke-direct {p0, v1}, Lorg/jose4j/http/Get;->getRetryWaitTime(I)J

    move-result-wide v4

    .line 109
    sget-object v6, Lorg/jose4j/http/Get;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x2

    iget v8, p0, Lorg/jose4j/http/Get;->retries:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v3, 0x3

    aput-object v0, v7, v3

    const/4 v3, 0x4

    aput-object v2, v7, v3

    const-string v2, "Waiting {}ms before retrying ({} of {}) HTTP GET of {} after failed attempt: {}"

    invoke-interface {v6, v2, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 106
    :cond_2
    throw v2

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    .line 99
    :goto_2
    throw p1
.end method

.method public setConnectTimeout(I)V
    .locals 0

    .line 204
    iput p1, p0, Lorg/jose4j/http/Get;->connectTimeout:I

    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/jose4j/http/Get;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setHttpProxy(Ljava/net/Proxy;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lorg/jose4j/http/Get;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setInitialRetryWaitTime(J)V
    .locals 0

    .line 262
    iput-wide p1, p0, Lorg/jose4j/http/Get;->initialRetryWaitTime:J

    return-void
.end method

.method public setProgressiveRetryWait(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lorg/jose4j/http/Get;->progressiveRetryWait:Z

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0

    .line 215
    iput p1, p0, Lorg/jose4j/http/Get;->readTimeout:I

    return-void
.end method

.method public setResponseBodySizeLimit(I)V
    .locals 0

    .line 271
    iput p1, p0, Lorg/jose4j/http/Get;->responseBodySizeLimit:I

    return-void
.end method

.method public setRetries(I)V
    .locals 0

    .line 244
    iput p1, p0, Lorg/jose4j/http/Get;->retries:I

    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setTrustedCertificates(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    const-string v0, "PKIX"

    .line 294
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    const-string v1, "jks"

    .line 295
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    .line 296
    invoke-virtual {v1, v2, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const/4 v3, 0x0

    .line 298
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alias"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    move v3, v6

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 303
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    const-string v0, "TLS"

    .line 304
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v2, p1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 306
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/http/Get;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    .line 310
    :goto_1
    new-instance v0, Lorg/jose4j/lang/UncheckedJoseException;

    const-string v1, "Unable to initialize socket factory with custom trusted  certificates."

    invoke-direct {v0, v1, p1}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs setTrustedCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 234
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jose4j/http/Get;->setTrustedCertificates(Ljava/util/Collection;)V

    return-void
.end method
