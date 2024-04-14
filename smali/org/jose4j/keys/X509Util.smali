.class public Lorg/jose4j/keys/X509Util;
.super Ljava/lang/Object;
.source "X509Util.java"


# static fields
.field private static final FACTORY_TYPE:Ljava/lang/String; = "X.509"


# instance fields
.field private certFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "X.509"

    .line 43
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 47
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Couldn\'t find X.509 CertificateFactory!?!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "X.509"

    .line 55
    invoke-static {v0, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find X.509 CertificateFactory!?!"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 135
    invoke-static {p1}, Lorg/jose4j/lang/HashUtil;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 139
    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 146
    invoke-static {p0}, Lorg/jose4j/base64url/Base64Url;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 143
    new-instance p1, Lorg/jose4j/lang/UncheckedJoseException;

    const-string v0, "Unable to get certificate thumbprint due to unexpected certificate encoding exception."

    invoke-direct {p1, v0, p0}, Lorg/jose4j/lang/UncheckedJoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getX509Util(Ljava/lang/String;)Lorg/jose4j/keys/X509Util;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    if-nez p0, :cond_0

    .line 67
    new-instance p0, Lorg/jose4j/keys/X509Util;

    invoke-direct {p0}, Lorg/jose4j/keys/X509Util;-><init>()V

    return-object p0

    .line 73
    :cond_0
    :try_start_0
    new-instance v0, Lorg/jose4j/keys/X509Util;

    invoke-direct {v0, p0}, Lorg/jose4j/keys/X509Util;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found when creating X509Util."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static x5t(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    .line 125
    invoke-static {p0, v0}, Lorg/jose4j/keys/X509Util;->base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static x5tS256(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-256"

    .line 130
    invoke-static {p0, v0}, Lorg/jose4j/keys/X509Util;->base64urlThumbprint(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fromBase64Der(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/JoseException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Lorg/jose4j/base64url/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 111
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/jose4j/keys/X509Util;->certFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 115
    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 119
    new-instance v1, Lorg/jose4j/lang/JoseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value to X509Certificate: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/jose4j/lang/JoseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toBase64(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    .line 86
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    .line 87
    invoke-static {p1}, Lorg/jose4j/base64url/Base64;->encode([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected problem getting encoded certificate."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toPem(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .locals 2

    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    .line 100
    invoke-static {p1}, Lorg/jose4j/base64url/SimplePEMEncoder;->encode([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected problem getting encoded certificate."

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
