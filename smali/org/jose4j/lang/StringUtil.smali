.class public Lorg/jose4j/lang/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static final US_ASCII:Ljava/lang/String; = "US-ASCII"

.field public static final UTF_8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getBytesAscii(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "US-ASCII"

    .line 64
    invoke-static {p0, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 80
    :catch_0
    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1

    const-string v0, "UTF-8"

    .line 59
    invoke-static {p0, v0}, Lorg/jose4j/lang/StringUtil;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported character set name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static newString([BLjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    .line 48
    :catch_0
    invoke-static {p1}, Lorg/jose4j/lang/StringUtil;->newISE(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object p0

    throw p0
.end method

.method public static newString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static newStringUsAscii([B)Ljava/lang/String;
    .locals 1

    const-string v0, "US-ASCII"

    .line 37
    invoke-static {p0, v0}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newStringUtf8([B)Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    .line 32
    invoke-static {p0, v0}, Lorg/jose4j/lang/StringUtil;->newString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
