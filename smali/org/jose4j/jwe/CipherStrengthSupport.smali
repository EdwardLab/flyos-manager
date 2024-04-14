.class public Lorg/jose4j/jwe/CipherStrengthSupport;
.super Ljava/lang/Object;
.source "CipherStrengthSupport.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/jose4j/jwe/CipherStrengthSupport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Ljava/lang/String;I)Z
    .locals 4

    .line 36
    invoke-static {p1}, Lorg/jose4j/lang/ByteUtil;->bitLength(I)I

    move-result p1

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-static {p0}, Ljavax/crypto/Cipher;->getMaxAllowedKeyLength(Ljava/lang/String;)I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 44
    sget-object v2, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    const-string v3, "max allowed key length for {} is {}"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, p0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 49
    sget-object v1, Lorg/jose4j/jwe/CipherStrengthSupport;->log:Lorg/slf4j/Logger;

    const-string v2, "Unknown/unsupported algorithm, {} {}"

    invoke-interface {v1, v2, p0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return v0
.end method
